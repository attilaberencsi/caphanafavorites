using sapdev.fav from '../db/schema';

@requires: 'admin'
service Admin {

    @odata.draft.enabled
    @cds.odata.valuelist
    entity Page  as projection on fav.Page;

    @cds.odata.valuelist
    entity Group as projection on fav.Page.Group;

    entity Tile  as projection on fav.Group.Tile;

    entity Link  as projection on fav.Group.Link;

}
