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
        height:5801px;
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
       <a href="/index.asp">
         <img src="/graphics/theBull.png" width="400" height="130">
       </a>
     </div>
     <div style="padding:12px;height:100px">
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
  <center>
    <div style="background-color:gray">
    <table>
      <tr>
        <td align="center">
    <div style="text-align:left">
<h1 style="color: Maroon; font-weight: bold">Posts</h1>
<BR>
<BR>
<BR>
<BR>
<%
dim cat
cat = "Dogs"

dim id
id = request("id")

dim title, text, user
user = session("userid")

sqlStr = "select * from Posts where id = " & id
set rs = cnn.execute(sqlStr)

dim categname, categid

if not rs.eof then
response.write rs("postedby") & "<BR/>"
response.write "wrote on " & rs("postdatetime") & "<BR/>"
set rs0 = cnn.execute("select c.categname, c.id from Posts p inner join categories c on c.id = p.categid where p.id = " & rs("id"))
if not rs0.eof then
categname = rs0("categname")
categid = rs0("id")
%>
<h2 style="color:#fcfcfc"><%=categname%></h2>
<%
end if
%>
<div style="background-color:blue;height:90px;border:1px solid black;color:#efefef;width:600px">
  <h3><%=rs("title")%></h3>
</div>
<div style="border:1px solid black;width:600px">
<div style="border:1px solid black;color:#ccc;min-height:100px;width:600px">
<%=rs("text")%>
</div>
</div>
<BR><BR><BR>
<%
sqlStr = "select * from Posts where subid = " & id
set rss = cnn.execute(sqlStr)
while not rss.eof
response.write rss("postedby") & "<BR/>"
response.write "wrote on " & rss("postdatetime") & "<BR/>"
set rs = cnn.execute("select c.categname from Posts p inner join categories c on c.id = p.categid where p.id = " & rss("id"))
if not rs.eof then
%>
<h2 style="color:#fcfcfc"><%=rs("categname")%></h2>
<div style="background-color:blue;border:1px solid black;color:#efefef;font-size:25px;width:600px">
  <h3><%=rss("title")%></h3>
</div>
<%
end if
%>
<div style="border:1px solid black;width:600px">
<div style="border:1px solid black;color:#ccc;min-height:101px;width:600px">
<%=rss("text")%>
</div>
</div>
<BR/><BR/><BR/>
<%
rss.movenext
wend
dim sqlStr1

title = replace(request("title"),"'","''")
text = replace(request("text"), "'","''")
user = session("userid")

if title <> "" and user <> "" then
  sqlStr1 = "insert into Posts (categid, subid, title, text, postdatetime, postedby) values ("&categid&", "& id &", '"&title&"', '"&text&"', getdate(), '"&user&"')"

  cnn.execute(sqlStr1)

  response.write "<font color='maroon'>submitted.</font>"

end if
%>
<br><br>
<br>
<br><div style="background-color:blue;border:1px solid black;color:#efefef;width:600px">
  Reply User
</div>
<div style="border:1px solid black;width:600px">
<div style="border:1px solid black;color:#ccc;width:600px">
<form action="" method="post">
<table>
<tr>
<td>&nbsp;</td>
<td>
title
</td>
<td>&nbsp;</td>
<td>
<input type="text" name="title" value='<%=title%>'>
<input type="hidden" name="id" value='<%=request("id")%>'>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
text
</td>
<td>&nbsp;</td>
<td>
<textarea name="text" style="width:400px;height:400px"></textarea>
</td>
<td>&nbsp;</td>
<td><input type="submit" value="submit">
<td>&nbsp;</td>
</td>
</tr>
</table>
</form>
<%
end if
%>
</div>
</td>
</tr>
</table>
</div>
  </center>
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