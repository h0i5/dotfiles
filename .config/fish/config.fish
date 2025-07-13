if status is-interactive

    function fish_greeting
    end
    # zoxide
    zoxide init fish | source

    # Aliases
    alias gol "/opt/goland/bin/goland.sh"
    alias n "nvim ."
    alias k "kubectl"
    alias kgp "k get pods"
    alias kgd "k get deployments"
    alias kgs "k get services"
    alias kgn "k get nodes"
    alias kgr "k get replicasets"
    alias kd "k delete"
    alias kdp "k delete pod"
    alias kds "k delete service"
    alias kdd "k delete deployment"
    alias kdn "k delete namespace"
    alias kcf "k create -f"
    alias kaf "k apply -f"
    alias kga "k get all"
    alias cls "clear"
    alias dda "docker rm -vf (docker ps -aq)"
    # alias neofetch "neofetch --ascii ~/ascii/windows.txt --ascii_colors 3 5 1"
    alias fastfetch "fastfetch --logo ~/ascii/windows.txt"
    # alias nvim "nohup alacritty -e 'nvim'"

    # tmux
    alias ta "tmux attach"
    alias tl "tmux ls"

    # battery
    alias battery "cat /sys/class/power_supply/BAT0/capacity"

    # # bun completions
    # if test -s "/home/proxima/.bun/_bun"
    #     source /home/proxima/.bun/_bun
    # end
end
