<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta name="layout" content="main"></meta>
    <title>Personal Healt</title>
    
  </head>

  <body>
    <div>


      <div id="middle_box">
        <div class="middle_box_content">
          
            <h1>Bienvenido</h1>
            
              <h1>Controller Activos:</h1>
              <ul>
                <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                  <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
                </g:each>
              </ul>
            
       
        </div>
      </div>


      <div class="pattern_bg">
        <div class="pattern_box">
            <div class="pattern_box_icon"><img src="images/icon1.png" alt="" title="" width="70" height="112" /></div>
            <div class="pattern_content">
            <h1>Tu <span class="blue">Portal de Salud</span></h1>
            <p class="pat">
            Un grupo desinterasado para crear tu Personal Healt Record
            </p>
            </div>
        </div>
        
        
    	<div class="pattern_box">
            <div class="pattern_box_icon"><img src="images/icon2.png" alt="" title="" width="70" height="112" /></div>
            <div class="pattern_content">
            <h1>Search <span class="blue"> Treatments</span></h1>
            <p class="pat">
            Lorem ipsum dolor sit amet, consectetur adipisicing elit,
            </p>
            </div>
        </div>
      </div>

    </div>
  </body>
</html>
