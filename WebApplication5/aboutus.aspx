<%@ Page Title="" Language="C#" MasterPageFile="~/frontend.Master" AutoEventWireup="true" CodeBehind="aboutus.aspx.cs" Inherits="WebApplication5.aboutus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
    <link href="style.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section>
        <div class="blankcontainer">
        </div>


        <div class="v-text">
            <h3> Our History</h3>
        </div>
        <div class="blankcontainer">
        </div>

        <div class="v-container">
                                                                        <!--Here I apllied the 80% technique again, and inserted on embeded video from youtube-->


            <iframe width="100%" height="600" src="https://www.youtube.com/embed/aK2Yb4qSJjI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

        </div>

        <div class="blankcontainer">
        </div>








        <div class="home2container">
            <div class="aboutus">
                <div class=" h2leftside">
                    <h3 style="color:black">
                        About our organization
                    </h3>
                    <p>
                        Inspired by real events, Good Deeds opened its doors in 2000 in UK, City of Manchester. Over the years, we have become a reliable and efficient charity foundation that works around the clock to improve the lives of those in need. Here, you can learn more about who we are and what we do.
                    </p>
                </div>
                <div class="h2rightside">
                    <img id="img1" src="vol1.jpg" alt="Alternate Text" />
                </div>
            </div>
            <div class=" cards-container">
                <div class=" cardtext">
                    <h3 style="color:black">
                        <!--To create all this boxes I opted to use the flex blox technique Which allows people to align things semetrically-->
                        What do we do?                                                            <!--https://www.youtube.com/watch?v=FTlczfR82mQ-->
                    </h3>
                    <p>Everything start with the will of making the difference</p>
                </div>
                <div class="cards">
                    <div id="card1" class="card">
                        <img id="imgad2" src="img1.jpg" alt="" />
                        <h4>  Combat the Hunger </h4>
                        <br />
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi semper mauris ac dolor rhoncus, ac aliquam dolor vestibulum. Curabitur fringilla augue non scelerisque accumsan. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus mollis tortor nec consequat imperdiet. Praesent quam massa, bibendum quis diam nec, vulputate interdum libero. Nulla sit amet finibus ante, sit amet porttitor nibh. Mauris lobortis tellus vel lorem egestas fermentum. Morbi tristique tempor nisl.</p>
                    </div>
                    <div id="card2" class="card">
                        <img id="imgad1" src="img2.jpg" alt="" />
                        <h4>  Fight against the Proverty</h4>
                        <br />
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi semper mauris ac dolor rhoncus, ac aliquam dolor vestibulum. Curabitur fringilla augue non scelerisque accumsan. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus mollis tortor nec consequat imperdiet. Praesent quam massa, bibendum quis diam nec, vulputate interdum libero. Nulla sit amet finibus ante, sit amet porttitor nibh. Mauris lobortis tellus vel lorem egestas fermentum. Morbi tristique tempor nisl.</p>
                    </div>
                    <div id="card" class="card">
                        <img id="imgad" src="img3.jpg" alt="" />
                        <h4>  Help Homeless People </h4>
                        <br />
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi semper mauris ac dolor rhoncus, ac aliquam dolor vestibulum. Curabitur fringilla augue non scelerisque accumsan. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus mollis tortor nec consequat imperdiet. Praesent quam massa, bibendum quis diam nec, vulputate interdum libero. Nulla sit amet finibus ante, sit amet porttitor nibh. Mauris lobortis tellus vel lorem egestas fermentum. Morbi tristique tempor nisl.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="blankcontainer">
        </div>
    </section>
    <section class=" map20">
        <div class=" map-container">
            <div class=" leftmap">
                <h3 style="color:black">Our Impact</h3>            <!--This technique was seen by me for a lot of coders which made me very interested on how they were customizing the content (https://www.w3schools.com/cssref/css3_pr_animation-keyframes.asp) In this cases I manage to get a pnj map, which has position relative, and to get the red points on the desired position I wrote position relative for each one of them with that I could chose the cordinates for each point relatively with the big image behind.-->  
                <h1> 6 countries and counting  </h1>                    <!--I really think that this feature is a feature which contains relevant content for the user--> 
                <br />
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque aliquet ut nulla vel ultrices. Quisque tincidunt diam eros. Fusce sodales mauris consequat, vestibulum urna id, posuere ex. Fusce tristique quis dolor ullamcorper finibus. Fusce varius massa justo, sit amet bibendum leo suscipit quis. Curabitur dictum arcu et maximus laoreet. Mauris, consectetur adipiscing elit. Quisque aliquet ut nulla vel.</p>
            </div>
            <div class="map">
                <img id="map" src="images/map.png">
                <span class="marker1"></span>
                <span class="marker2"></span>
                <span class="marker3"></span>
                <span class="marker4"></span>
                <span class="marker5"></span>
                <span class="marker6"></span>
            </div>
        </div>
    </section>
    <div class="blankcontainer">
    </div>

   

</asp:Content>
