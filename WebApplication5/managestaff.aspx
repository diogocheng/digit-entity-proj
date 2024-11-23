<%@ Page Title="" Language="C#" MasterPageFile="~/backend.Master" AutoEventWireup="true" CodeBehind="managestaff.aspx.cs" Inherits="WebApplication5.managestaff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
     <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style5 {
            height: 21px;
             text-align: center;
         }
        .auto-style6 {
            height: 25px;
            width: 437px;
        }
        .auto-style7 {
            width: 258px;
        }
        .auto-style9 {
            height: 25px;
            width: 258px;
        }
        .auto-style10 {
            width: 437px;


        }
        .grid1{

            margin-left:auto;
            margin-right:auto;

        }
         .auto-style11 {
             text-align: center;
         }
         .hello{
               margin-left:auto;
            margin-right:auto;
            margin-left:auto;
            margin-right:auto;
             text-align: center;

             width:1100px;


         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
       
    <br />
     <br />
     <br />
       <div class="text-center"  > 

      <h1 text-align=center>

          REGISTER A STAFF 
    </h1>

    </div>

  
       
        
       
           
    <div class="hello">



  
              
             

              <form>
                <!-- 2 column grid layout with text inputs for the first and last names -->
                  <div class="text-center">

                  
                  <table class="auto-style3">
                      <tr>
                          <td class="auto-style10">
                              <asp:Label ID="Label13" runat="server" Text="Name"></asp:Label>
                              <br />
                              <div class="auto-style11">
                              <asp:TextBox class="form-control" ID="nameStaff" runat="server" Width="521px"></asp:TextBox>
                              </div>
                              </td>
                          <td class="auto-style7">
                              <asp:Label ID="Label12" runat="server" Text="Surname"></asp:Label>
                              <br />
                              <div class="auto-style11">
                              <asp:TextBox  class="form-control" ID="surnameStaff" runat="server" Width="521px"></asp:TextBox>
                              </div>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style5" colspan="2">
                              <asp:Label ID="Label3" runat="server" Text="Adress"></asp:Label>
                              <br />
&nbsp;<div class="auto-style11">
                                  <asp:TextBox ID="adressStaff" class="form-control" runat="server" Width="1069px" ></asp:TextBox>
                              </div>
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style6">
                              <asp:Label ID="Label10" runat="server" Text="Email"></asp:Label>
                              <br />
                              <div class="auto-style11">
                              <asp:TextBox class="form-control" ID="emailStaff" runat="server" Width="521px"></asp:TextBox>
                              </div>
                              <br />
                          </td>
                          <td class="auto-style9">
                              <asp:Label ID="Label11" runat="server" Text="DoB"></asp:Label>
                              <br />
                              <div class="auto-style11">
                              <asp:TextBox class="form-control" ID="dateStaff" runat="server" Width="521px" TextMode="Date"></asp:TextBox>
                              </div>
                              <br />
                          </td>
                      </tr>
                      <tr>
                          <td class="auto-style6">
                              <asp:Label ID="Label9" runat="server" Text="Username"></asp:Label>
                              <br />
                              <div class="auto-style11">
                              <asp:TextBox class="form-control" ID="usernameStaff" runat="server" Width="521px"></asp:TextBox>
                              </div>
                              <br />
                          </td>
                          <td class="auto-style9">
                              <asp:Label ID="Label8" runat="server" Text="Password"></asp:Label>
                              <br />
                              <div class="auto-style11">
                              <asp:TextBox class="form-control" ID="pswStaff" runat="server" Width="521px"></asp:TextBox>
                              </div>
                          </td>
                      </tr>
                  </table>

                          <asp:Button ID="btnStaff" class="btn btn-primary btn-block mb-4" runat="server" Text="Add Staff" Height="41px"  Width="182px" OnClick="btnStaff_Click"  />
          
      </div>
  </div>
                          
                <br />

     <div  > 

           </div>
                <br />
                <br />
                <div class="auto-style11">
                          <asp:GridView CssClass="grid1" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AdminID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Width="1677px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                            <asp:BoundField DataField="Adress" HeaderText="Adress" SortExpression="Adress" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="DoB" HeaderText="Date of Birth" SortExpression="DoB" />
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
    </div>
 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shopConnectionString %>" DeleteCommand="DELETE FROM [Admins
] WHERE [AdminID] = @AdminID" InsertCommand="INSERT INTO [Admins
] ([Name], [Surname], [Username], [Password], [Adress], [Email], [DoB]) VALUES (@Name, @Surname, @Username, @Password, @Adress, @Email, @DoB)" ProviderName="<%$ ConnectionStrings:shopConnectionString.ProviderName %>" SelectCommand="SELECT [AdminID], [Name], [Surname], [Username], [Password], [Adress], [Email], [DoB] FROM [Admins
]" UpdateCommand="UPDATE [Admins
] SET [Name] = @Name, [Surname] = @Surname, [Username] = @Username, [Password] = @Password, [Adress] = @Adress, [Email] = @Email, [DoB] = @DoB WHERE [AdminID] = @AdminID">
        <DeleteParameters>
            <asp:Parameter Name="AdminID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Surname" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Adress" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter DbType="Date" Name="DoB" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Surname" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Adress" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter DbType="Date" Name="DoB" />
            <asp:Parameter Name="AdminID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
                <br />

                        </div>
                  

              </form>
            

</asp:Content>
