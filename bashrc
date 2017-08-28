# encoding
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# vim color
export TERM=xterm-256color

# bash color
export PS1='\[\033[1;32m\]\u\[\033[1;33m\]@\h \[\033[1;35m\][\t] \[\033[0;36m\]\w \[\033[00m\]\n\$ '
#export PS1="\[\e[1;34m\]\u@\h\[\e[m\] \[\e[1;33m\]\w\[\e[m\]\n\[\e[1;32m\]$\[\e[m\] "

# ls color ( LSCOLORS for MacOS/BSD, LS_COLORS for Linux )
export CLICOLOR=1

FILE_TYPE_COLORS="no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32"
COMPRESS_COLORS="*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31"
MEDIA_COLORS="*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35"
export LS_COLORS="$FILE_TYPE_COLORS:$COMPRESS_COLORS:$MEDIA_COLORS:"

DIR=Gx
SYM_LINK=fx
SOCKET=cx
PIPE=dx
EXE=bx
BLOCK_SP=eg
CHAR_SP=ed
EXE_SUID=ab
EXE_GUID=ag
DIR_STICKY=ac
DIR_WO_STICKY=ad
export LSCOLORS="$DIR$SYM_LINK$SOCKET$PIPE$EXE$BLOCK_SP$CHAR_SP$EXE_SUID$EXE_GUID$DIR_STICKY$DIR_WO_STICKY"

# ls
# if [ "$(uname)" == "Darwin" ]; then
#   # Do something under Mac OS X platform
# elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
#   # Do something under GNU/Linux platform
# elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
#   # Do something under 32 bits Windows NT platform
# elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
#   # Do something under 64 bits Windows NT platform
# fi
if [ "$(uname -s)" == "Linux" ]; then
  alias ls='ls --color'
fi
alias l='ls -lh'
alias ll='ls -alh'
alias lr='ls -R'

# cp mv rm
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# ptt
alias ptt='luit -encoding big5 ssh bbs@ptt.cc'
alias ptt2='luit -encoding big5 ssh bbs@ptt2.cc'
