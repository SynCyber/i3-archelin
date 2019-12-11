# ╭━━╮╭━━━╮╱╱╱╱╭━━━╮╱╱╱╱╱╱╱╭╮╱╱╱╱╱╱╭╮╱╱╱╱╱╱╱
# ╰┫┣╯┃╭━╮┃╱╱╱╱┃╭━╮┃╱╱╱╱╱╱╱┃┃╱╱╱╱╱╱┃┃╱╱╱╱╱╱╱
# ╱┃┃╱╰╯╭╯┃╱╱╱╱┃┃╱┃┃╭━╮╭━━╮┃╰━╮╭━━╮┃┃╱╭╮╭━━╮
# ╱┃┃╱╭╮╰╮┃╭━━╮┃╰━╯┃┃╭╯┃╭━╯┃╭╮┃┃┃━┫┃┃╱┣┫┃╭╮┃
# ╭┫┣╮┃╰━╯┃╰━━╯┃╭━╮┃┃┃╱┃╰━╮┃┃┃┃┃┃━┫┃╰╮┃┃┃┃┃┃
# ╰━━╯╰━━━╯╱╱╱╱╰╯╱╰╯╰╯╱╰━━╯╰╯╰╯╰━━╯╰━╯╰╯╰╯╰╯
# ╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱
# ╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱╱

# GitHub https://github.com/SynCyber/i3-archelin
# Modkey Padrao
set $mod mod4

#oculta barra de titulo
new_window pixel

# i3-gaps
gaps inner 6
# fonte para titulos de janela
font pango: SpaceMono Nerd Font Mono Medium 11

# iniciar o terminal
bindsym $mod+Return exec termite

# Matar Janela focada
bindsym $mod+shift+q kill

# Iniciar Rofi
bindsym $mod+d exec rofi -show drun -columns 3

# Move Entre Janelas
bindsym $mod+j focus left
bindsym $mod+k focus down
bindsym $mod+l focus up
bindsym $mod+semicolon focus right

#Alternativa, vc pode usar as teclas do cursor:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

#Mover Janela focada
bindsym $mod+Shift+j move left
bindsym $mod+Shift+k move down
bindsym $mod+Shift+l move up
bindsym $mod+Shift+semicolon move right

#Como Alternativa, Vc pode usar as teclas do cursor:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

#Dividr na orientation horizontal
bindsym $mod+h split h

#Dividr na orientation vertical
bindsym $mod+v split v

#Entre no modo de tela cheia para o conteiner focado
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

#Alternar lado a lado / flutuante
bindsym $mod+Shift+space floating toggle

#Alternar o foco entre janelas lado a lado / flutuantes
bindsym $mod+space focus mode_toggle

#Focalize o conteiner pai
bindsym $mod+a focus parent

#nomeie os espacos de trabalho
set $workspace1 "1"
set $workspace2 "2"
set $workspace3 "3"
set $workspace4 "4"
set $workspace5 "5"
set $workspace6 "6"
set $workspace7 "7"
set $workspace8 "8"
set $workspace9 "9"
set $workspace10 "10"

#Alternar para o espaco de trabalho
bindsym $mod+1 workspace $workspace1
bindsym $mod+2 workspace $workspace2
bindsym $mod+3 workspace $workspace3
bindsym $mod+4 workspace $workspace4
bindsym $mod+5 workspace $workspace5
bindsym $mod+6 workspace $workspace6
bindsym $mod+7 workspace $workspace7
bindsym $mod+8 workspace $workspace8
bindsym $mod+9 workspace $workspace9
bindsym $mod+0 workspace $workspace0

