
# Colorize the Terminalexport CLICOLOR=1;
CLICOLOR=1;

alias mobo_vm="docker run -t -i -v /Users/mmorse/Code/mercurial/mobo-temp/src/ebi/:/mobo-temp/src/ebi/ mobo /bin/bash"

#module
export PATH=$HOME/.local/environment-modules/Modules/3.2.10/bin:$PATH
export LD_LIBRARY_PATH=$HOME/.local/Tcl/lib:$LD_LIBRARY_PATH
source $HOME/.local/environment-modules/Modules/3.2.10/init/bash

#autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Open OSX apps from commandline by name
function foomagick() {
    rm -f ~/.foomagick.tmp
    ls /Applications/ | grep "\.app" | grep -v iWork | while read APP; do
        # clean it up                                                           
        a=`echo $APP | sed s/\ //g`;
        a=`echo $a | sed s/\'//g`;
        echo alias ${a%.*}="'open -a \"${APP%.*}\"'" >> ~/.foomagick.tmp
    done
    source ~/.foomagick.tmp
    rm ~/.foomagick.tmp  
}
foomagick



