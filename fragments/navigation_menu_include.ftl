<#assign wp=JspTaglibs["/aps-core"]>
<#assign liClass="">
<#assign aClass="">
<#if (previousPage.code == currentPageCode)>
  <#assign liClass=' class="active" '>
</#if>
<#if previousPage.voidPage>
 <#assign liClass=' class="nav-header" '>
    <#assign aClass=' class="a-void" '>
</#if>
<#if previousLevel == 0>
  <#assign aClass=' class="root-a" '>
</#if>
<li ${liClass}>
   <#if (!previousPage.voidPage)>
   	<a href="${previousPage.url}"  ${aClass}>
   <#else>
        <a ${aClass}>
   </#if>
   <!-- [ ${previousLevel} ]-->
<#--  CHECK THIS
${homeIcon}
-->
   ${previousPage.title}
     </a>

   <#if (previousLevel == level)>
	</li>
   </#if>
   <#if (previousLevel < level)>
	<ul class="nav-list">
   </#if>
   <#if (previousLevel > level)>
	<#list 1..(previousLevel - level) as ignoreMe>
		</li></ul>
	</#list>
   </#if>
