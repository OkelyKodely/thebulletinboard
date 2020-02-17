<html>
  <head>
	<link href="/inc/bootstrap.min.css" rel="stylesheet">    	<meta keywords="BBS, Forum, Web, Site, Caring">
    <meta description="The best BBS in the chaos, why care?">
    <meta encoding="utf-8">
    <script language="javascript">
    </script>
    <style>
	a {
		text-decoration:none;
		color:green;
	}
      h1 {color:red}
      .body {
        height:800px;
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
     <div style="padding:12px;height:100x">
      <center>
      <a href="/convo.asp"><img src="/graphics/enter.png" width="110"></a> | 
      <a href="/index.asp"><img src="/graphics/aboutus.png" width="110"></a> | 
      <a href="/ours.asp"><img src="/graphics/history.png" width="110"></a> | 
      <a href="/sharingcaring.asp"><img src="/graphics/caring.png" width="110"></a> | 
      <a href="/whycare.asp"><img src="/graphics/whycare.png" width="110"></a> |
      <a href="/register.asp"><img src="/graphics/register.png" width="110"></a> |
      <a href="/logon.asp"><img src="/graphics/logon.png" width="110"></a> | 
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
  <div style="background-color:gray">
<h1 style="color:#cfcfcf">Posts</h1>
<BR>
<%
dim cat
cat = "Dogs"

dim id
id = request("cid")

dim categname

dim title, text, user

sqlStr = "select p.*, (select count(a.id) from posts a where a.subid = p.id)+1 as cnt, c.categname from Posts p inner join Categories c on c.id = p.categid where p.subid is null and p.categid = " & id
set rst = cnn.execute(sqlStr)

if not rst.eof then
  categname = rst("categname")
end if
%>
<h2 style="color:#fcfcfc"><%=categname%></h2>
<div style="background-color:blue;border:1px solid black;color:#efefef;width:500px">
  Posts
</div>
<div style="border:1px solid black;width:500px">
<%
while not rst.eof
%>
<div style="border:1px solid black;color:#ccc;width:500px">
  <A HREF="view.asp?id=<%=rst("id")%>" style="color:#111;font-size:25px"><%=rst("title")%></A> (<%=rst("cnt")%>)
</div>
<%
rst.movenext
wend

cnn.close
%>
</div>
</div>
<BR><BR>
<DIV STYLE="COLOR:GRAY">
<a href="createnewpost.asp"><img src="/graphics/newpost.png"></a>
</div>
</td>
</tr>
<tr>
<td height="100" />
</tr>
<tr>
<td />
<td>
     <div style="color:green;text-align:center;height:122px;width:1000px;background-color:yellow">
       Copyright 2020 All Rights Reserved TheBulletinBoard.Com
     </div>
</td>
</tr>
</table>
   </body>
</html>