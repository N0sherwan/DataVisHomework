Sub wallstreet_loop()
        Dim ws As Worksheet
        Dim starting_ws As Worksheet
        Set starting_ws = ActiveSheet '
        For Each ws In ThisWorkbook.Worksheets
            ws.Activate
            Dim Ticker As String
            Dim Volume_Total As Double
                Volume_Total = 0
            Dim Summary_Table_Row As Integer
                Summary_Table_Row = 2
            ws.Range("I1") = "Ticker"
            ws.Range("J1") = "Total Stock Volume for " + ws.Name
            For i = 2 To 800000
                        If Cells(i + 1, 1).Value <> Cells(i, 1).Value Then
                        Ticker = Cells(i, 1).Value
                        Volume_Total = Volume_Total + Cells(i, 7).Value
                        Range("I" & Summary_Table_Row).Value = Ticker
                        Range("J" & Summary_Table_Row).Value = Volume_Total
                        Summary_Table_Row = Summary_Table_Row + 1
                        Volume_Total = 0
                    Else
                        Volume_Total = Volume_Total + Cells(i, 7).Value
                        End If
            Next i
        Next ws
    starting_ws.Activate
End Sub