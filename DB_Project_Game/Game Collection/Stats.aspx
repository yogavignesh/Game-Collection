<%@ Page Title="" Language="C#" MasterPageFile="~/Game Collection/MasterPage.master" AutoEventWireup="true" Inherits="Game_Collection_Stats" Codebehind="Stats.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="../Scripts/Chart.js"></script>
    <script src="../Scripts/Chart.Doughnut.js"></script>
    <script src="../Scripts/jquery.2.1.3.min.js"></script>
   
     <script type="text/javascript">


         $(document).ready(function () {


             $("#menu ul li#Stats").addClass("active");

         });
        

		var randomScalingFactor = function(){ return Math.round(Math.random()*100)};
         var randomColorFactor = function(){ return Math.round(Math.random()*255)};

         var pieData = [
                 {
                     value: 28,
                     color:"#F7464A",
                     highlight: "#FF5A5E",
                     label: "Sports"
                 },
                 {
                     value: 0,
                     color: "#46BFBD",
                     highlight: "#5AD3D1",
                     label: "Platformer"
                 },
                 {
                     value:8,
                     color: "#FDB45C",
                     highlight: "#FFC870",
                     label: "Arcade"
                 },
                 {
                     value: 38,
                     color: "#949FB1",
                     highlight: "#A8B3C5",
                     label: "RPG"
                 },
                 {
                     value: 18,
                     color: "#4D5360",
                     highlight: "#616774",
                     label: "Strategy"
                 },
         {
             value: 58,
             color: "#889EEF",
         highlight: "#A8B3C5",
         label: "Action-Adventure"
         },
         {
             value: 3,
             color: "#BF6733",
             highlight: "#A8B3C5",
             label: "Beat em up"
         },
         {
             value: 0,
             color: "#747446",
             highlight: "#A8B3C5",
             label: "Shooter"
         },
         {
             value: 0,
             color: "#547547",
             highlight: "#A8B3C5",
             label: "Adventure"
         },
         {
             value: 0,
             color: "#954644",
             highlight: "#A8B3C5",
             label: "Family"
         }
         ];

         window.onload = function(){
             var ctx = document.getElementById("chart-area").getContext("2d");
             window.myPie = new Chart(ctx).Pie(pieData);
         };

        



	</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main1" Runat="Server">
       <div class="content"><center><h2> Total Games under each category</h2></center></div>
    <div id="canvas-holder" class="body content">
			<center><canvas id="chart-area" width="700" height="700"/></center>
		</div>
		

 

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Main2" Runat="Server">
</asp:Content>

