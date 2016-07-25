<%@ page language="java" pageEncoding="UTF-8"%>  
<link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">  
window.onload=reloadVerifyCode;
function reloadVerifyCode(){  
    document.getElementById('verifyCodeImage').setAttribute('src', '${pageContext.request.contextPath}/security/getVerifyCodeImage');  
}  
 
</script>  
  
<div class="main">
  <div class="denglu">
    <div class="text" style="font-size:13px;"><strong>重要提示：</strong><br />
    1、SSM测试版本，包含Redis、序列化等。
    </div>
    <div class="dlk">
    <form action="<%=request.getContextPath()%>/security/login" method="POST">  
      <table width="292" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="76" colspan="3"></td>
        </tr>
        <tr>
          <td width="65" style="font-size:14px;">姓名：</td>
          <td colspan="2"><input name="username" type="text" class="dlinput" /></td>
        </tr>
        <tr>
          <td height="16" colspan="3"></td>
        </tr>
        <tr>
          <td>密码：</td>
          <td colspan="2"><input name="password" type="text" class="dlinput" /></td>
        </tr>
        <tr>
          <td height="16" colspan="3"></td>
        </tr>
        <tr>
          <td>验证码</td>
          <td width="100"><input name="verifyCode" type="text" class="dlinput" style="width:90px;" maxlength="4" /></td>
          <td width="127"><img src="<%=request.getContextPath()%>/mydemo/getVerifyCodeImage" width="98" height="27" id="verifyCodeImage" onclick="reloadVerifyCode()" /></td>
        </tr>
        <tr>
          <td height="16" colspan="3"><div style="color:red; font-size:15px;">${message_login}</div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td colspan="2"><input type="submit" value="登 录" class="loginbtn" /></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td colspan="2"><table width="224" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <!-- <td height="24"><a href="#none" class="mm">忘记登录密码？</a></td> -->
            <!--   <td align="right"><a href="#none" class="zc" style="font-size:13px;">立即网上注册</a></td> -->
            </tr>
          </table></td>
        </tr>
      </table>
      </form>
    </div>
  </div>
</div>