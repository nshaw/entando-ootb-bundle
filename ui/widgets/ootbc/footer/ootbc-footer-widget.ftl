<#assign wp=JspTaglibs["/aps-core"]>
<@wp.currentWidget param="config" configParam="copyright" var="configCopyright" />
<@wp.currentWidget param="config" configParam="theme" var="configTheme" />

<@wp.currentWidget param="config" configParam="linkSocial1" var="configLinkSocial1" />
<@wp.currentWidget param="config" configParam="social1" var="configSocial1" />
<@wp.currentWidget param="config" configParam="linkSocial2" var="configLinkSocial2" />
<@wp.currentWidget param="config" configParam="social2" var="configSocial2" />
<@wp.currentWidget param="config" configParam="linkSocial3" var="configLinkSocial3" />
<@wp.currentWidget param="config" configParam="social3" var="configSocial3" />
<@wp.currentWidget param="config" configParam="linkSocial4" var="configLinkSocial4" />
<@wp.currentWidget param="config" configParam="social4" var="configSocial4" />
<@wp.currentWidget param="config" configParam="linkSocial5" var="configLinkSocial5" />
<@wp.currentWidget param="config" configParam="social5" var="configSocial5" />
<@wp.currentWidget param="config" configParam="linkSocial6" var="configLinkSocial6" />
<@wp.currentWidget param="config" configParam="social6" var="configSocial6" />

<@wp.currentWidget param="config" configParam="page1" var="configPage1" />
<@wp.currentWidget param="config" configParam="page2" var="configPage2" />
<@wp.currentWidget param="config" configParam="page3" var="configPage3" />
<@wp.currentWidget param="config" configParam="page4" var="configPage4" />

<#if !(configCopyright?has_content)>
    <#assign configCopyright="">
</#if>
<#if !(configTheme?has_content)>
    <#assign configTheme="">
</#if>

<#assign configCopyrightYear=.now?string('yyyy')>
<#assign copyrightSymbol="&#xA9;">

<link rel="stylesheet" type="text/css" href="<@wp.resourceURL />ootbc-bundle/static/css/footer.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<div class="footer__ootb ${configTheme}">
    <div class="footer__ootb--column">
        <div class="footer__ootb--utilities">
        <#if configPage1?has_content>
            <#assign refPage1=configPage1?lower_case?replace(" ", "_", "r")>
            <a href="<@wp.url page="${refPage1}" />">
                ${configPage1}
            </a>
            <span>&nbsp;|&nbsp;</span>
        </#if>
        <#if configPage2?has_content>
            <#assign refPage2=configPage2?lower_case?replace(" ", "_", "r")>
            <a href="<@wp.url page="${refPage2}" />">
                ${configPage2}
            </a>
            <span>&nbsp;|&nbsp;</span>
        </#if>
        <#if configPage3?has_content>
            <#assign refPage3=configPage3?lower_case?replace(" ", "_", "r")>
            <a href="<@wp.url page="${refPage3}" />">
                ${configPage3}
            </a>
            <span>&nbsp;|&nbsp;</span>
        </#if>
        <#if configPage4?has_content>
            <#assign refPage4=configPage4?lower_case?replace(" ", "_", "r")>
            <a href="<@wp.url page="${refPage4}" />">
                ${configPage4}
            </a>
        </#if>
        </div>
        <div class="footer__ootb--copyright">
            <span>${copyrightSymbol} Copyright ${configCopyrightYear} ${configCopyright}</span>
        </div>
    </div>
    <div class="footer__ootb--column">
        <div class="footer__ootb--social-badge">
            <#if configLinkSocial1?has_content && configSocial1?has_content>
            <a href="${configLinkSocial1}" class="fa fa-${configSocial1}"></a>
            </#if>
            <#if configLinkSocial2?has_content && configSocial2?has_content>
            <a href="${configLinkSocial2}" class="fa fa-${configSocial2}"></a>
            </#if>
            <#if configLinkSocial3?has_content && configSocial3?has_content>
            <a href="${configLinkSocial3}" class="fa fa-${configSocial3}"></a>
            </#if>
            <#if configLinkSocial4?has_content && configSocial4?has_content>
            <a href="${configLinkSocial4}" class="fa fa-${configSocial4}"></a>
            </#if>
            <#if configLinkSocial5?has_content && configSocial5?has_content>
            <a href="${configLinkSocial5}" class="fa fa-${configSocial5}"></a>
            </#if>
            <#if configLinkSocial6?has_content && configSocial6?has_content>
            <a href="${configLinkSocial6}" class="fa fa-${configSocial6}"></a>
            </#if>
        </div>
    </div>
</div>
