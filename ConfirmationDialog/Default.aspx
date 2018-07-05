<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="ConfirmationDialog._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <%--These are neccesary libraries references for JQuery dialog to work out.--%>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
    <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/blitzer/jquery-ui.css" rel="stylesheet" type="text/css" />

   <script type="text/javascript">

       //----BEGIN-----Javascript dialog example section 
       function ConfirmDelete() {

           var selectionResult = false;

           if (confirm("Are you sure you want to Proceed?") == true)

               selectionResult = true;

           var hiddenControl = '<%= inpHide.ClientID %>';
           document.getElementById(hiddenControl).value = selectionResult;
       }
       //----END-----Javascript dialog example section 

       //----BEGIN-----JQuery dialog example section 
       $(function () {
           $("[id*=btnJQConfirm]").removeAttr("onclick");
           $("#dialog").dialog({
               modal: true,
               autoOpen: false,
               title: "Warning",
               width: 450,
               height: 210,
               buttons: [
               {
                   id: "Yes",
                   text: "Yes",
                   click: function () {
                       $("[id*=btnJQConfirm]").attr("rel", "delete");
                       $("[id*=btnJQConfirm]").click();
                   }
               },
               {
                   id: "No",
                   text: "No",
                   click: function () {
                       $(this).dialog('close');
                   }
               }
               ]
           });
           $("[id*=btnJQConfirm]").click(function () {
               if ($(this).attr("rel") != "delete") {
                   $('#dialog').dialog('open');
                   return false;
               } else {
                   __doPostBack(this.name, '');
               }
           });
       });
       //----END-----JQuery dialog example section    
   </script>

    <%------BEGIN-----JQuery dialog div section--%>

     <div id="dialog" style="display: none" >         
            The confirmation message goes in here. Are you sure you want to proceed?
    </div>

    <%------END-----JQuery dialog div section--%>

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
                <asp:Button ID="btnJQConfirm" runat="server" Text="Confirming JQuery"/>
            </p>  
             <p class="text-center">
                 <asp:Label ID="lblJQResult" runat="server" Text="Label" Visible="False"></asp:Label>
             </p>           
        </div>       
      </div>

</asp:Content>
