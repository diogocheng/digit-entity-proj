<%@ Page Title="" Language="C#" MasterPageFile="~/backend.Master" AutoEventWireup="true" CodeBehind="adminpanel.aspx.cs" Inherits="WebApplication5.adminpanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
    <style>


        .cam-container {
    height: 70vh;
    width: 100%
}

.cam {
    margin: auto;
    width: 60%;
}

.cam-top {
}

.cam-cards1 {
    display: flex;
    justify-content: space-between;
}

.cam-cards2 {
    display: flex;
    justify-content: space-between;
}

.cards-cam {
    width: 260px;
    text-align: center;
}

    .cards-cam h4 {
        font-size: 20px;
    }

    .cards-cam p {
        font-size: 14px;
    }

    .cards-cam img {
        border-radius: 10px;
    }


    .cards-cam h4:hover {
        color: #C38F21;
    }

    .blankcontainer {
    background-color: white;
    height: 60px;
    z-index: -99;



}
    .thistext{

    width:80%;
    margin:auto;
    text-align:center;

}



.thistext h3 {
    color: black;
}




        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     
      <div class="blankcontainer "></div>

      <div class="blankcontainer "></div>


    <div class="thistext">

        <h3> Admin Panel </h3>
                                                            
    </div> 
     <div class="blankcontainer "></div>
     <div class="blankcontainer "></div>

     <div class=" cam-container">

        <div class=" cam">

            <div class=" cam-top">                                            
               

                <div class="cam-cards1">
                   
                    <div class="cards-cam">
                         <asp:ImageButton  src="images/1.png" ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" Height="246px" Width="240px" />
                
                           <h4> Customers  </h4>  
                       
                    </div>                                                                              <!--Here I used once again the flex box technique to insert boxes in one semetricly way.--> 
                    <div class="cards-cam">    
                         <asp:ImageButton  src="images/2.png" ID="ImageButton2" runat="server" OnClick="ImageButton2_Click" />
                
                           <h4> Subscriptions  </h4>  
                      
                    </div>
                    <div class="cards-cam">
                        <asp:ImageButton  src="images/3.png" ID="ImageButton3" runat="server" OnClick="ImageButton3_Click" />
                
                           <h4> Contact </h4>  
                  
                    </div>

                </div>                                                                                  <!--Also due to some situations the campaigns Arabia Saudi and Russin are in maintence    :D:D:D:D just try to check them       --> 
                                                                                                        <!--Theres is also one big wave which I managed to get, which is basically behind all the content been showed, basically what I did was putting the z-index of the image (wave) with z index negative, while the content is also with a z index positive or bigger than the wave z-index.--> 


            </div>
            <div class=" cam-bottom">
             
                <div class="cam-cards2">
                    <div class="cards-cam">
                 <asp:ImageButton  src="images/4.png" ID="ImageButton4" runat="server" OnClick="ImageButton4_Click" />
                
                           <h4> Testimonials  </h4>  
                   


                    </div>
                    <div class="cards-cam">
                        <asp:ImageButton  src="images/5.png" ID="ImageButton5" runat="server" OnClick="ImageButton5_Click" />
                
                           <h4> Analytics </h4>  


                    </div>
                    <div class="cards-cam">
                    <asp:ImageButton  src="images/6.png" ID="ImageButton6" runat="server" OnClick="ImageButton6_Click" />
                
                           <h4> Staff </h4>  
                 


                    </div>


                </div>



            </div>


        </div>

    </div>


</asp:Content>
