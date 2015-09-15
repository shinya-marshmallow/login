Const URL_HEAD = "http://150.89.234.234:8080/LabMemberManager/dwr/jsonp/LmmManager/login/"

Dim oNet, oXml, url

Set oXml = CreateObject("MSXML2.XMLHTTP.3.0")
Set oNet = CreateObject("WScript.Network")

url = URL_HEAD & oNet.UserName

oXml.Open "GET", url, False
oXml.Send

'If oXml.Status = 200 Then
'	MsgBox "Reply : " & oXml.responseText
'Else
'	MsgBox "Error : " & oXml.responseText
'End If
