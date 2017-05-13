<%@ Page Language="C#"  Inherits="System.Web.Mvc.ViewPage"  %>
<%--MasterPageFile="~/Site1.Master"--%>

<%--<asp:Content ID="homeHead" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="homeBody" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"></asp:Content>--%>

<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/angular_material/1.1.0/angular-material.min.css">
<link rel="stylesheet" href="Content\Site.css">

<script src="/Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>

<%--<script src="/Scripts/angular.min.js" type="text/javascript"></script>--%>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular-animate.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular-aria.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular-messages.min.js"></script>

<!-- Angular Material Library -->
<script src="http://ajax.googleapis.com/ajax/libs/angular_material/1.1.0/angular-material.min.js"></script>

<script src="Content\Global\js\ng-phone-selector.js"></script>
<script>
    function sendEmail() {
        $.ajax({
            type: "POST",
            url: 'http://localhost/Home/',
            data: { emailTo: 'efriedman92@gmail.com', name: 'Eli'}
        });
    }
</script>

 

<head>
    <title></title>
</head>
    
<body>
    <%--<script type="text/javascript">    
    /**
     * You must include the dependency on 'ngMaterial' 
     */
    angular.module('ngPhoneSelector', ['ngMaterial']);
  </script>--%>
   <%-- <div style='position: absolute; z-index: -1; left: 0; top: 0; width: 100%; height: 400px'>
        <img src='\Content\Global\hd-wallpapers-image-16.jpg' style='width: 100%; height: 100%' alt='[]' />
    </div>--%>

    <div ng-app="ngPhoneSelector">
        <div class="home-top">

            <md-input-container>
             <%-- <label>Color</label>--%>
              <input type="text" ng-model="zip" required maxlength="5" placeholder="Your Zip Code">
            </md-input-container>
            <div ng-click="sendEmail()">
           <%-- <div ng-repeat="n in [42, 42, 43, 43] track by $index">
                {{n}}
            </div>--%>
            </div>


        </div>
    </div>
</body>
