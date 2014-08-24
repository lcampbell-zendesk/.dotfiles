function fish_prompt
  set last_status $status
  
  set_color $fish_color_host
  printf '⚡ ️ %s@%s ' (whoami) (hostname|cut -d . -f 1)
  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal
  printf '%s 👉  ' (__fish_git_prompt)
end
