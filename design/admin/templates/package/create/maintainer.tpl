{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{let current_user=fetch( user, current_user )
     maintainer_role_list=fetch( package, maintainer_role_list, hash( check_roles, true() ) )}
<div id="package" class="create">
    <div id="sid-{$current_step.id|wash}" class="pc-{$creator.id|wash}">

    <form method="post" action={'package/create'|ezurl}>

    {include uri="design:package/create/error.tpl"}

    {include uri="design:package/header.tpl"}

    <p>{'Please provide information on the maintainer of the package.'|i18n('design/admin/package')}</p>

    <div class="block">
        <label>{'Name'|i18n('design/admin/package','Maintainer name')}</label>
        <input class="box" type="text" name="PackageMaintainerPerson" value="{$persistent_data.maintainer_person|wash}" />
    </div>

    <div class="block">
        <label>{'E-Mail'|i18n('design/admin/package')}</label>
        <input class="box" type="text" name="PackageMaintainerEmail" value="{$persistent_data.maintainer_email|wash}" />
    </div>

    <div class="block">
        <label>{'Role'|i18n( 'design/admin/package', 'Maintainer role' )}</label>
        <select class="combobox" name="PackageMaintainerRole">
        {section var=role loop=$maintainer_role_list}
            <option value="{$role.id|wash}">{$role.name|wash}</option>
        {/section}
        </select>
    </div>

    {include uri="design:package/navigator.tpl"}

    </form>

    </div>
</div>
{/let}
