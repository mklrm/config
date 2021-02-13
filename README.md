# _vimrc

My Vim install on Windows and WSL is pretty good to go as far as editing powershell scripts goes by doing the following:

    VIM files and paths on Linux and Windows:
                   ~ == ~
            ~\.vimrc == _vimrc
             ~\.vim\ == ~\vimfiles\
    ~\.vim\autoload\ == ~\vimfiles\autoload\

Copy vimrc from this repo to where it belongs

Install vim-plug from https://github.com/junegunn/vim-plug by running:

    Linux:
        curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    Windows:
        iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
            ni $HOME/vimfiles/autoload/plug.vim -Force

Install nodejs:

    Linux:
        curl -sL install-node.now.sh/lts | bash

        NOTE that it’s probably preferrable to use package management instead

    Windows:
        choco install nodejs

 Run :PlugUpgrade and :PlugInstall in VIM

# settings.json

This is just my Windows Terminal config
