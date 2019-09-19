#!/bin/bash

rm $HOME/.vimrc && cp -a $(dirname $0)/.vimrc_bak $HOME/.vimrc
