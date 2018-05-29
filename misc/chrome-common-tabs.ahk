#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; StackOverflow open in a new window
#!q::
    InputBox, search_query, StackOverflow search, Enter your urgent question, , 420, 120
    if not ErrorLevel
        Run "chrome" --newtab --app="https://stackoverflow.com/search?q=%search_query%"
    Return