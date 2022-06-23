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

    sudo apt update
    sudo apt install -y zsh lua git gawk

    sudo chsh -s /bin/zsh

    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
}

function install_on_mac_software()
{

    brew install zsh lua git gawk

    sudo chsh -s /bin/zsh

    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
}

function install_zplug()
{
    export ZPLUG_HOME=~/.zplug
    git clone https://github.com/zplug/zplug $ZPLUG_HOME

}

function change_config_file()
{
    
    cat ./config.zshrc >> ~/.zshrc
    source ~/.zshrc
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

    echo "Do you want to install zplug? (y/N)"
    read choice

    if [ choice == "y" ] ; then
        echo "installing ..."
        install_zplug
    else
        echo "skip this step"
    fi

    echo "Do you want to change the .zshrc file? (y/N)"
    read choice

    if [ choice == "y" ] ; then
        echo "changing ..."
        edit_config_file
    else
        echo "skip this step"
    fi

    echo "All Done!"

}

main


