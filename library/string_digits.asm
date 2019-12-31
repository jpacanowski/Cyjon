;===============================================================================
; Copyright (C) by Blackend.dev
;===============================================================================

;===============================================================================
; wejście:
;	rcx - ilość znaków w ciągu
;	rsi - wskaźnik do ciągu
; wyjście:
;	Flaga CF - jeśli ciąg nie zawiera samych cyfr
library_string_digits:
	; zachowaj oryginalne rejestry
	push	rsi
	push	rcx

.loop:
	; znak spoza zakrecy cyfr?
	cmp	byte [rsi],	STATIC_ASCII_DIGIT_0
	jb	.error	; tak
	cmp	byte [rsi],	STATIC_ASCII_DIGIT_9
	ja	.error	; tak

	; sprawdź następny znak
	inc	rsi

	; koniec ciągu
	dec	rcx
	jnz	.loop	; nie

	; flaga, sukces
	clc

	; koniec procedury
	jmp	.end

.error:
	; flaga, błąd
	stc

.end:
	; przywróć oryginalne rejestry
	pop	rcx
	pop	rsi

	; powrót z procedury
	ret
