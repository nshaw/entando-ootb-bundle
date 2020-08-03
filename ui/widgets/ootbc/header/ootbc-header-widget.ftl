<#assign wp=JspTaglibs["/aps-core"]>
<script src="<@wp.resourceURL />ootbc-bundle/static/js/2.3b049955.chunk.js"></script>
<script src="<@wp.resourceURL />ootbc-bundle/static/js/main.3f90a792.chunk.js"></script>
<script src="<@wp.resourceURL />ootbc-bundle/static/js/runtime-main.b759d654.js"></script>
<link href="<@wp.resourceURL />ootbc-bundle/static/css/main.fbc3daf0.chunk.css" rel="stylesheet">
<#-- entando_resource_injection_point -->
<#-- Don't add anything above this line. The build scripts will automatically link the compiled JS and CSS for you and add them above this line so that the widget can be loaded-->

<#-- This is the custom element -->
<@wp.currentWidget param="config" configParam="logo" var="configLogo" />
<@wp.currentWidget param="config" configParam="tagline" var="configTagline" />
<@wp.currentWidget param="config" configParam="theme" var="configTheme" />
<@wp.currentWidget param="config" configParam="sideNavigation" var="configSideNavigation" />
<@wp.currentWidget param="config" configParam="icons" var="configIcons" />
<@wp.currentWidget param="config" configParam="menuItems" var="configMenuItems" />

<header-widget
  logo="${configLogo}"
  logoAction="<@wp.url page="homepage" />"
  tagline="${configTagline}"
  theme="${configTheme}"
  sideNavigation="${configSideNavigation}"
  icons="${configIcons}"
  menuItems="${configMenuItems}"
  action="<@wp.url />"
  imgUrl="<@wp.imgURL />"
/>
