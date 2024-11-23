<%@ Page Title="" Language="C#" MasterPageFile="~/frontend.Master" AutoEventWireup="true" CodeBehind="contacts.aspx.cs" Inherits="WebApplication5.contacts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
     <link href="https://fonts.googleapis.com/css?family=Crimson+Text|Work+Sans:400,700" rel="stylesheet">
    <script src="https://kit.fontawesome.com/c824a31966.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">

    
    <style>

        

.contact11 {
    position: relative;
    min-height: 100vh;
    padding: 50px 100px;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    background: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url(/images/b1.jpg);
    background-size: cover;
}

    .contact11 .content {
        max-width: 1200px;
        text-align: center;
        margin-bottom:50px;

    }

        .contact11 .content h2 {
            font-size: 50px;
            font-weight: 500;
            color: #fff;
            margin-bottom:10px;
            

        }

        .contact11 .content p {
            font-size: 20px;
            font-weight: 300;
            color: #fff;
        }
        
        

.contact-container {
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 30px;
}

    .contact-container .contact-info {
        width: 50%;
        display: flex;
        flex-direction: column;
    }

        .contact-container .contact-info .contact-box {
            position: relative;
            padding: 20px 0;
            display: flex;
        }

            .contact-container .contact-info .contact-box .icon {
                min-width: 60px;
                height: 60px;
                background: #fff;
                display: flex;
                justify-content: center;
                align-items: center;
                border-radius: 50%;
                font-size: 22px;
            }

            .contact-container .contact-info .contact-box .contact-text {
                display: flex;
                margin: 10px;
                
                font-size: 16px;
                color: #fff;
                flex-direction: column;
                font-weight: 300;
            }

            .contact-container .contact-info .contact-box .contact-text h3 {
                font-weight: 500;
                color: #00bcd4;
                font-size:24px;
            }
            .contact-container .contact-info .contact-box .contact-text a {
                font-weight: 300;
                color:white;
                
                text-decoration:none;
            }
                .contact-container .contact-info .contact-box .contact-text a:hover {
                    font-weight: 300;
                    color: #00bcd4;
                    text-decoration: none;
                }

.contact-form {
    width: 35%;
    height:60vh;
    padding: 40px;
    background: #fff;
    
}

    .contact-form h2 {
        font-size: 30px;
        color: #333;
        font-weight: 500;
        margin-bottom:40px;
    }

        .auto-style1 {
            width: 45%;
            height: 60vh;
            padding: 40px;
            background: #fff;
        }

        .auto-style3 {
            height: 21px;
            text-align: center;
        }

        .auto-style4 {
            text-align: center;
        }

        .auto-style5 {
            height: 21px;
        }
        .auto-style6 {
            text-align: center;
            height: 27px;
        }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    
        <section class=" contact11">
            <div class=" content">
                <h2> Contact Us</h2>
                <p>Lorem ipsum dolor sit amet, ctetur adipiscing elit. Morbi vel felis at odio consesum dolor sit amet, ctetur adipiscing elit. Morbi velsum dolor sit amet, ctetur adipiscing elit. Morbi velsum dolor sit amet, ctetur adipiscing elit. Morbi velquat semper a non ex. Aliquam placerat eros a mi mollis, eget ultricies urna blandit. Nullam malesuada lorem non aliqua. </p>


            </div>
            <div class=" contact-container">
                <div class=" contact-info">
                    <div class="contact-box ">
                        <div class="icon"> <i class="fas fa-map-marker-alt"></i> </div>
                        <div class=" contact-text">
                            <h3>Address</h3>
                            <a href="https://www.google.pt/maps/place/Manchester,+Reino+Unido/@53.4723272,-2.2935021,12z/data=!3m1!4b1!4m5!3m4!1s0x487a4d4c5226f5db:0xd9be143804fe6baa!8m2!3d53.4807593!4d-2.2426305">Manchester,<br /> Oxford Road, N21564</a>
                        </div>

                    </div>
                    <div class="contact-box ">
                        <div class="icon"> <i class="fas fa-phone"></i></div>
                        <div class=" contact-text">
                            <h3>Phone</h3>
                            <a href="tel:+351968155567">+351968155568</a>
                        </div>

                    </div>
                    <div class="contact-box ">
                        <div class="icon"><i class="fas fa-envelope"></i> </div>
                        <div class=" contact-text">
                            <h3>Email</h3>
                            <a href="mailto:diogocheng21@gmail.com">diogocheng21@gmail.com</a>
                        </div>

                    </div>

                </div>

                <div class="auto-style1">
                    <form>
                        <h2 class="auto-style4"> Send Message </h2>
                        <p class="auto-style4"> &nbsp;</p>
                        <p class="auto-style4"> 
                            <asp:Label ID="lblC" runat="server"></asp:Label>
                        </p>
                      

                        <table style="width: 100%;">
                            <tr>
                                <td>
                                    <asp:Label class="form-label" ID="Label1" runat="server" Text="Your Name "></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:TextBox class="form-control" ID="cName" runat="server" Width="164px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label class="form-label" ID="Label2" runat="server" Text="Subject"></asp:Label>
                                </td>
                            </tr>
                              <tr>
                                <td>
                                    <asp:DropDownList class="form-control" ID="Cddl" runat="server"  DataTextField="TypeName" DataValueField="TypeName" Width="168px" DataSourceID="SqlDataSource1" >
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shopConnectionString %>" SelectCommand="SELECT [TypeName] FROM [Contact]"></asp:SqlDataSource>
                                  </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    <asp:Label class="form-label" ID="Label3" runat="server" Text="Email" EnableViewState="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">
                                    <asp:TextBox class="form-control" ID="cEmail" runat="server" TextMode="Email" Width="164px"></asp:TextBox>
                                </td>
                            </tr>
                              <tr>
                                <td class="auto-style5">
                                    <asp:Label class="form-label" ID="Label4" runat="server" Text="Message"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <div class="auto-style4">
                                    <asp:TextBox class="form-control" ID="cMessage" runat="server" Height="106px" TextMode="MultiLine" Width="257px"></asp:TextBox>
                                    </div>
                                &nbsp;</td>
                            </tr>
                             <tr>
                                <td class="auto-style5">
                                    <asp:Button class="btn btn-primary btn-block mb-4" ID="btnSubmit" runat="server"  Text="Submit Message" OnClick="btnSubmit_Click"  />
                                </td>
                            </tr>
                        </table>





                    </form>


                </div>

            </div>




        </section>


</asp:Content>
