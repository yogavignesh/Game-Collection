<%@ Page Title="" Language="C#" MasterPageFile="~/Game Collection/MasterPage.master" AutoEventWireup="true" Inherits="Game_Collection_Home" Codebehind="Home.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Home</title>
     <script type="text/javascript">
         $(document).ready(function () {
             
             $("#menu ul li#Home_Page").addClass("active");
                
         });
       

    </script>
   
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main1" Runat="Server">

    <aside id="featured" class="body">
       
        <article >
  <figure>
    
   <img src="../images/mortal-kombat-x.jpg" style="width:inherit;height:inherit;" alt="My Game" />
  </figure>
  <hgroup>
 
    <h2><a href="http://en.wikipedia.org/wiki/Mortal_Kombat_X" target="_blank">Mortal Kombat X</a></h2>
    <h3>Mortal Kombat X is a fighting game developed by NetherRealm Studios. It is the tenth main installment in the Mortal Kombat video game series and was released on April 14, 2015 for PlayStation 4, Xbox One.<a href="http://en.wikipedia.org/wiki/Mortal_Kombat_X" target="_blank" >Get more info about the game.
       
        </a></h3>
  </hgroup>
 
</article>
        <article >
  <figure>

   <img src="/images/3hRU6px.jpg" style="width:inherit;height:inherit;" alt="My Game" />
  </figure>
  <hgroup>
 
    <h2> <a href="http://en.wikipedia.org/wiki/Batman:_Arkham_Knight" target="_blank"> Batman : Arkham Knight</a></h2>
    <h3>Batman: Arkham Knight is an upcoming action-adventure video game being developed by Rocksteady Studios and published by Warner Bros.
         Interactive Entertainment for the PlayStation 4 and Xbox One video game consoles, and Microsoft Windows.
        <a href="http://en.wikipedia.org/wiki/Batman:_Arkham_Knight" target="_blank">Get more info on this.</a></h3>
  </hgroup>
 
</article>
  
    </aside><!-- /#featured -->
 

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Main2" Runat="Server">
    <section id="extras" class="body">
  <div class="gamehistory" runat="server">
    <h2>Yet to Play Games</h2>
 
    <ul id="played_Games" runat="server">
      
    </ul>
  </div>
 
  <div class="queries">
 
    <h2>Task 4 Queries</h2>
    <ul>
      <li><a href="Current_Details.aspx?dispQuery=1&&t=All_Games" rel="me">All Games</a></li>
      <li><a href="Current_Details.aspx?dispQuery=2&&t=Total Games" rel="me">Total Games</a></li>
 
     <li><a href="Current_Details.aspx?dispQuery=3&&t=Cost of my collection" rel="me">Cost of my collection</a></li>
    <li><a href="Current_Details.aspx?dispQuery=4&&t=Game Info Availablity" rel="me">Game Info Availablity</a></li>
     <li><a href="Current_Details.aspx?dispQuery=5&&t=Top 100 Expensive" rel="me">Top 100 Expensive</a></li>
    <li><a href="Current_Details.aspx?dispQuery=6&&t=Value Games Purchased" rel="me">Value Games Purchased</a></li>
       <li><a href="Current_Details.aspx?dispQuery=7&&t=Want to Keep" rel="me">Want to Keep</a></li>
       <li><a href="Current_Details.aspx?dispQuery=8&&t=Want to Play" rel="me">Want to Play</a></li>
       <li><a href="Current_Details.aspx?dispQuery=9&&t=Cost per month" rel="me">Cost per month</a></li>
       <li><a href="Current_Details.aspx?dispQuery=10&&t=Gross Value of my games" rel="me">Gross Value of my games</a></li>

    </ul>
  </div><!-- /.social -->
</section><!-- /#extras -->

</asp:Content>

  
