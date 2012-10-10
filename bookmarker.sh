bookmarkDir=`dirname $BASH_SOURCE`

function addbm {
  home=`echo ~`
  echo "alias $2='cd `echo $1 | sed "s|$home|~|"`'" >> ${bookmarkDir}/bookmarks.sh
  source ${bookmarkDir}/bookmarks.sh
}

function listbm {
  cat ${bookmarkDir}/bookmarks.sh | sed "s/alias \([^=]*\)='cd \([^']*\)'/\1 -> \2/" | sort
}

alias addbm='addbm `pwd`'
alias lsbm='listbm'

source ${bookmarkDir}/bookmarks.sh
