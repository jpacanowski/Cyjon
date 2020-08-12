;===============================================================================
; Copyright (C) by blackdev.org
;===============================================================================

align	STATIC_QWORD_SIZE_byte,		db	STATIC_NOTHING
shell_ipc_data:
	times KERNEL_IPC_STRUCTURE.SIZE	db	STATIC_EMPTY

shell_string_prompt_with_new_line	db	STATIC_ASCII_NEW_LINE
shell_string_prompt			db	STATIC_ASCII_SEQUENCE_COLOR_RED_LIGHT
shell_string_prompt_type		db	"# "
shell_string_prompt_type_end		db	STATIC_ASCII_SEQUENCE_COLOR_DEFAULT
shell_string_prompt_end:
shell_string_sequence_terminal_clear	db	STATIC_ASCII_SEQUENCE_TERMINAL_CLEAR

shell_exec_path				db	"/bin/"
shell_exec_path_end:

shell_cache:
	times SHELL_CACHE_SIZE_byte	db	STATIC_EMPTY

shell_command_clear			db	"clear"
shell_command_clear_end:
shell_command_exit			db	"exit"
shell_command_exit_end:

shell_command_unknown			db	STATIC_ASCII_SEQUENCE_COLOR_RED_LIGHT, " ?", STATIC_ASCII_NEW_LINE
shell_command_unknown_end:
