.PHONY: bash gitbashprompt git vim mutt tmux

all: bash vim git mutt tmux

bash: gitbashprompt
	mv -f ~/.bashrc ~/.bashrc.bak || :
	ln -sf $(PWD)/.bashrc ~/

gitbashprompt:
	ln -sf $(PWD)/gitbashprompt/gitbashprompt ~/

git:
	mv -f ~/.gitconfig ~/.gitconfig.bak || :
	ln -sf $(PWD)/.gitconfig ~/

vim:
	mv -f ~/.vimrc ~/.vimrc.bak || :
	ln -sf $(PWD)/.vimrc ~/

mutt:
	mv -f ~/.muttrc ~/.muttrc.bak || :
	ln -sf $(PWD)/.muttrc ~/

tmux:
	mv -f ~/.tmux.conf ~/.tmux.conf.bak || :
	ln -sf $(PWD)/.tmux.conf ~/
