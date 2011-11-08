<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
                <r:layoutResources/>
		<g:layoutHead/>
	</head>
	<body>
                <div class="header">
                  <div id="grailsLogo"><a href="${createLink(uri: '/')}"><img src="images/logo.png" alt="" title="" width="162" height="54" border="0" /></a></div>

                  <div class="right_header">

                    <div class="top_menu">
                      <sec:ifLoggedIn>
                          <a class="login"><sec:username /></a>
                          <a class="login_out" href="${createLink(controller:'logout')}">salir</a>
                        </sec:ifLoggedIn>
                      <sec:ifNotLoggedIn>
                          <a href="${createLink(uri: '/login/auth')}" class="login">login</a>
                          <a href="#" class="sign_up">registro</a>
                      </sec:ifNotLoggedIn>
                    </div>

                    <div id="menu">
                      <ul>                                              
                        <li><a class="current" href="${createLink(uri: '/login/auth')}" title="">Inicio</a></li>
                        <li><a href="#" title="">Servicios</a></li>
                        <li><a href="#" title="">Acerca de...</a></li>
                        <li><a href="#" title="">Contactanos</a></li>
                      </ul>
                    </div>

                  </div>

                </div>
          
		<g:layoutBody/>
                  
                <div id="footer">
                    <div class="copyright">
                      <img src="images/footer_logo.gif" alt="" title="" />
                    </div>

                    <div class="center_footer">
                      &copy; Personal Health Record 2011
                    </div>
                </div>
                  
                  
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
                <r:layoutResources/>
		<g:javascript library="application"/>
	</body>
</html>