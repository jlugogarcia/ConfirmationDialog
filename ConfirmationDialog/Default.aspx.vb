Public Class _Default
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnJSValue_Click(ByVal sender As Object, ByVal e As EventArgs)

        If (inpHide.Value = "true") Then
            'Do something for the Yes operation
            lblJSResult.Text = "The user clicked " & inpHide.Value
        Else
            'Do another thing for the No operation or leave it blank
            lblJSResult.Text = "The user clicked " & inpHide.Value
        End If

        lblJSResult.Visible = True


    End Sub

End Class