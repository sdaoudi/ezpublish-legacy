{* DO NOT EDIT THIS FILE! Use an override template instead. *}
<div id="package" class="create">
    <div id="sid-{$current_step.id|wash}" class="pc-{$creator.id|wash}">

    <form method="post" action={'package/create'|ezurl}>

    {include uri="design:package/create/error.tpl"}

    {include uri="design:package/header.tpl"}

    <p>{'Please provide some basic information for your package.'|i18n('design/admin/package')}</p>
    <div class="block">
            <label>{'Package name'|i18n('design/admin/package')}</label>
            <input class="box" type="text" name="PackageName" value="{$persistent_data.name|wash}" />
    </div>

    <div class="block">
            <label>{'Summary'|i18n('design/admin/package')}</label>
            <input class="box" type="text" name="PackageSummary" value="{$persistent_data.summary|wash}" />
    </div>

    <div class="block">
            <label>{'Description'|i18n('design/admin/package')}</label>
            <textarea class="box" rows="7" name="PackageDescription">{$persistent_data.description|wash}</textarea>
    </div>

    <div class="block">
            <label>{'Version'|i18n('design/admin/package')}</label>
            <input class="box" type="text" name="PackageVersion" value="{$persistent_data.version|wash}" />
    </div>

    <div class="block">
            <label>{'Licence'|i18n('design/admin/package')}</label>
            <input type="hidden" name="PackageLicence" value="{$persistent_data.licence|wash}" />
            <p>{$persistent_data.licence|wash}</p>
    </div>

    <div class="block">
            <label>{'Package host'|i18n('design/admin/package')}</label>
            <input class="box" type="text" name="PackageHost" value="{$persistent_data.host|wash}" />
    </div>

    <div class="block">
            <label>{'Packager'|i18n('design/admin/package')}</label>
            <input class="box" type="text" name="PackagePackager" value="{$persistent_data.packager|wash}" />
    </div>

    {include uri="design:package/navigator.tpl"}

    </form>

    </div>
</div>
