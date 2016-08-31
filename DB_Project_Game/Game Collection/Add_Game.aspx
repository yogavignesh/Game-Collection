
<%@ Page Language="C#" MasterPageFile="~/Game Collection/MasterPage.master" AutoEventWireup="true" Title="Form Page" Inherits="Add_New_Game" Codebehind="Add_Game.aspx.cs" %>
 
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <title>New Game</title>
    

  <script type="text/javascript">
      $(document).ready(function () {
         
          $("#menu ul li#Add_Game").addClass("active");
          $(function () {
              $('#Main1_txtPurchaseDate').datepicker();
          });        

      });
      
  
      
  </script>
    
    </asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="Main1" Runat="Server">

    

                  <form id=form1 runat="server">
                      <table class="content">
                          <tr><td colspan="3"><h2>New Game in Town!</h2></td></tr>
                          <tr >
                              <td colspan="2" ><strong>Game Title:</strong><asp:TextBox ID="txtTitle" runat="server" Width="250px"></asp:TextBox>
                                  <br />
                                  <asp:RequiredFieldValidator ID="rrfTitle" runat="server" ErrorMessage="Please enter the title of the game" ControlToValidate="txtTitle"></asp:RequiredFieldValidator></td>
                              <td style="text-align:justify"><strong>Condition:</strong><asp:DropDownList ID="ddlCondition" runat="server"></asp:DropDownList></td>
                            
                          </tr>
                          <tr>
                              <td><asp:DropDownList ID="ddlConsole" runat="server"></asp:DropDownList><br /><asp:CustomValidator ID="consSelectError" runat="server" ErrorMessage="Please select a Console"></asp:CustomValidator></td>
                              <td> <asp:DropDownList ID="ddlCategory" runat="server"></asp:DropDownList><br /><asp:CustomValidator ID="catSelectError" runat="server" ErrorMessage="Please select a Category"></asp:CustomValidator></td>
                          </tr>
                          <tr>
                              <td><asp:DropDownList ID="ddlPublisher" runat="server"></asp:DropDownList><br /><asp:CustomValidator ID="pubSelectError" runat="server" ErrorMessage="Please select a Publisher"></asp:CustomValidator></td>
                              <td> <asp:DropDownList ID="ddlDeveloper" runat="server"></asp:DropDownList><br /><asp:CustomValidator ID="devSelectError" runat="server" ErrorMessage="Please select a Developer"></asp:CustomValidator></td>
                                  <td><strong>Purchase Date: </strong>
                                  <asp:TextBox ID="txtPurchaseDate" name="txtPDate" runat="server"></asp:TextBox><br /><asp:RequiredFieldValidator ID="rrfPDate" runat="server" ErrorMessage="Please enter your purchased date" ControlToValidate="txtPurchaseDate"></asp:RequiredFieldValidator></td>
                          </tr>
                          <tr>
                              <td ><strong>Completeness:</strong><asp:DropDownList ID="ddlCompleteNess" runat="server"></asp:DropDownList></td>
                          
                              <td><asp:RequiredFieldValidator ID="rrfPrice" runat="server" ErrorMessage="Please enter the price you bought for" ControlToValidate="txtBoughtPrice"></asp:RequiredFieldValidator><br/><strong>Price:</strong>$<asp:TextBox ID="txtBoughtPrice" runat="server"></asp:TextBox><br />
                                  <asp:RegularExpressionValidator ID="revPrice" runat="server" ErrorMessage="Please enter valid price" ControlToValidate="txtBoughtPrice" ValidationExpression="^\$?(\d{1,3},?(\d{3},?)*\d{3}(.\d{0,3})?|\d{1,3}(.\d{2})?)$"></asp:RegularExpressionValidator></td>
                                  
                              <td><asp:RequiredFieldValidator ID="rrfMarketPrice" runat="server" ErrorMessage="Please give market price of your game" ControlToValidate="txtMarketPrice">

                                  </asp:RequiredFieldValidator><br /><strong>Market Price:</strong>$<asp:TextBox ID="txtMarketPrice" runat="server">
                                </asp:TextBox><br /><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter valid price" ControlToValidate="txtMarketPrice" ValidationExpression="^\$?(\d{1,3},?(\d{3},?)*\d{3}(.\d{0,3})?|\d{1,3}(.\d{2})?)$"></asp:RegularExpressionValidator></td>
                          </tr>
                          <tr>

                              <td><asp:CheckBox ID="chkCompleted" runat="server" Text="Completed"></asp:CheckBox></td>
                              <td><asp:CheckBox ID="chkWantToPlay" runat="server" Text="Want to Play"></asp:CheckBox></td>
                              <td><asp:CheckBox ID="chkPlayed" runat="server" Text="Played"></asp:CheckBox></td>
                              
                          </tr>
                           <tr>

                              <td><asp:CheckBox ID="chkKeep" runat="server" Text="Keep"></asp:CheckBox></td>
                              <td><asp:CheckBox ID="chkMightSell" runat="server" Text="Might Sell"></asp:CheckBox></td>
                               <td><asp:CheckBox ID="chkSell" runat="server" Text="Sell"></asp:CheckBox></td>
                          </tr>
                          <tr>
                              <td colspan="3" align="center"><asp:Button ID="btnSubmit" runat="server" Text="Submit New Game" OnClick="btnSubmit_Click" />
                                  <asp:Label ID="lblStatus" runat="server" Visible="false"></asp:Label>
                              </td>
                          </tr>
                      </table>
    </form>
     </asp:Content>

