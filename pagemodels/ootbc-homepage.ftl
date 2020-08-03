<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>
            <@wp.currentPage param="title" /> - <@wp.i18n key="SALES_DEMO" />
        </title>
        <meta name="viewport" content="width=device-width,  user-scalable=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link rel="icon" href="<@wp.info key="systemParam" paramName="applicationBaseURL" />favicon.png" type="image/png" />
        <link rel="stylesheet" href="<@wp.resourceURL />ootbc-bundle/static/css/ootbc.css" rel="stylesheet">

        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
    </head>
    <body>
        <div class="header">
            <@wp.show frame=0 />
        </div>
        <div class="page__body">
            <@wp.show frame=1 />
            <@wp.show frame=2 />
            <@wp.show frame=3 />
            <@wp.show frame=4 />
            <@wp.show frame=5 />
        </div>
        <div class="page__footer">
            <@wp.show frame=6 />
        </div>
  </body>
</html>
