# Configuración básica de historial
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory

# Activar los plugins de Arch (Autosuggestions y Syntax Highlighting)
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Autocompletado avanzado
autoload -Uz compinit
compinit

# Iniciar Starship (El prompt nave espacial)
eval "$(starship init zsh)"

# Iniciar Fastfetch al abrir la terminal
fastfetch

# Alias
alias ip='ip -c'

#Lsd
alias ls='lsd'
alias ll='lsd -la'

#Lazy git
alias lg='lazygit'

#ranger
alias r='rr'


#Colores lsd
export LS_COLORS="di=31:fi=31:ln=31:pi=31:so=31:bd=31:cd=31:or=31:mi=31:ex=31"


# Función para que Ranger cambie el directorio al salir
function rr {
    temp_file="$(mktemp -t "ranger_cd.XXXXXXXXXX")"
    ranger --choosedir="$temp_file" -- "${@:-$PWD}"
    if chosen_dir="$(cat -- "$temp_file")" && [ -n "$chosen_dir" ] && [ "$chosen_dir" != "$PWD" ]; then
        cd -- "$chosen_dir"
    fi
    rm -f -- "$temp_file"
}



