MAKEFILE_DIR:=$(dir $(abspath $(lastword $(MAKEFILE_LIST))))

ln:
	ln -sf ${MAKEFILE_DIR}.bash_aliases ~/.bash_aliases
	find . -type d -not -path "./.git/*" -not -path "." | xargs -I{} ln -sf ${MAKEFILE_DIR}{} ~/{}
