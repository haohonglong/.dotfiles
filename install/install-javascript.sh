#!/bin/bash

echo -e "${red}Delete the javascript config..."
rm $HOME/.tern-project &>/dev/null
rm $HOME/.eslintrc.json &>/dev/null
echo -e "${green}...done!\n"


echo -e "${blue}Install javascript linters..."
# Works better than eslint for React
if [ ! -d ~/.node_modules/lib/node_modules/babel-eslint ];
then
    npm i -g babel-eslint
fi

if [ ! -d ~/.node_modules/lib/node_modules/eslint-plugin-html ];
then
    npm i -g eslint-plugin-html
fi

if [ ! -f ~/.node_modules/bin/eslint ];
then
   npm i -g eslint
fi

ln -s $DOTFILES/javascript/.tern-project $HOME
ln -s $DOTFILES/javascript/.eslintrc.json $HOME
echo -e "${green}...done!\n"

echo -e "${blue}Install typescript tools..."
if [ ! -d ~/.node_modules/lib/node_modules/neovim ];
then
    npm i -g neovim
fi

if [ ! -d ~/.node_modules/lib/node_modules/typescript ];
then
    npm i -g typescript
fi
echo -e "${green}...done!\n"
