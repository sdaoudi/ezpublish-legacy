{* Poll - Admin preview *}

<div class="content-view-full">
    <div class="class-poll">

        <h1>{$node.name|wash()}</h1>

        <div class="attribute-short">
        {attribute_view_gui attribute=$node.object.data_map.description}
        </div>

        <form method="post" action={"content/action"|ezurl}>
        <input type="hidden" name="ContentNodeID" value="{$node.node_id}" />
        <input type="hidden" name="ContentObjectID" value="{$node.object.id}" />
        <input type="hidden" name="ViewMode" value="full" />

        <div class="content-question">
        {attribute_view_gui attribute=$node.object.data_map.question}
        </div>

        {section show=is_unset( $versionview_mode )}
        <div class="block">
        <input class="button" type="submit" name="ActionCollectInformation" value="Vote" />
        </div>
        {/section}

        </form>

        <div class="attribute-link">
            <p><a href={concat( "/content/collectedinfo/", $node.node_id, "/" )|ezurl}>{"Result"|i18n("design/admin/preview/poll")}</a></p>
        </div>

    </div>
</div>