#Mover workspace para outro workspace.
bindsym $mod+Shift+1 move container to workspace $workspace1
bindsym $mod+Shift+2 move container to workspace $workspace2
bindsym $mod+Shift+3 move container to workspace $workspace3
bindsym $mod+Shift+4 move container to workspace $workspace4
bindsym $mod+Shift+5 move container to workspace $workspace5
bindsym $mod+Shift+6 move container to workspace $workspace6
bindsym $mod+Shift+7 move container to workspace $workspace7
bindsym $mod+Shift+8 move container to workspace $workspace8
bindsym $mod+Shift+9 move container to workspace $workspace9
bindsym $mod+Shift+0 move container to workspace $workspace0

# Sempre abre alguns programas no espaco de trabalho especificado
assign [class="firefox"] $workspace1
assign [class="emacs"] $workspace2
assign [class="VirtualBox"] workspace5
assign [class="spotify"] $workspace8
assign [class="cmus"] $workspace8

#Ativar flutuacao para algumas janelas
for_window [class="^Pavucontrol$"] floating enable
for_window [class="^Arandr$"] floating enable
for_window [class="^Steam$" title="^Friends List$"] floating enable
for_window [class="^Steam - News"] floating enable
for_window [class=".* - Chat"] floating enable
for_window [class="^Settins$"] floating enable
for_window [class=".* - event started"] floating enable
for_window [class=".* CD key"] floating enable
for_window [class="^Steam - Self Updater$"] floating enable
for_window [class="Screenshot Uploader$"] floating enable
for_window [class="^Steam Guard - Computer Authorization Required$"] floating enable
for_window [class="^Steam Keyboard$"] floating enable


# Recarregue o arquivo de configuracao
bindsym $mod+Shift+c reload

# Reinicie o i3 (preserva seu layout / sessao, pode ser usado para atualizar o i3 )
bindsym $mod+Shift+r restart

#Tela de Bloqueio Personalizada do Betterlockscreen, se vc n tiver baixe ela pelo github
bindsym $mod+Shift+x exec betterlockscreen -l dim -t "Bebe do Lucas"

#Saia do i3 efetua o logout dasua sessao X
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'se vc quer encerrar a section do i3, aperte no yes, se nao exit.? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

# Rendimensionar janela vc tambem pode usar o mouse para fazer isso
mode "resize"
{
  # Rendimensione com as teclas de seta
  bindsym Left resize shrink width 2 px or 2 ppt
  bindsym Down resize grow height 2 px or 2 ppt
  bindsym Up resize shrink height 2 px or 2 ppt
  bindsym Right resize grow width 2 px or 2 ppt

  # Voltar ao norma: entrar ou escapar
  bindsym Return mode "default"
  bindsym Escape mode "default"
}
bindsym $mod+r mode "resize"

# Definindo cores
set $bg #1a181c
set $lg #1a181c
set $fg #1a181c
set $cyan #1a181c
set $green #1a181c
set $magenta #1a181c
set $comment #1a181c
set $purple #1a181c

# Defina algumas boas cores no indicador de texto de fundo da borda
client.focused $comment $comment $fg $comment
client.unfocused $bg $bg $cyan $cyan
client.focused_inactive $bg $bg $green $green
client.urgent $bg $bg $magenta $magenta
client.placeholder $bg $bg $cyan $cyan

# Inicie o i3blocks para exibir uma barra da Desktop


# Inicializar Alguns Programas
exec_always --no-startup-id ~/.scripts/monitors.sh # Automaticamente nos monitores
#exec_always --no-startup-id ~/.scripts/wallpapers.sh # Definir um papel de parede aleatorio
exec --no-startup-id compton --config ~/.config/compton/compton.conf # Compositor de transparencia do Terminal
exec --no-startup-id xfce4-power-manager # Para Monitorar a bateria
exec --no-startup-id notify-send "Welcome back, Arch!" -i ~/home/bebe1/walp/428593-Kycb_3840x2160.jpg #saudacoes na inicializacao do sistema

# coded by: ۪I۫۰۪3۫۰۪-۫۰۪A۫۰۪r۫۰۪c۫۰۪h۫۰۪e۫۰۪l۫۰۪i۫۰۪n۫۰
