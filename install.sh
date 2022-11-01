#!/bin/bash 

function get_os_type()
{
    platform=$(uname)
    if [ ${platform} == "Darwin" ]; then
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
function install_fonts_on_mac()
{
    rm -rf ~/Library/Fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf
    cp ./fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf ~/Library/Fonts
}

function install_fzf()
{
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
}

function install_on_linux_software()
{
    sudo apt update
    sudo apt install -y zsh git gawk curl 
}

function install_on_mac_software()
{

    brew install zsh git gawk curl
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

    if [ -e "${file}" ]; then
        echo "Would you like to back up the ${argv} file (y/No)?"
        read -r choice
        if [ ${choice} == "y" ]; then
            sudo cp -r  "${file}" "${copy_file}"
        fi
    fi
}

function copy_files()
{
     ln -s $(pwd)/dotfiles/zshrc ~/.zshrc
     ln -s $(pwd)/dotfiles/p10k.zsh ~/.p10k.zsh
     ln -s $(pwd)/dotfiles/zshrc_custom ~/.zshrc_custom.zsh
}

function main()
{
    type=`get_os_type`
    echo "os type:"$type 
    
    if [ ${type} == "Darwin" ]; then
        install_on_mac_software
        install_fonts_on_mac
    else
        install_on_linux_software
        install_fonts_on_linux
    fi

    # install zplug
    read -p  "Do you want to install zplug? (y/N)" choice

    if [ ${choice} == "y" ] ; then
        echo "installing ..."
        install_zplug
    else
        echo "skip this step"
    fi

    backup_file ".zshrc"
    backup_file ".p10k.zsh"
    backup_file ".zshrc_custom.zsh"

    copy_files
    
    install_fzf

    chsh -s /bin/zsh

    echo "All Done!"

    zsh
}

main


