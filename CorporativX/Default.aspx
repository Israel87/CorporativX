<%@ Page Title="Login" Language="C#" MasterPageFile="~/Landing.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CorporativX._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <main>
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-6 login-section-wrapper">
          <div class="brand-wrapper">
            <img src="Content/assets/img/logo.svg" alt="logo" class="logo">
          </div>
          <div class="login-wrapper my-auto">
            <h1 class="login-title">Log in</h1>
            <form action="" runat="server">
              <div class="form-group">
                <label for="email">Email</label>
                <input type="email" name="email" id="email" runat="server" class="form-control" placeholder="email@example.com">
              </div>
              <div class="form-group mb-4">
                <label for="password">Password</label>
                <input type="password" name="password" id="password" runat="server" class="form-control" placeholder="enter your passsword">
              </div>
          <%--    <input name="login" id="login" class="btn btn-block login-btn" runat="server" type="button" value="Login">--%>
                <asp:LinkButton CssClass="btn login-btn btn-block" ID="submit" OnClick="submit_Click" runat="server"><strong>Login</strong></asp:LinkButton>

            </form>
            <a href="#!" class="forgot-password-link">Forgot password?</a>
            <p class="login-wrapper-footer-text">Don't have an account? <a href="#!" class="text-reset">Register Admin</a></p>
          </div>
        </div>
        <div class="col-sm-6 px-0 d-none d-sm-block">
          <img src="Content/assets/img/login.jpg" alt="login image" style="background-size:100% 100%;" class="login-img">
        </div>
      </div>
    </div>
  </main>
</asp:Content>
