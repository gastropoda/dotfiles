1. [Install rcm][1]
2. If necessary remove old symlinks, e.g.: `find . -maxdepth 1 -lname "*homesick*" | xargs rm`
3. `git clone git@github.com:gastropoda/dotfiles.git`
4. `RCRC=~/dotfiles/rcrc rcup -v`

[1]: https://github.com/thoughtbot/rcm#installation
