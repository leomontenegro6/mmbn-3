; Script de inserção de gráficos descomprimidos na rom
;
; Escrito por Solid One - Outubro de 2023
.gba

.open "Mega Man Battle Network 3 - Versao Azul (BR).gba", 0x08000000

; Inserindo gráficos, em seus respectivos offsets
.org 0x08679B5C
.incbin "Gráficos/Editados/0x679B5C - Fonte textos.gba"
			
.close