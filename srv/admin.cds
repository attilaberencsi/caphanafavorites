using sapdev.fav from '../db/schema';

@requires: 'admin'
service Admin {

    @odata.draft.enabled
    entity Page  as projection on fav.Page;

    entity Group as projection on fav.Page.Group;

    entity Tile  as projection on fav.Group.Tile;

    entity Link  as projection on fav.Group.Link;

}
