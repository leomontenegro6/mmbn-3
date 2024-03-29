; Script de inserção de gráficos na rom, na versão branca
;
; Escrito por Solid One - Outubro de 2023
.gba

.open "Mega Man Battle Network 3 - Versao Branca (BR).gba", 0x08000000

; Gráficos descomprimidos, em seus respectivos offsets.
; Fonte dos textos acentuada (sem VWF, usada em alguns menus)
.org 0x08679A5C
.incbin "Graficos/Editados/Fonte textos.gba"

; Nome "Licenciado pela Nintendo", antes da tela-título.
.org 0x087FA2C8
.incbin "Graficos/Editados/Licenciado pela Nintendo.gba"

; Menus, ao apertar Start.
.org 0x087C8C24
.incbin "Graficos/Editados/Menu Pet (td).gba"
.org 0x087C9DA4
.incbin "Graficos/Editados/Menu Pet (tm).gba"
.org 0x087CB3C4
.incbin "Graficos/Editados/HP Zenny BugFrag.gba"

; Gráficos comprimidos, inseridos no final da rom.
; Catalogando ponteiros dos gráficos.
.org 0x0802262C
.dw logo_tela_titulo
.org 0x08022630
.dw nomes_tela_titulo
.org 0x0802515c
.dw sala_aula_cleaners1
.org 0x08025168
.dw sala_aula_cleaners1
.org 0x080250f0
.dw cidade_acdc_higsbys

.org 0x080251c8 + 0x30
.dw yoka_barracas_td
.skip 4
.dw yoka_barracas_tm

; Inserindo gráficos no final da rom
.orga filesize("Mega Man Battle Network 3 - Versao Branca (BR).gba")
.align

logo_tela_titulo:
.incbin "Graficos/Recomprimidos/Logo tela-titulo versao branca.gba"
.align

nomes_tela_titulo:
.incbin "Graficos/Recomprimidos/Nomes tela-titulo versao branca.gba"
.align

sala_aula_cleaners1:
.incbin "Graficos/Recomprimidos/Sala Aula - Cleaners1.gba"
.align

cidade_acdc_higsbys:
.incbin "Graficos/Recomprimidos/Cidade ACDC - Higsbys.gba"
.align

yoka_barracas_tm:
.db 0xa0, 0x56, 0x00, 0x00
.dw 0x00000010
.dw 0x00006b90
.dw 0x0000d710
.incbin "Graficos/Recomprimidos/Yoka - Barracas (tm).bin"
.align

yoka_barracas_td:
.incbin "Graficos/Recomprimidos/Yoka - Barracas (td).bin"
.align

.close
