;; This script provides: IME commands for Japanese users

#Include IME.ahk

;; ---------
;; functions
;; ---------

;; return if IME is on
get_input_method()
{
    Return IME_GET()
}

;; --------
;; commands
;; --------

toggle_input_method()
{ Global
    run_hooks("pre_command_hook")
    IME_SET(!IME_GET())
    run_hooks("post_command_hook")
}

;; convert to kanji (Spc)
convert()
{
    command_simple("{space}", 1, 0)
}

;; convert to katakana (F7)
convert_to_katakana()
{
    command_simple("{f7}", 1, 0)
}

convert_to_alphabet()
{
    command_simple("{f10}", 1, 0)
}

;; -------------------------
;; automatically turn of IME
;; -------------------------

turn_off_input_method()
{
    IME_SET(0)
}

add_hook("after_display_transition_hook", "turn_off_input_method")
