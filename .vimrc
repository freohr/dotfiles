set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

let g:chromatica#global_args=['-isystem/home/guest/workspaces/tools/lib/llvm-8.0.0/include']
let g:chromatica#libclang_path='/home/guest/workspaces/tools/lib/llvm-8.0.0/lib'
let g:chromatica#enable_at_startup=0
