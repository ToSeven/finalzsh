#!/bin/bash 

function get_os_type()
{
    platform=$(uname)
    if [ "${platform}" == "Darwin" ]; then
        echo "Darwin"
    elif grep -Eq "Ubuntu" /etc/*-release; then
        echo "Ubuntu"
    elif grep -Eq "Parrot" /etc/*-release; then
        echo "Parrot"
    else
        echo "Unknown"
    fi

}

# 安装linux平台字体
function install_fonts_on_linux()
{
    mkdir -p ~/.local/share/fonts
    rm -rf ~/.local/share/fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf
    cp ./fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf ~/.local/share/fonts

    fc-cache -vf ~/.local/share/fonts
}

# 安装mac平台字体
function install_fonts_on_mac(){
    rm -rf ~/Library/Fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf
    cp ./fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf ~/Library/Fonts
}

function install_fzf()
{
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install --bin
}

function install_on_linux_software()
{
    sudo apt update
    sudo apt install -y zsh git gawk curl 
    install_fzf
}

function install_on_mac_software()
{
    brew install zsh git gawk curl 
    install_fzf
}

function install_zplug()
{
     git clone https://github.com/zplug/zplug ~/.zplug
}

function backup_file()
{
    argv=$1
    file="${HOME}/${argv}"
    copy_file="${HOME}/backup_${argv:1}"

    #if files exist, then backup those files
    if [ -e "${file}" ]; then
        echo "Would you like to back up the ${argv} file (y/N)?"
        read -r choice
        if [ "${choice}" == "y" ]; then
            sudo cp -f  "${file}" "${copy_file}"
        fi
    fi
}

function copy_files()
{
     cp -f "$(pwd)/dotfiles/zshrc" "$HOME/.zshrc"
     cp -f "$(pwd)/dotfiles/p10k.zsh" "$HOME/.p10k.zsh"

     if [ ! -e "$HOME/.custom_zshrc.zsh" ]; then
     	cp -f "$(pwd)/dotfiles/custom_zshrc.zsh" "$HOME/.custom_zshrc.zsh"
     fi
}

function main()
{
    type=$(get_os_type)
    echo "os type: $type"

    
    if [ "${type}" == "Darwin" ]; then
        install_on_mac_software
        install_fonts_on_mac
    else
        install_on_linux_software
        install_fonts_on_linux
    fi

    # install zplug

    echo "installing zplug ..."
    install_zplug

    # backup some files
    backup_file ".zshrc"
    backup_file ".p10k.zsh"
    backup_file ".custom_custom.zsh"
    
    copy_files
    
    sudo chsh -s /bin/zsh
    
    zsh 

    echo "All Done!"

}

main 
