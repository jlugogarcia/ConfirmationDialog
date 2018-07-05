Public Class _Default
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnJSValue_Click(ByVal sender As Object, ByVal e As EventArgs)

        lblJQResult.Visible = False

        If (inpHide.Value = "true") Then
            'Do something for the Yes operation
            lblJSResult.Text = "The user clicked OK."
        Else
            'Do another thing for the No operation or leave it blank
            lblJSResult.Text = "The user clicked Cancel."
        End If

        lblJSResult.Visible = True

    End Sub

    Protected Sub btnJQConfirm_Click1(sender As Object, e As EventArgs) Handles btnJQConfirm.Click

        lblJSResult.Visible = False

        'Actions to execute goes here. (Can be delete or update something)
        lblJQResult.Text = "The user clicked on Yes action."

        lblJQResult.Visible = True
        'This is an optional message you could show up after actions completed
        ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Action executed.')", True)



    End Sub
End Class