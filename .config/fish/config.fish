set --universal fish_user_paths $fish_user_paths /usr/local/bin/

set fish_greeting

set __fish_git_prompt_color_branch yellow

function fish_prompt
  set last_status $status
  
  set_color $fish_color_host
  printf '⚡ ️ %s@%s ' (whoami) (hostname|cut -d . -f 1)
  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal
  printf '%s 👉  ' (__fish_git_prompt)
end
