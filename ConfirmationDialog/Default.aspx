<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="ConfirmationDialog._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <script type="text/javascript">

       function ConfirmDelete() {

           var selectionResult = false;

           if (confirm("Are you sure you want to Proceed?") == true)

               selectionResult = true;

           var hiddenControl = '<%= inpHide.ClientID %>';
           document.getElementById(hiddenControl).value = selectionResult;
       }

   </script>

   <div class="jumbotron">
         <h2> <strong>Testing confirmation dialogs</strong></h2>
         <p class="lead">The main purpose of this project is to demonstrate how to obtain pop-up dialogs, which can be useful for confirming operations like update/delete.</p>                 
    </div>  

   <input id="inpHide" type="hidden" runat="server" />

   <div class="row">
         
         <div class="col-md-2 col-md-offset-4">  
            <p class="text-center">
                <asp:Label ID="Label1" runat="server" Text="This example uses Javascript to call a confirmation pop-up window, and pass the confirmation result to code behind in order to proceed or abort."></asp:Label>
            </p>           
            <p class="text-center">
                <asp:Button ID="btnJSConfirm" runat="server" Text="Confirming JS" onclientclick="ConfirmDelete();" onclick="btnJSValue_Click"/>                                
            </p>    
             <p class="text-center">
                 <asp:Label ID="lblJSResult" runat="server" Text="Label" Visible="False"></asp:Label>
             </p>
                   
        </div>
        <div class="col-md-2">            
             <p class="text-center">
                <asp:Label ID="Label2" runat="server" Text="This example uses JQuery to call a confirmation pop-up window, and proceed with code behind implementation in case the user selects the option to proceed (Yes)."></asp:Label>
            </p>           
            <p class="text-center">
                <asp:Button ID="btnJQConfirm" runat="server" Text="Confirming JQuery" />                
            </p>             
        </div>       
      </div>

</asp:Content>
