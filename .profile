#!/bin/bash --posix

# -*- Coding: UTF-8 -*-
# -*- System: Linux -*-
# -*- Usage:   *.*  -*-

# Owner: Jacob B. Sanders
# Source: gitlab.cloud-technology.io
# License: BSD 3-Clause License

#
# Copyright 2021, Jacob B. Sanders
#
# Redistribution and use in source and binary forms, with or without modification, are permitted
# provided that the following conditions are met:
#
# 1.  Redistributions of source code must retain the above copyright notice, this list of
#     conditions and the following disclaimer.
#
# 2.   Redistributions in binary form must reproduce the above copyright notice, this list of
#      conditions and the following disclaimer in the documentation and/or other materials
#      provided with the distribution.
#
# 3.  Neither the name of the copyright holder nor the names of its contributors may be used
#     to endorse or promote products derived from this software without specific prior written
#     permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS
# OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY
# AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER
# OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
# THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
# OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
# OF SUCH DAMAGE.
#

#
# =================================================================================================
# Posix-Compatible Linux Bash Profile
# =================================================================================================
#

export BASH_SILENCE_DEPRECATION_WARNING=1

shopt -s checkwinsize

shopt -s nocaseglob

# -------------------------------------------------------------------------------------------------
# --> Globals
# -------------------------------------------------------------------------------------------------

export CLICOLOR=1
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LS_DEFAULT_COLOR="exfxcxdxbxegedabagacad"

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"

ulimit -S -c 0      	# Don't Write Core-Dumps

set -o pipefail 	# Expose Hidden Failures

shopt -s dotglob 	# Wildcards Match (.) Files
shopt -s nocaseglob 	# Case Insensitive Glob Matching

shopt -s cdspell

shopt -s sourcepath

shopt -s checkhash
shopt -s checkwinsize

shopt -s cmdhist

shopt -s histappend	# ...
shopt -s histreedit	# ...
shopt -s histverify	# Prevent History Execution Automatically

HDD() { printf "%s\n" "$(sudo df -h)"; }

#
# -------------------------------------------------------------------------------------------------
# --> Terminal Formatting
# -------------------------------------------------------------------------------------------------
# Hide Terminal Mouse Cursor
# >>> tput civis
#
# Normalize Mouse Cursor
# >>> tput cnorm && tput cvvis
#

export EOM="\\33[0m"

export R="\\33[91m" # --> Red
export G="\\33[32m" # --> Green
export B="\\33[34m" # --> Blue

export Y="\\33[33m" # --> Yellow
export Z="\\33[90m" # --> Grey
export X="\\33[0m"  # --> Reset
export D="\\33[2m"  # --> Dim
export L="\\33[4m"  # --> Link
export H="\\33[1m"  # --> Bold (Highlight)
export I="\\33[3m"  # --> Italicize
export S="\\33[7m"  # --> Select
export U="\\033[4m" # --> Underline

export CEND="\\33[0m"
export CRESET="\\33[0m"
export CNORMAL="\\33[0m"
export CBOLD="\\33[1m"
export CITALIC="\\33[3m"
export CURL="\\33[4m"
export CBLINK="\\33[5m"
export CUNDERLINE="\\033[4m"
export CBLINK2="\\33[6m"
export CSELECTED="\\33[7m"
export CBLACK="\\33[30m"
export CRED="\\33[31m"
export CGREEN="\\33[32m"
export CYELLOW="\\33[33m"
export CBLUE="\\33[34m"
export CVIOLET="\\33[35m"
export CBEIGE="\\33[36m"
export CWHITE="\\33[37m"
export CBLACKBG="\\33[40m"
export CREDBG="\\33[41m"
export CGREENBG="\\33[42m"
export CYELLOWBG="\\33[43m"
export CBLUEBG="\\33[44m"
export CVIOLETBG="\\33[45m"
export CBEIGEBG="\\33[46m"
export CWHITEBG="\\33[47m"
export CGREY="\\33[90m"
export CRED2="\\33[91m"
export CGREEN2="\\33[92m"
export CYELLOW2="\\33[93m"
export CBLUE2="\\33[94m"
export CVIOLET2="\\33[95m"
export CBEIGE2="\\33[96m"
export CWHITE2="\\33[97m"
export CGREYBG="\\33[100m"
export CREDBG2="\\33[101m"
export CGREENBG2="\\33[102m"
export CYELLOWBG2="\\33[103m"
export CBLUEBG2="\\33[104m"
export CVIOLETBG2="\\33[105m"
export CBEIGEBG2="\\33[106m"
export CWHITEBG2="\\33[107m"
export CLIGHTGREY="\\33[37m"
export CDARKGREY="\\33[90m"
export CUNDERLINED="\\33[4m"
export CDIM="\\33[2m"

