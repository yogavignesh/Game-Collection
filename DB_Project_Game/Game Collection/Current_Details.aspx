<%@ Page Language="C#" MasterPageFile="~/Game Collection/MasterPage.master" AutoEventWireup="true" Title="Content Page" Inherits="_Default" Codebehind="Current_Details.aspx.cs" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <title>Game Details</title>
  <script type="text/javascript">
      $(document).ready(function () {

          
          $("#menu ul li#Query_Page").addClass("active");
         
      });

  </script>
    
    </asp:Content>

 <asp:Content ID="Content1" ContentPlaceHolderID="Main1" Runat="Server">
     <form id="display_form" runat="server">
         <div class="content">
             <table><tr>
                 <td>
                    Category : <asp:DropDownList ID="ddlCat" runat="server"></asp:DropDownList>
                     
                 </td>
                 <td>
                     Console : <asp:DropDownList ID="ddlCon" runat="server"></asp:DropDownList>
                     
                 </td>
                 <td>
                     <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                 </td>
                    </tr>
                 <tr><td colspan="3" align="center">
                     <asp:Label runat="server" visible="false" ID="lblError"></asp:Label></td></tr>
             </table>
         </div>
    <div id="content">
          <h2> <asp:Label ID="lblJustLikeThat" runat="server" text="Your search results awaits here ! Get ready for it !!" visible="false"></asp:Label><br />
              <asp:Label ID="lblNoRecords" runat="server" text="Sorry ! No records turned up for your search." visible="false"></asp:Label>
          </h2>
       <h2><asp:Label ID="lblTitle" runat="server" ></asp:Label></h2>
     
        <asp:GridView ID="gvResults" runat="server" AllowPaging="True" AllowSorting="True" OnPageIndexChanging="gvResults_PageIndexChanging" OnSorting="gvResults_Sorting">
            <AlternatingRowStyle BackColor="#FF6666" ForeColor="White" />
        </asp:GridView>    
        
        <div id="errMessage" style="display:none;" runat="server" >
            <img src="../images/error.jpg" class="icon"/><div class="bio" ><asp:Label ID="error_info" runat="server" ></asp:Label></div>
        </div>
     
    </div>
            
     </form>
</asp:Content>
      

