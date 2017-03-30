augroup filetypedetect
  au!
  au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Capfile,config.ru,Guardfile,*.rake,*.cap} setf ruby
  au BufRead,BufNewFile {SConstruct,SConscript} setf python
  au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} setf markdown
  au BufNewFile,BufRead *.json,.compilerc,.babelrc setf javascript
  au BufNewFile,BufRead *.es6 setf javascript
  au BufNewFile,BufRead *.m setf octave
  au BufRead,BufNewFile */nginx/conf/*,nginx*.conf set ft=nginx
  au BufRead,BufNewFile *.tex setf tex
  au BufRead,BufNewFile *.scss setf scss
  au BufNewFile,BufRead *.slim set syntax=slim | setf slim
  au BufNewFile,BufRead ~/.ssh/config.d/*,~/dotfiles/**/ssh/config.d/* setf sshconfig
  au BufNewFile,BufRead /etc/bind/named.conf.* setf named
  au BufNewFile,BufRead */nginx/* setf nginx
  au BufNewFile,BufRead */nginx/*.erb setf eruby | let b:eruby_subtype="nginx"
augroup END

let g:tex_flavor = "latex"
