<%@ Page Title="" Language="C#" MasterPageFile="~/frontend.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplication5.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

          
#logo {
    font-family: 'Crimson Text', serif;
    text-shadow: 5px;
    margin-top: 30px;
}


.homeul {
    text-decoration: underline;
    padding-bottom: 2px;
}

.nav-container {
    background-color: white ;
    min-height: 10vh;
    position: sticky;
    top: 0;
    z-index: 100000;
}

.navi {
    height: 10%;
    width: 80%;
    margin: auto;
    display: flex;
    align-items: center;
    justify-content: space-between;
    align-content: center;
   
}

    .navi ul {
        display: flex;
        align-items: center;
        margin-top: 22px;
    }

    .navi li {
        margin: 10px;
    }

    .navi a{

        color:black;
    }

.image-container {
    min-height: 90vh;
    background-color: white;
}


.home {
    
    background-size: cover;
    background-image: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url(/images/b1.jpg);
    height: 90vh;
    width:100%;
    margin: auto;
    justify-content: center;
    align-items: center;
    display: grid;
    grid-template-columns: 1fr 2fr 1fr;
    grid-template-rows: repeat(6, 1fr);
}

.image{

    height:60%
}

    .home h2 {
        grid-column: 2/3;
        grid-row: 2/3;
        justify-self: center;
        color: white;
        text-transform: uppercase;
    }

    .home h3 {
        grid-column: 2/3;
        grid-row: 3/4;
        justify-self: center;
        
        color: white;
    }



.btw {
    grid-column: 2/3;
    grid-row: 4/5;
    justify-self: center;
    align-items: center;
    justify-content: space-between;
}

    .btw a {
        width: 150px;
        text-decoration: none;
        padding: 14px 24px;
        color: white;
        border: 0.5px solid white;
        font-size: 1.5rem;
    }

.blankcontainer {
    background-color: white;
    height: 60px;
    z-index: -99;
}



.home2container {
    height: 112vh;
    width: 80%;
    margin: auto;
}
.aboutus{


    background-color:white;
    height:25%;
    display:flex;
    justify-content:space-between;
    margin-bottom:10px;
    
}

section{

    z-index:-100;
}



.h2leftside{
   
    width:50%;
    background-color: rgb(212, 237, 49);
    height:100%;
    margin-right:10px;
    align-self:center;
    align-items:center;
    align-content:center;
    text-align:center;
    justify-content:center;
    justify-items:center;
    justify-self:center;
    display:grid;
    grid-template-rows:1fr 1fr 1fr 1fr 1fr 1fr;
    
}


.h2leftside h3{

    font-size:40px;
    grid-row:3/4;


}

.h2leftside p{

    font-size:15px;
    grid-row:4/5;
    margin-left:40px;
    margin-right:40px;

}



.h2rightside {

    margin-left:10px;
     width:50%



}



#img1{

    width:100%;
    height:100%;

}

.cards-container{

    display:flex;
    flex-direction:column;

}
.cardtext{

    justify-content:center;
    text-align:center;
    margin-top:30px;
    margin-bottom:60px;
    
}



.cards{

    display:flex;
    justify-content:space-between  ;
}
.card {
    justify-content: center;
    object-fit: cover;
    text-align: center;
    color: white;
    width: 480px;

}
.card h4{
    color:white;
    margin-top:50px;
}
    .card p {
        margin-left: 30px;
        margin-right : 30px;
        margin-bottom:40px;
    }

#imgad {
    width: 480px;
    height: 300px;
}
#imgad1 {
    width: 480px;
    height: 300px;
}
#imgad2 {
    width: 480px;
    height: 300px;
}
.cards h4{

    font-size:40px;
}
.cards p{

    font-size:15px;
}
#card1{
    background-color:black;


}
#card2 {
    background-color:#DB7B40;

}
#card {
    background-color: #008B8B;
}

.fot {
    
    height: 40vh;
    background-color: #494849;
}
.topl h4 {
    font-size: 25px;
}
.topl p{

    font-size:12px;

}
.topm h4 {
    font-size: 25px;
}
.topm p {
    font-size: 12px;
}
.topr h4 {
    font-size: 25px;
}
.topr a {
    font-size: 12px;
}
.ftop{
  display:flex;
  text-align:center;
  justify-content:space-between;
  display:grid;
  grid-template-columns:1fr 1fr 1fr 1fr 1fr 1fr 1fr;
  background-color:#494849;
  padding:40px;
}


