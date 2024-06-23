Set objShell = CreateObject("WScript.Shell")

' Display initial warning messages
intWarning = MsgBox("warning! this can make computer go boom boom cuz this is virus" & vbCrLf & vbCrLf & "epicskid virus omg!!", vbQuestion + vbYesNo, "Warning")

If intWarning = vbYes Then
    ' Display second warning message
    MsgBox "the creater is not responsible for any damage done to this computer, continue???", vbExclamation + vbOKOnly, "LAST WARNING!!"
