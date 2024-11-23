<%@ Page Title="" Language="C#" MasterPageFile="~/frontend.Master" AutoEventWireup="true" CodeBehind="testimonials.aspx.cs" Inherits="WebApplication5.testimonials" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
      <style type="text/css">
        .auto-style3 {
            color: #33CCFF;
            font-size: large;
        }
          .auto-style9 {
              text-align: center;
          }
          .auto-style10 {
              width: 156px;
              height: 149px;
          }
          .auto-style11 {
              color: #999999;
              font-size: large;
          }
          .auto-style12 {
              color: #666666;
          }
          .auto-style13 {
              color: #666666;
              font-size: large;
          }
          
        .grid1{

            margin-left:auto;
            margin-right:auto;
           width:10%;
        }
        
 .blankcontainer {
    
    height: 60px;
    z-index: -99;
    


}
 .center {
 
  margin: auto;
  width: 50%;
  padding: 10px;
}

        .auto-style1 {
            text-align: center;
        }

          .auto-style14 {
             
              margin: auto;
              width: 50%;
              padding: 10px;
              text-align: center;
          }

          </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
   
    
    <div class="blankcontainer">


    </div>

    <div class="blankcontainer"   > 

      <h1 text-align=center class="auto-style1">

        Explore our testimonials
    </h1>
       
    </div>

     <div class="blankcontainer">


    </div>

  
         
              
              <asp:DataList CssClass="grid1" ID="dlTestimonials" runat="server" DataKeyField="TestID" DataSourceID="SqlDataSource1" Width="1001px" RepeatColumns="3">
                  <ItemTemplate>
                      <div class="auto-style9">
                          <span class="auto-style12">&nbsp;</span><strong><span class="auto-style13">&quot;</span></strong><asp:Label ID="TestDescriptionLabel" runat="server" CssClass="auto-style13" Font-Italic="True" Font-Size="X-Large" Text='<%# Eval("TestDescription") %>' ForeColor="#666699" />
                          <strong>
                          <span class="auto-style11">&quot;</span><br />
                          <br class="auto-style3" /> <span class="auto-style3">&nbsp;</span><span class="auto-style13">-</span><asp:Label ID="AuthorLabel" runat="server" CssClass="auto-style13" Text='<%# Eval("Author") %>' ForeColor="#666699" />
                          <br />
                          <br />
                          <img alt="" class="auto-style10" src="images/avatar.png" />
                          </strong>
                          <br />
                          <br />
                          <asp:Image ID="imgStar1" runat="server" Height="35px" ImageUrl='<%# Eval("Rating","images/star.png") %>' Width="35px" />
                          <asp:Image ID="imgStar2" runat="server" Height="35px" ImageUrl='<%# Eval("Rating","images/star.png") %>' Visible='<%# Convert.ToInt32(Eval("Rating"))>1 %>' Width="35px" />
                          <asp:Image ID="imgStar3" runat="server" Height="35px" ImageUrl='<%# Eval("Rating","images/star.png") %>' Visible='<%# Convert.ToInt32(Eval("Rating"))>2 %>' Width="35px" />
                          <asp:Image ID="imgStar4" runat="server" Height="35px" ImageUrl='<%# Eval("Rating","images/star.png") %>' Visible='<%# Convert.ToInt32(Eval("Rating"))>3 %>' Width="35px" />
                          <asp:Image ID="imgStar5" runat="server" Height="35px" ImageUrl='<%# Eval("Rating","images/star.png") %>' Visible='<%# Convert.ToInt32(Eval("Rating"))>4 %>' Width="35px" />
                          <br />
                      </div>
                  </ItemTemplate>
              </asp:DataList>
        

          
              
            

                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shopConnectionString %>" SelectCommand="SELECT * FROM [Testimonials] WHERE ([IsApproved] = @IsApproved)">
                      <SelectParameters>
                          <asp:Parameter DefaultValue="True" Name="IsApproved" Type="Boolean" />
                      </SelectParameters>
              </asp:SqlDataSource>
        

          
          
    <div class="blankcontainer">


    </div>
     <h3 text-align=center class="auto-style1">

       Leave Yours
    </h3>
    <div class="blankcontainer">


    </div>
    
              <div class="auto-style14">



            
                  <asp:Label ID="Label1" runat="server" Text="Testimonial"></asp:Label>
              
            
                          <div class="auto-style9">
              
            
                          <asp:TextBox class="form-control" ID="txtTestimonial" runat="server" Height="145px" TextMode="MultiLine" Width="923px"></asp:TextBox>
                 
                    
                    </div>
                 
                    
                    <asp:Label ID="Label2" runat="server" Text="Author"></asp:Label>
                 
                    
                          <div class="auto-style9">
                 
                    
                          <asp:TextBox class="form-control" ID="txtAuthor" runat="server" Width="923px"></asp:TextBox>
                 
                  </div>
                 
            <asp:Label ID="Label3" runat="server" Text="Rating"></asp:Label>
                   
                          <asp:DropDownList class="form-control" ID="ddlRating" runat="server" Width="923px">
                              <asp:ListItem Value="1">1 Poor</asp:ListItem>
                              <asp:ListItem Value="2">2 Faulty</asp:ListItem>
                              <asp:ListItem Value="3">3 Okay</asp:ListItem>
                              <asp:ListItem Value="4">4 Good</asp:ListItem>
                              <asp:ListItem Value="5">5 Amazing</asp:ListItem>
                          </asp:DropDownList>
                <br />

                  
                          <asp:Button class="btn btn-primary btn-block mb-4" ID="btnTestSubmit" runat="server" Text="Submit" OnClick="btnTestSubmit_Click" Width="191px" />
              
                    
                          <asp:Label ID="lblTest" runat="server" Text=""></asp:Label>
          
              
        

             </div>
              
            

             

</asp:Content>