.topr{
    grid-column :6/7;


}
.topm{
     
    grid-column:4/5;
}
.topl {
    grid-column: 2/3;
}
#email {
    padding: 12px 18px;
}
.btw1 {
    width: 150px;
    text-decoration: none;
    padding: 12px 18px;
    color: white;
    border: 0.5px solid #ffc414;
    font-size: 12px;
    align-self: center;
    margin: auto;
}
.btw1 a{

    color:#ffc414;

}



.midtext{
    text-align:center;
    justify-content:space-between;
}
.topr{


}
.fmiddle {
    background-color: #494849;
    text-align: center;
    justify-content: center;
    padding:30px;
}
    .fmiddle h1 {
        font-size: 20px;
    }

.fmiddle p {

     font-size:12px;
     padding:20px;
}
.fmiddle img {



}
.fbottom{

    text-align:center;
    padding:10px;
    background-color:#343334;

   
}

    .fbottom p {
        font-size: 18px;
       
    }



hr {
    height: 2px;
    background-color: #000000;
    border: none;
}



.listwlogos{

    text-align:left;
    margin:auto
}
.logos a {

    margin-top:20px;
    margin-left:5px;
    margin-right:5px;
}

.fot h4 {
    color: #ffc414;
}
.fot p {
    color: white;
}
.fot h {
    color: #ffc414;
}
.fot h1 {
    color: #ffc414;
}
.fot a {
    color: white;
}
    .fot a:hover {
        color: #ffc414;
    }



        .box1-c

{
    background-color: white;
}

.box1 {
    display: grid;
    grid-template-columns: 1fr 1fr;
    background-size: cover;
    background-image: url(/images/b2.jpg);
    width: 65%;
    margin: auto;
    height: 42vh;
}

.box1l {
    display: flex;
    flex-direction: column;
    justify-content: space-around;
    background-image: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5));
}

.box1r {
}

.box1 h3 {
    font-size: 30px;
    color: white;
    grid-column: 2/3;
    grid-row: 1/2;
    padding-left: 20px;
}

.box1 p {
    font-size: 15px;
    color: white;
    text-align: justify;
    justify-content: center;
    grid-column: 4/5;
    grid-row: 1/2;
    padding-left: 20px;
    padding-right: 20px;
}

.box1 a {
    width: 150px;
    text-decoration: none;
    padding: 14px 24px;
    color: white;
    border: 0.5px solid white;
    font-size: 1.5rem;
    justify-self: center;
}

.btwcontainer {
    padding-left: 20px;
}



.box2-c {
    background-color: white;
}

.box2 {
    display: grid;
    grid-template-columns: 1fr 1fr;
    background-size: cover;
    background-image: url(/images/b3.jpg);
    width: 65%;
    margin: auto;
    height: 42vh;
}

.box2r {
    display: flex;
    flex-direction: column;
    justify-content: space-around;
    background-image: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5));
}

.box2l {
}

.box2 h3 {
    font-size: 30px;
    color: white;
    grid-column: 2/3;
    grid-row: 1/2;
    padding-left: 20px;
}

.box2 p {
    font-size: 15px;
    color: white;
    text-align: justify;
    justify-content: center;
    grid-column: 4/5;
    grid-row: 1/2;
    padding-left: 20px;
    padding-right: 20px;
}

.box2 a {
    width: 150px;
    text-decoration: none;
    padding: 14px 24px;
    color: white;
    border: 0.5px solid white;
    font-size: 1.5rem;
    justify-self: center;
}





.box3-c {
    background-color: white;
}

.box3 {
    display: grid;
    grid-template-columns: 1fr 1fr;
    background-size: cover;
    background-image: url(/images/b4.jpg);
    width: 65%;
    margin: auto;
    height: 42vh;
}

.box3l {
    display: flex;
    flex-direction: column;
    justify-content: space-around;
    background-image: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5));
}

.box3r {
}

.box3 h3 {
    font-size: 30px;
    color: white;
    grid-column: 2/3;
    grid-row: 1/2;
    padding-left: 20px;
}

