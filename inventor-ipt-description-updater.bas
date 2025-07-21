Sub UpdateDescriptionInAllOpenIPTs()
    Dim invApp As Inventor.Application
    Dim doc As Document
    Dim partDoc As PartDocument
    Dim userInput As String
    Dim response As VbMsgBoxResult

    ' Check if Inventor is running
    On Error Resume Next
    Set invApp = GetObject(, "Inventor.Application")
    If invApp Is Nothing Then
        MsgBox "Autodesk Inventor is not running.", vbCritical
        Exit Sub
    End If
    On Error GoTo 0

    ' Ask user if they want to update description
    response = MsgBox("Do you want to enter a new description for all open part files?", vbYesNo + vbQuestion, "Update Descriptions")
    If response = vbNo Then Exit Sub

    userInput = InputBox("Enter the new description:", "New Description")
    If Trim(userInput) = "" Then
        MsgBox "No description entered. Operation canceled.", vbExclamation
        Exit Sub
    End If

    ' Loop through open documents
    For Each doc In invApp.Documents
        If doc.DocumentType = kPartDocumentObject Then
            Set partDoc = doc

            On Error Resume Next
            ' Remove existing description
            partDoc.PropertySets("Design Tracking Properties").Item("Description").Value = ""

            ' Apply new description
            partDoc.PropertySets("Design Tracking Properties").Item("Description").Value = userInput
            partDoc.Save
            On Error GoTo 0
        End If
    Next doc

    MsgBox "Descriptions updated for all open part files.", vbInformation
End Sub
