<%@ Page Title="" Language="C#" MasterPageFile="~/backend.Master" AutoEventWireup="true" CodeBehind="manageanalysis.aspx.cs" Inherits="WebApplication5.manageanalysis" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
        .auto-style2 {
            height: 21px;
            text-align: center;
        }
        .auto-style3 {
            height: 21px;
            text-align: left;
            width: 645px;
        }
        .auto-style4 {
            width: 645px;
        }
        .auto-style6 {
            width: 645px;
            text-align: left;
        }
        .auto-style8 {
            text-align: left;
        }
        .auto-style9 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
              <section style="background-color: #eee;">
  <div class="container py-5">
    <div class="row d-flex justify-content-center">
      <div class="col-md-12 col-lg-10 col-xl-8">
        <div class="card">
          <div class="card-body p-md-5">
            <div>
              <h4 class="auto-style9">View Analysis</h4>
              <p class="text-muted pb-2">
                  &nbsp;</p>
            </div>

         
              <table style="width: 100%;">
                  <tr>
                      <td class="auto-style3">
                          <asp:Label ID="Label1" runat="server" Text="Customers By Country"></asp:Label>
                      </td>
                      <td class="auto-style2">
                          <asp:Label ID="Label2" runat="server" Text="Customers By Plan"></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style4">
                          <div>
                          
                              <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
                                  <Series>
                                      <asp:Series Name="Series1" XValueMember="Country" YValueMembers="Ocurrences"></asp:Series>
                                  </Series>
                                  <ChartAreas>
                                      <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                  </ChartAreas>
                              </asp:Chart>

                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shopConnectionString %>" SelectCommand="SELECT COUNT(CustomerID) AS Ocurrences, Country FROM Users GROUP BY Country"></asp:SqlDataSource>

                          </div>
                   
                      </td>
                      <td>
                          <div class="auto-style8">
                              <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2">
                                  <Series>
                                      <asp:Series Name="Series1" ChartType="Doughnut" XValueMember="PlanName" YValueMembers="Occurences"></asp:Series>
                                  </Series>
                                  <ChartAreas>
                                      <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                  </ChartAreas>
                              </asp:Chart>
                              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:shopConnectionString %>" SelectCommand="SELECT COUNT(CustomerID) AS Occurences, PlanName FROM Users GROUP BY PlanName"></asp:SqlDataSource>
                          </div>
                      
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style6">
                          <asp:Label ID="Label3" runat="server" Text="Subsrciption By Time"></asp:Label>
                      </td>
                      <td class="auto-style9">
                          <asp:Label ID="Label4" runat="server" Text="Customers by Gender"></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style4">
                          <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource3">
                              <Series>
                                  <asp:Series Name="Series1" ChartType="Point" XValueMember="Occurences" YValueMembers="OrderDate"></asp:Series>
                              </Series>
                              <ChartAreas>
                                  <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                              </ChartAreas>
                          </asp:Chart>

                   
                          <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:shopConnectionString %>" SelectCommand="SELECT COUNT(SubscriptionID) AS Occurences, OrderDate FROM SubscriptionPay GROUP BY OrderDate"></asp:SqlDataSource>

                   
                      </td>
                      <td class="auto-style8">
                       
                          <asp:Chart ID="Chart4" runat="server" DataSourceID="SqlDataSource4">
                              <Series>
                                  <asp:Series Name="Series1" ChartType="Pie" XValueMember="Sex" YValueMembers="Occurences"></asp:Series>
                              </Series>
                              <ChartAreas>
                                  <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                              </ChartAreas>
                          </asp:Chart>

                         
                          <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:shopConnectionString %>" SelectCommand="SELECT COUNT(CustomerID) AS Occurences, Sex FROM Users GROUP BY Sex"></asp:SqlDataSource>

                         
                      </td>
                  </tr>
              </table>





          </div>        
              </div>
              </div>
              </div>
              </div>
                   </section>

</asp:Content>