.box3 p {
    font-size: 15px;
    color: white;
    text-align: justify;
    justify-content: center;
    grid-column: 4/5;
    grid-row: 1/2;
    padding-left: 20px;
    padding-right: 20px;
}

.box3 a {
    width: 150px;
    text-decoration: none;
    padding: 14px 24px;
    color: white;
    border: 0.5px solid white;
    font-size: 1.5rem;
    justify-self: center;
}


.box4-c {
    background-color: white;
}

.box4 {
    display: grid;
    grid-template-columns: 1fr 1fr;
    background-size: cover;
    background-image: url(/images/b5.jpg);
    width: 65%;
    margin: auto;
    height: 42vh;
}

.box4r {
    display: flex;
    flex-direction: column;
    justify-content: space-around;
    background-image: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5));
}

.box4l {
}

.box4 h3 {
    font-size: 30px;
    color: white;
    grid-column: 2/3;
    grid-row: 1/2;
    padding-left: 20px;
}

.box4 p {
    font-size: 15px;
    color: white;
    text-align: justify;
    justify-content: center;
    grid-column: 4/5;
    grid-row: 1/2;
    padding-left: 20px;
    padding-right: 20px;
}

.box4 a {
    width: 150px;
    text-decoration: none;
    padding: 14px 24px;
    color: white;
    border: 0.5px solid white;
    font-size: 1.5rem;
    justify-self: center;
}

.btn1{
      background-color: transparent;


}

.button4 {
  background-color: white;
  color: black;
  border: 2px solid #e7e7e7;
}

