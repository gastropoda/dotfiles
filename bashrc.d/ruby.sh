export RI="--format ansi"
export CUCUMBER_COLORS="comment=magenta,bold:tag=magenta"
export RUBYOPT=rubygems
alias b="bundle exec"
extend_dir_list PATH ~/.rbenv/bin
have_exe rbenv && eval "$(rbenv init -)"
