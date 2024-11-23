<%@ Page Title="" Language="C#" MasterPageFile="~/backend.Master" AutoEventWireup="true" CodeBehind="managecontacts.aspx.cs" Inherits="WebApplication5.managecontacts" %>
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

       Manage Contacts
    </h1>

    </div>

      <div class="blankcontainer">


    </div>





    
               <section style="background-color: #eee;">

                    <asp:GridView CssClass="grid1" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ContactsID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display."  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="979px" OnRowCommand="GridView1_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
                            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                            <asp:ButtonField ButtonType="Image" CommandName="MailCustomer" Text="Mail" ImageUrl="~/images/mail.png" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shopConnectionString %>" DeleteCommand="DELETE FROM [Contacts] WHERE [ContactsID] = @ContactsID" InsertCommand="INSERT INTO [Contacts] ([Type], [Email], [Message], [Time], [Author]) VALUES (@Type, @Email, @Message, @Time, @Author)" ProviderName="<%$ ConnectionStrings:shopConnectionString.ProviderName %>" SelectCommand="SELECT [ContactsID], [Type], [Email], [Message], [Time], [Author] FROM [Contacts]" UpdateCommand="UPDATE [Contacts] SET [Type] = @Type, [Email] = @Email, [Message] = @Message, [Time] = @Time, [Author] = @Author WHERE [ContactsID] = @ContactsID">
                        <DeleteParameters>
                            <asp:Parameter Name="ContactsID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Type" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Message" Type="String" />
                            <asp:Parameter Name="Time" Type="DateTime" />
                            <asp:Parameter Name="Author" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Type" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Message" Type="String" />
                            <asp:Parameter Name="Time" Type="DateTime" />
                            <asp:Parameter Name="Author" Type="String" />
                            <asp:Parameter Name="ContactsID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
           
         
                   </section>
       <div class="blankcontainer">


    </div>



</asp:Content>
