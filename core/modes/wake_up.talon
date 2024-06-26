#defines the commands that sleep/wake Talon
mode: all
-
^welcome back$:
    user.mouse_wake()
    user.history_enable()
    user.talon_mode()
^sleep all$:
    user.switcher_hide_running()
    user.history_disable()
    user.homophones_hide()
    user.help_hide()
    user.mouse_sleep()
    mode.disable("face")
    mode.disable("noise")
    speech.disable()
    user.engine_sleep()
^talon sleep$: speech.disable()
^talon wake$: speech.enable()