export ARROWS=("﬌" "↳" "➜" "➞" "⟶" "➜")

export KEYBOARD=" "
export PROMPT=""
export CODEBRACKETS=""
export HTML=""
export DROPBOX=""
export APPLE=""
export LINUX=""
export STEAM=""
export SQL=""
export GIT1=""
export WIFI=" "
export GITFOX=""
export GITFOXL=" "
export SHIELD=""
export CLOUD=""
export SERROR=""
export MERGE=""
export FORK=""
export XMARK=""
export THUMBPRINT=""
export GOOGLEDRIVE=""
export INFO=""
export PY2=""
export PY1=""
export LINK=""
export SERVERS="力"
export GAME=""
export UBUNTUFITTED2=""
export DOCKER=""
export GITLAB=""
export PYTHONMONO=""
export NULLSYMBOL="ø"
export XSYMBOL=""
export XSYMBOL2=""
export BULLET="•"
export DELTA="∆"
export POWERSYMBOL="⏻"
export COFFEE=""
export PILL=""
export FINGERPRINT=""
export DUMBBELL=""
export NASYMBOL=""
export DAY=""
export EARLYMORNING=""
export EARLYNIGHT=""
export NIGHT=""
export RAIN=""
export GITHUB=""
export TASKLIST=""
export IPHONE=""
export MOON=""
export SUN=""
export LEFTPOINTINGTRIANGLE=""
export RIGHTPOINTINGTRIANGLE=""
export BATTERY=("" "" "" "" "" "" "" "" "" "")

## -------------------------------------------------------------------------------------------------
# --> F-String STDOUT Functions
# -------------------------------------------------------------------------------------------------

OOP() {
    grep "${1}" "${2}" |
        cut -d'=' -f2 |
            sed -e 's/^"//' -e 's/"$//'
}

Tabular() { printf "%s" "    "; }

Dim() { printf "%s" "${@}"; }
Bold() { printf "%s" "${@}"; }
Underline() { printf "%s" "${@}"; }

Error() { printf "%s\n" "${@}"; }
Auxiliary() { printf "%s\n" "${@}"; }
Success() { printf "%s\n" "${@}"; }
Warning() { printf "%s\n" "${@}"; }

Clear() { printf "%s" "${@}"; }

Print() { printf "%s\n" "${@}"; }

Tab() { printf "\\t%s" "${@}"; }
Line() { printf "\\n%s" "${@}"; }
Focus() { printf "%s" "${@}"; }
Message() { printf "\n$(Bullet)%s" "${1}$(printf "\e[A\e[K\n")"; }
Title() { printf "$(Clear)%s\n" "${@}"; }

# ========================================================================
# --> Function & Property Declarations
# ========================================================================

CPU() {
    printf "${CBLUE2}${CBOLD}%s${CEND}" "[" &&
        printf "%i.$(printf "%i%s" "$((${RANDOM} % 10))" "%%")" \
            "$(($(printf "%.0f\n" $(printf "%f" $(printf "%s" "$(ps -A -o %cpu | awk \
        '{s+=$1} END {print s ""}')" | tail -1))) / $(($(sysctl -n hw.ncpu) * 1))))" \
            && printf "${CBLUE2}${CBOLD}%s${CEND}" "]" && printf "${CRESET}%s${CEND}"
}

RAM() {
    printf "${CRED}${CBOLD}[${CEND}$(
        if [[ $(uname) == "Darwin" ]]; then
            installed_memory=$(sysctl -n hw.memsize)
            installed_memory_in_gb=$(bc <<<"scale=2; $installed_memory/1024/1024/1000")
            page_types=("wired down" "active" "inactive")
            all_consumed=0
            for page_type in "${page_types[@]}"; do
                consumed=$(vm_stat | grep "Pages ${page_type}:" | awk -F: '{print $2}' | tr -d '[[:space:]]' | grep -E "[[:digit:]]*" -ho)
                consumed_gb=$(bc <<<"scale=2; ($consumed*4096)/1024/1024/1000")
                all_consumed=$(bc <<<"scale=2; $all_consumed+$consumed_gb")
            done
            what_is_remaining=$(bc <<<"scale=2; $installed_memory_in_gb-$all_consumed")
            result=$(printf "%.2fG" "${what_is_remaining}")
            if [[ $DFF_MEMORY_PROMPT_COLOR ]]; then
                result="${DFF_MEMORY_PROMPT_COLOR}${result}${COLOR_OFF}"
            fi
            printf "%s/" "${result}"
        fi
    )${CRED}${CBOLD}${CEND}$(
        printf "%sG" $(
            bc <<<"scale=2; $(sysctl -n hw.memsize)/1024/1024/1000"
        )
    )${CRED}${CBOLD}]${CEND}" && printf "${CRESET}%s${CEND}" ""
}

