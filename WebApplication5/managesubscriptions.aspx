<%@ Page Title="" Language="C#" MasterPageFile="~/backend.Master" AutoEventWireup="true" CodeBehind="managesubscriptions.aspx.cs" Inherits="WebApplication5.managesubscriptions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>



        .grid1{

            margin-left:auto;
            margin-right:auto;

        }
        
 .blankcontainer {
    background-color: #EEEEEE;
    height: 60px;
    z-index: -99;



}

        .auto-style1 {
            text-align: center;
        }





    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="blankcontainer">


    </div>
       <div class="blankcontainer"   > 

      <h1 text-align=center class="auto-style1">

       Manage Subscriptions
    </h1>

    </div>

      <div class="blankcontainer">


    </div>





    
               <section style="background-color: #eee;">

          <asp:GridView CssClass="grid1" ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="SubscriptionID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="Horizontal" Width="1485px">
              <Columns>
                  <asp:BoundField DataField="PlanName" HeaderText="Plan" SortExpression="PlanName" />
                  <asp:BoundField DataField="CustomerID" HeaderText="Customer ID" SortExpression="CustomerID" />
                  <asp:BoundField DataField="Customer_Surname" HeaderText="Surname" SortExpression="Customer_Surname" />
                  <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
                  <asp:BoundField DataField="DateIssued" HeaderText="Date Joined" SortExpression="DateIssued" />
                  <asp:BoundField DataField="DataExp" HeaderText="Expired Date" SortExpression="DataExp" />
                  <asp:CommandField ButtonType="Image" CancelImageUrl="~/images/select.png" DeleteImageUrl="~/images/delete.png" EditImageUrl="~/images/edit.png" ShowDeleteButton="True" ShowEditButton="True" UpdateImageUrl="~/images/done.png" />
              </Columns>
              <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
              <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
              <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
              <SortedAscendingCellStyle BackColor="#F7F7F7" />
              <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
              <SortedDescendingCellStyle BackColor="#E5E5E5" />
              <SortedDescendingHeaderStyle BackColor="#242121" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shopConnectionString %>" DeleteCommand="DELETE FROM [SubscriptionPay] WHERE [SubscriptionID] = @SubscriptionID" InsertCommand="INSERT INTO [SubscriptionPay] ([CustomerID], [OrderDate], [ExpiredDate], [PlanID], [Customer Surname], [PlanName], [DateIssued], [DataExp], [CreditCard]) VALUES (@CustomerID, @OrderDate, @ExpiredDate, @PlanID, @Customer_Surname, @PlanName, @DateIssued, @DataExp, @CreditCard)" ProviderName="<%$ ConnectionStrings:shopConnectionString.ProviderName %>" SelectCommand="SELECT [SubscriptionID], [CustomerID], [OrderDate], [ExpiredDate], [PlanID], [Customer Surname] AS Customer_Surname, [PlanName], [DateIssued], [DataExp], [CreditCard] FROM [SubscriptionPay]" UpdateCommand="UPDATE [SubscriptionPay] SET [CustomerID] = @CustomerID, [OrderDate] = @OrderDate, [ExpiredDate] = @ExpiredDate, [PlanID] = @PlanID, [Customer Surname] = @Customer_Surname, [PlanName] = @PlanName, [DateIssued] = @DateIssued, [DataExp] = @DataExp, [CreditCard] = @CreditCard WHERE [SubscriptionID] = @SubscriptionID">
              <DeleteParameters>
                  <asp:Parameter Name="SubscriptionID" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="CustomerID" Type="Int32" />
                  <asp:Parameter Name="OrderDate" Type="DateTime" />
                  <asp:Parameter Name="ExpiredDate" Type="DateTime" />
                  <asp:Parameter Name="PlanID" Type="Int32" />
                  <asp:Parameter Name="Customer_Surname" Type="String" />
                  <asp:Parameter Name="PlanName" Type="String" />
                  <asp:Parameter Name="DateIssued" Type="DateTime" />
                  <asp:Parameter Name="DataExp" Type="DateTime" />
                  <asp:Parameter Name="CreditCard" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="CustomerID" Type="Int32" />
                  <asp:Parameter Name="OrderDate" Type="DateTime" />
                  <asp:Parameter Name="ExpiredDate" Type="DateTime" />
                  <asp:Parameter Name="PlanID" Type="Int32" />
                  <asp:Parameter Name="Customer_Surname" Type="String" />
                  <asp:Parameter Name="PlanName" Type="String" />
                  <asp:Parameter Name="DateIssued" Type="DateTime" />
                  <asp:Parameter Name="DataExp" Type="DateTime" />
                  <asp:Parameter Name="CreditCard" Type="String" />
                  <asp:Parameter Name="SubscriptionID" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>


                   </section>
       <div class="blankcontainer">


    </div>
</asp:Content>
