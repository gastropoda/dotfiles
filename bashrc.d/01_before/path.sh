extend_dir_list PATH ~/.rbenv/bin
have_exe rbenv && eval "$(rbenv init -)"

extend_dir_list PATH ~/bin
# cabal/haskell (for pandoc)
extend_dir_list PATH ~/.cabal/bin
# python modules installed with ./setup.py install --user
extend_dir_list PATH ~/.local/bin

# make sysadmins hate me
# this is useful for projects with local binstubs
# TODO move to a dev tag?
PATH=./bin:$PATH

