#!/bin/bash

cp -a $HOME/.vimrc $(dirname $0)/.vimrc_bak && rm $HOME/.vimrc && ln -s $(realpath $(dirname $0)/vimrc) $HOME/.vimrc