.button4:hover {background-color: #e7e7e7;}


<!-- HTML !-->
<button class="button-57" role="button"><span class="text">Button 57</span><span>Alternate text</span></button>

/* CSS */
.button-57 {
  position: relative;
  overflow: hidden;
  border: 1px solid #18181a;
  color: #18181a;
  display: inline-block;
  font-size: 15px;
  line-height: 15px;
  padding: 18px 18px 17px;
  text-decoration: none;
  cursor: pointer;
  background: #fff;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
}

.button-57 span:first-child {
  position: relative;
  transition: color 600ms cubic-bezier(0.48, 0, 0.12, 1);
  z-index: 10;
}

.button-57 span:last-child {
  color: white;
  display: block;
  position: absolute;
  bottom: 0;
  transition: all 500ms cubic-bezier(0.48, 0, 0.12, 1);
  z-index: 100;
  opacity: 0;
  top: 50%;
  left: 50%;
  transform: translateY(225%) translateX(-50%);
  height: 14px;
  line-height: 13px;
}

.button-57:after {
  content: "";
  position: absolute;
  bottom: -50%;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: black;
  transform-origin: bottom center;
  transition: transform 600ms cubic-bezier(0.48, 0, 0.12, 1);
  transform: skewY(9.3deg) scaleY(0);
  z-index: 50;
}

.button-57:hover:after {
  transform-origin: bottom center;
  transform: skewY(9.3deg) scaleY(2);
}

.button-57:hover span:last-child {
  transform: translateX(-50%) translateY(-100%);
  opacity: 1;
  transition: all 900ms cubic-bezier(0.48, 0, 0.12, 1);
}

        .auto-style1 {
            width: 70%;
            height: 434px;
        }
        .auto-style2 {
            text-align: center;
        }

      </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
   <section>
      
        <div class="image">
            <div class="home">
                <h2>Digit Entity</h2>
                <h3> Creating a brighter tommorow  </h3>    
                                                 <!--On the big image I opted to chose the grid technique which allowed me to create several rows and to chose which content would be insert in each one of them--> 
                <div class="btw">  
                    <!--To be honest this was a experiment, with all the techniques which I used in this work I would make this div with way less work than grid maybe with the flex technique.--> 
                                        <asp:Button class="btn btn-outline-secondary"  ID="btn4" runat="server" Text="Start Now" Width="181px" OnClick="btn4_Click" Height="57px" />
                 

                    

                </div>
            </div>
        </div>
        <div class="blankcontainer">
        </div>


        <div class="box2-c ">                                              <!--These boxes gives the user the opportunity to navigate easier and better trought the features of the website.--> 
            <div class="box2">                            <!--So comming to the boxes, as you can see there is that technique, with 60%, inside each container there is 3 divisions 1 big div and 2 divs inside the big one. to identify the 2 divs I wrote left and right.-->  
                <div class=" box2l">                      <!--To have a linear gradient to the image, in just one of the sides, I simply chose one image for the big div and opted to insert the linear gradient either on the left or on the right side div -->
                </div>
                <div class="box2r">
                    <h3>My Account</h3>
                    <p>
                        Most of the world’s poor share three traits: they live in rural areas, rely on agriculture and forests to survive, and don’t have legal control over the land on which they depend. We can help them escape this poverty trap. Stronger rights to land have the power to reduce poverty and conflict, increase economic activity, empower women, strengthen food security, and improve environmental stewardship — for an individual, a family, a community, and an entire country.
                    </p>
                    <div class="btwcontainer">
                                               <asp:Button class="btn btn-outline-secondary"  ID="btn" runat="server" Text="View More" Width="114px" OnClick="btn_Click" />
                 

                    
                    </div>
                </div>
            </div>
        </div>
        <div class="blankcontainer">
        </div>
        <div class="box3-c">
            <div class="box3">
                <div class="box3l">
                    <h3>Our Services</h3>
                    <p>
                        Most of the world’s poor share three traits: they live in rural areas, rely on agriculture and forests to survive, and don’t have legal control over the land on which they depend. We can help them escape this poverty trap. Stronger rights to land have the power to reduce poverty and conflict, increase economic activity, empower women, strengthen food security, and improve environmental stewardship — for an individual, a family, a community, and an entire country.
                    </p>
                    <div class="btwcontainer">
                                              <asp:Button class="btn btn-outline-secondary"  ID="btn3" runat="server" Text="View More" Width="114px" OnClick="btn3_Click" />
                 

                    
                    </div>
                </div>
                <div class=" box3r">
                </div>
            </div>
        </div>
        <div class="blankcontainer">
        </div>
        <div class="box4-c">
            <div class="box4">
                <div class=" box4l">
                </div>
                <div class="box4r">
                    <h3>Testimonials</h3>
                    <p>
                        Most of the world’s poor share three traits: they live in rural areas, rely on agriculture and forests to survive, and don’t have legal control over the land on which they depend. We can help them escape this poverty trap. Stronger rights to land have the power to reduce poverty and conflict, increase economic activity, empower women, strengthen food security, and improve environmental stewardship — for an individual, a family, a community, and an entire country.
                    </p>
                    <div class="btwcontainer">
                        <asp:Button class="btn btn-outline-secondary"  ID="btn2" runat="server" Text="View More" Width="114px" OnClick="btn2_Click"  />
                 

                    
                    </div>
                </div>
            </div>
        </div>

        <div class="blankcontainer">
        </div>

        <div class="box1-c">
            <div class="box1">
                <div class="box1l">
                    <h3>Contact US</h3>
                    <p>
                        Most of the world’s poor share three traits: they live in rural areas, rely on agriculture and forests to survive, and don’t have legal control over the land on which they depend. We can help them escape this poverty trap. Stronger rights to land have the power to reduce poverty and conflict, increase economic activity, empower women, strengthen food security, and improve environmental stewardship — for an individual, a family, a community, and an entire country.
                    </p>
                    <div class="btwcontainer">
                        <asp:Button class="btn btn-outline-secondary"  ID="btn1" runat="server" Text="View More" Width="114px" OnClick="btn1_Click"  />
                 

                    </div>
                </div>
                <div class=" box1r">
                </div>
            </div>
        </div>

           <div class="blankcontainer">
        </div>
           <div class="blankcontainer">
        </div>

          <div class="v-text">
            <h1 class="auto-style2"> Our History</h1>
        </div>
        <div class="blankcontainer">
        </div>

        <div class="auto-style2">
                                                                        <!--Here I apllied the 80% technique again, and inserted on embeded video from youtube-->


            <iframe src="https://www.youtube.com/embed/aK2Yb4qSJjI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen class="auto-style1"></iframe>

        </div>





        <div class="blankcontainer">
        </div>
    </section>
    

 

</asp:Content>
