<%@ Page Title="" Language="C#" MasterPageFile="~/backend.Master" AutoEventWireup="true" CodeBehind="managetestimonials.aspx.cs" Inherits="WebApplication5.managetestimonials" %>
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

         Manage Testimonials 
    </h1>

    </div>
    <div class="blankcontainer">


    </div>

    <div>

    <div>
        
<div>



               <section style="background-color: #eee;">

                    <asp:GridView CssClass="grid1"  ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TestID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="1640px">
                        <Columns>
                            <asp:BoundField DataField="TestDescription" HeaderText="Description" SortExpression="TestDescription" />
                            <asp:BoundField DataField="TestDate" HeaderText="Date" SortExpression="TestDate" />
                            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                            <asp:CheckBoxField DataField="IsApproved" HeaderText="Approval" SortExpression="IsApproved" />
                            <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Image" CancelImageUrl="~/images/select.png" DeleteImageUrl="~/images/delete.png" EditImageUrl="~/images/edit.png" UpdateImageUrl="~/images/done.png" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shopConnectionString %>" DeleteCommand="DELETE FROM [Testimonials] WHERE [TestID] = @TestID" InsertCommand="INSERT INTO [Testimonials] ([TestDescription], [TestDate], [Author], [IsApproved], [Rating]) VALUES (@TestDescription, @TestDate, @Author, @IsApproved, @Rating)" ProviderName="<%$ ConnectionStrings:shopConnectionString.ProviderName %>" SelectCommand="SELECT [TestID], [TestDescription], [TestDate], [Author], [IsApproved], [Rating] FROM [Testimonials]" UpdateCommand="UPDATE [Testimonials] SET [TestDescription] = @TestDescription, [TestDate] = @TestDate, [Author] = @Author, [IsApproved] = @IsApproved, [Rating] = @Rating WHERE [TestID] = @TestID">
                        <DeleteParameters>
                            <asp:Parameter Name="TestID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="TestDescription" Type="String" />
                            <asp:Parameter Name="TestDate" Type="DateTime" />
                            <asp:Parameter Name="Author" Type="String" />
                            <asp:Parameter Name="IsApproved" Type="Boolean" />
                            <asp:Parameter Name="Rating" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="TestDescription" Type="String" />
                            <asp:Parameter Name="TestDate" Type="DateTime" />
                            <asp:Parameter Name="Author" Type="String" />
                            <asp:Parameter Name="IsApproved" Type="Boolean" />
                            <asp:Parameter Name="Rating" Type="Int32" />
                            <asp:Parameter Name="TestID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
            
         






            
                   </section>

     </div>
          </div>        
              </div>
    <div class="blankcontainer">


    </div>
</asp:Content>
