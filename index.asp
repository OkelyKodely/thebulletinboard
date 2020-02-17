<html>
  <head>
	<link href="/inc/bootstrap.min.css" rel="stylesheet">    	<meta keywords="BBS, Forum, Web, Site">
    <meta description="The best BBS in the chaos">
    <script language="javascript">
    </script>
    <style>
	a {
		text-decoration:none;
		color:green;
	}
      h1 {color:red}
      .body {
        height:1300px;
        width:1000px;
        background-color:gray;
     		padding:10px; 
color:#fefefe;
	}
      .logo {
        text-align:center;
        width:1000px;
        color:red;
      }
    </style>
   </head>
   <body style="background-color:#888">
     <table align="center">
     <tr>
<td >&nbsp;</td>
<td bgcolor="#888">
     <div class="logo" style="height:130px;width:300px">
       <a href="/">
         <img src="/graphics/theBull.png" width="400" height="130">
       </a>
     </div>
     <div style="padding:12px;height:100px">
      <center>
      <a href="/convo.asp"><img src="/graphics/enter.png" width="110"></a> 
      <a href="/index.asp"><img src="/graphics/aboutus.png" width="110"></a> 
      <a href="/ours.asp"><img src="/graphics/history.png" width="110"></a> 
      <a href="/sharingcaring.asp"><img src="/graphics/caring.png" width="110"></a> 
      <a href="/whycare.asp"><img src="/graphics/whycare.png" width="110"></a>
      <a href="/register.asp"><img src="/graphics/register.png" width="110"></a>
      <a href="/logon.asp"><img src="/graphics/logon.png" width="110"></a>
      <a href="/signout.asp"><img src="/graphics/signout.png" width="110"></a><BR><BR>
      </center>
      <%
        Set cnn = Server.CreateObject("ADODB.Connection")
        cnn.open "PROVIDER=SQLOLEDB;DATABASE=TheBulletinBoardDotCom;DATA SOURCE=(local);User ID=sa;Password=coppersink21"

        dim userid, password
        userid = request("userid")
        password = request("password")
        dim sqlStr
        sqlStr = "select * from accounts where email = '"&userid&"' and passw3rd = '"&password&"'"
        set rs = cnn.execute(sqlStr)
        if userid <> "" then
          sqlStr = "select * from accounts where email = '"&userid&"' and passw3rd = '"&password&"'"
          set rs = cnn.execute(sqlStr)
          if not rs.eof then
            session("userid") = userid
          end if
        end if
      if session("userid") <> "" then
      %>
<%=session("userid")&", welcome."%>
<%
      else
      %>
      <form method="post" action="">
      <table>
        <tr>
        <Td style="font-size:11px">User ID:</td>
        <td> <input type="text" name="userid" style="width:120px;height:18px;border:1px solid white;background-color:gray;color:white;">
        </td>
      </tr>
      <tr>
        <td style="font-size:11px">
        Password:</td>
        <td><input type="text" name="password" style="width:120px;height:18px;border:1px solid white;background-color:gray;color:white;">
        </td>
      </tr>
      <tr>
        <td align=center colspan=2><input style="font-size:12px" type="submit" value="submit">
        </td>
      </tr>
    </table>
      </form>
      <%
      end if
%>
	</div>
     <div class="body">
<h1 style="color:red">Tell us what's wrong with this?</h1>
MERIT BEFORE THE OLD TESTAMENT AION<BR><BR>*Anti-Republicationism Alert! GUESS!#@!$!##$!!!#!#<BR><BR>We republicationers have a serious problem with gratia. We believe that merit is the be all or end all of theology. We think that in the Christian life without merit we are not going to be saved on the last day. We think that salvation is by works yes! However, we think that salvation is also something we do all the days of one’s life. We apply the Old Covenant dispensation to our lives as if we were doing God a service when we perform good deeds and good works. Good works accompany salvation and make us holier people. It transforms us into better individuals and we conform our lives into the image of the Son of God. However the buck many times stops there. We do apply Grace into our lives but we do not do enough good works that we can call our own on the last day. We think that the Covenant of Works was republished yes! But we don’t think about Christ and about his person and work. He was the prince of peace. He is the word made flesh. He is the Son of God. He is the word of God. He is the incarnate God made man. He is the the first order of creation. He is the head of the church. And he leads and guides us who are on our way to heaven from sinning to much on the one hand to not doing enough good works on the other. We in short who are republicationers do not apply sola gratia. Grace was always uniltaterally promised throughout the history of redemption yes! But we do not seem to apply the good news that Jesus’ person/work as a person work (a la Daniel Cho emphases mine) as if Terah, Lot, Enoch who walked with God did not merit good works that secured the second Adam’s saving grace to their lot. He did. And not only was there merit before the Old Covenant there was Jesus typed and shadowed (under Noah and the waters and the “boat”) for example. This was a sure sign that they did good works that prefigured the coming of the law and the works principle which equates to Substantial Republication. This is my view OPC. We must go further than this to call ourselves worthy of the title Christians who hold to inerrancy. We must apply and exegete verses between the time of Adam to Moses all those who were under the Covenant administration of Unilateral Grace that there was merit which must but also should have earned them a just & gracious (a la Daniel Cho emphases mine) reward. The first passage comes to us from the book of Genesis chapter 6:22 and it reads, “Thus Noah did; according to all that God commanded him, so he did”. What is Genesis talking about here. Is it saying Noah obeyed the Law of Moses? Or is it saying Moses put the animals in the great boat which God had instructed him to make and place the new creation in them with care and grace. This action of noah is nothing other than the merit being shown by Genesis that God wants us to be obeyers of God who earn the delight of God. This is not grace. It is not also however strict justice either, it is justice & grace combined (a la Daniel Cho emphases mine). The second passage comes to us from also the book of Genesis amidst God’s blessing of his unilateral act of condescension of his majestic grace at work in the administering of his unmatched grace is, Genesis 17:1,2, which reads, “When Abram was ninety-nine years old, the LORD appeared to Abram and said to him, I am Almighty God; walk before Me and be blameless. And I will make My covenant between Me and you, and will multiply you exceedingly.” Here we see that the Abrahamic covenant expects us not only to be blameless, but by being bleameless and walking with God to earn a just & gracious reward, then and only then God will bless you. It is not strict justice, but it is justice & grace (a la Daniel Cho emphases mine). When God tells Abraham promises him God will be the actor and make him a blessing possessing great number of sons and daughters in his future eschatologically speaking, he is eschatologically speaking that he is implying they will have to work hard and merit before God. This is not strict justice, this is works principle before the Old Covenant is inaugurated. This is not Moses however so the scheme or form is of works but the eseence and tautological pneuma is Grace. Also, Jacob, Isaac his father who is going blind, and Joseph the prince of Egypt out of which Israel will be formed in the eschatological future is merit principle (kinda like works but really gorks) is preparation to the inauguration of redemption and on mount Sinai then and only then the republication of the True works principle The Law of God and the 2nd Covenant of Works with sinners who cannot strictly speaking merit before God (a la Franics Turretin, no emphases his). 
<br><br><center>         <img src="/graphics/theBull.png" width="800" height="260"></center>
     </div>
<br><br><br>
<br><br><br>
</td>
</tr>
<tr>
<td />
<Td>
     <div style="color:green;text-align:center;height:122px;width:1000px;background-color:yellow">
       Copyright 2020 All Rights Reserved TheBulletinBoard.Com
     </div>
</td>
</tr>
</table>
   </body>
</html>