dotfiles
========

simple dotfiles that I can throw into fresh machines

for i in dotfiles/.* ; do if [ -f $i ]; then if [ -e `basename $i` ] ; then rm `basename $i` ; fi; ln -s $i `basename $i` ; fi ; done