Disk() {
    printf "${CGREEN}${CBOLD}[${CEND}$(
        printf "%s/" "$(df -H | awk '/\/dev\/disk1s1/ { printf $4 }')"
    )${CGREEN}${CBOLD}${CEND}$(
        printf "$(df -H | awk '/\/dev\/disk1s1/ {printf $2 }')"
    )${CGREEN}${CBOLD}]${CEND}"
}

Header() {
    printf "${CYELLOW2}%s${CEND}" "("
    printf "%s" "Byte"
    printf "${CYELLOW2}%s${CEND}" ")"
}

Statistics() { printf "%s" "$(Header) $(CPU)$(RAM)$(Disk)"; }

Environment () { [[ -d ".venv" ]] && source .venv/bin/activate; }

Code() {
    local declare LOCK

    (( LOCK = 0 ))

    local declare PYTHON

    (( PYTHON = $( find . -name "*.py" -type f -maxdepth 1 | wc -l ) ))

    local declare VENV

    ( git rev-parse &>/dev/null ); (( GIT_RETURN = ${?} ))
    [[ "${GIT_RETURN}" == "0" ]] && \
        [[ "${LOCK}" != "0" ]] && ( printf "${B}%s${X}" "${MERGE}" && (( LOCK = 1 )) )
        [[ "${LOCK}" == "0" ]] && ( printf "${B}%s${X}" " ${MERGE} " && (( LOCK = 1 )) )

    [[ "${LOCK}" == "0" ]] && printf "%s" ""
    [[ "${LOCK}" == "1" ]] && printf "%s" " • "
}

# get current branch in git repo
function parse_git_branch() {
    BRANCH="$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')"
    if [ ! "${BRANCH}" == "" ]
        then
            STAT="$(parse_git_dirty)"
            printf "[${BRANCH}${STAT}]"
        else
            printf ""
        fi
}

# get current status of git repo
function parse_git_dirty {
	status=`git status 2>&1 | tee`
	dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
	untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
	ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
	newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
	renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
	deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
	bits=''
	if [ "${renamed}" == "0" ]; then
		bits=">${bits}"
	fi
	if [ "${ahead}" == "0" ]; then
		bits="*${bits}"
	fi
	if [ "${newfile}" == "0" ]; then
		bits="+${bits}"
	fi
	if [ "${untracked}" == "0" ]; then
		bits="?${bits}"
	fi
	if [ "${deleted}" == "0" ]; then
		bits="x${bits}"
	fi
	if [ "${dirty}" == "0" ]; then
		bits="!${bits}"
	fi
	if [ ! "${bits}" == "" ]; then
		echo " ${bits}"
	else
		echo ""
	fi
}


export PS1=$(cat << EOF -
\$(Statistics)
$(
	printf "${CBOLD}${CVIOLET}%s${CEND}" "   ${ARROWS[0]} "; \
            printf "${CGREY}[%s]${CEND} " "\@"; \
	printf "${CYELLOW}[%s]${CEND}" "\w";
)
\$(printf "VCS Status - ${CGREEN}" && parse_git_branch && printf "${CEND}")
$(printf "%s${CBOLD}${CGREEN}" ": ")
EOF
)

# ========================================================================
# --> Aliasing
# ========================================================================

alias l="ls -a -G -F -cC"

alias path='echo -e ${PATH//:/\\n}'

alias monitor="top -F -R -o cpu"

gitupdate () {
    git add --all
    git commit --message "[Development] - ${1}"
    git push
}; export gitupdate && alias git-update=gitupdate

alias ll="ls -lah"

alias code='cd /opt/Development/Repositories'

source "$HOME/.cargo/env"

case ":${PATH}:" in
    *:"$HOME/.cargo/bin":*)
        ;;
    *)
        ;;
esac
case ":${PATH}:" in
    *:"$HOME/.cargo/bin":*)
        ;;
    *)
                ;;
esac

export PATH="${PATH}:/opt/etcd/bin"

alias git-update=gitupdate

export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"

export PATH="${PATH}:/usr/local/bin/node"

export PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"

export NVM_DIR="${HOME}/.nvm"

alias reload="killall Dock"

alias start-mongo='mongod --port 27017 --bind_ip_all --verbose --dbpath ~/Mongo'

alias rsync="rsync -az --info=progress2"

alias copy-ssh-key="tr -d '\n' < ${1} | pbcopy"

export PATH="${PATH}\:~/.local/share/terraform"

export NVM_DIR="$HOME/.nvm"

[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"
