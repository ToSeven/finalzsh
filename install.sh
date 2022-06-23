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

function install_on_linux_software()
{

    curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
    sudo apt update
    sudo apt install -y zsh lua5.1 git gawk curl gh

    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
}

function install_on_mac_software()
{

    brew install zsh lua5.1 git gawk curl gh


    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
}

function install_zplug()
{
     git clone https://github.com/zplug/zplug ~/.zplug
}

function backup_file()
{
    argv=$1
    user=$(whoami)
    file="/home/${user}/${argv}"
    copy_file="/home/${user}/backup_${argv}"
    if [ ! -f "$file" ]; then
        return 
    else
        echo "Would you like to back up the ${argv} file (y/No)?"
        read -r choice
        if [ ${choice} == "y" ]; then
            sudo cp -r  "${file}" "${copy_file}"
        else
            return
        fi
    fi
}

function link_files()
{
     ln -sf $(pwd)/dotfiles/.zshrc ~/.zshrc
     ln -sf $(pwd)/dotfiles/.gitconfig ~/.gitconfig
     ln -sf $(pwd)/dotfiles/.p10k.zsh ~/.p10k.zsh
}

function main()
{
    type=`get_os_type`
    echo "os type:"$type 
    
    if [ ${type} == "Darwin" ]; then
        install_on_mac_software
    else
        install_on_linux_software
    fi

    # install zplug
    echo "Do you want to install zplug? (y/N)"
    read -r choice

    if [ ${choice} == "y" ] ; then
        echo "installing ..."
        install_zplug
    else
        echo "skip this step"
    fi

    backup_file ".zshrc"
    backup_file ".gitconfig"
    backup_file ".p10k.zsh"

    link_files
    
    zsh
    source ~/.zshrc

    echo "All Done!"

}

main


