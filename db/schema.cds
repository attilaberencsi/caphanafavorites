using {managed} from '@sap/cds/common';

namespace sapdev.fav;

entity Page : managed {
    key ID          : Integer;
        name        : localized String(60);
        description : localized String(256);
        groups      : Composition of many Page.Group
                          on groups.page = $self;
}

entity Page.Group : managed {
    key ID          : Integer;
    key page        : Association to Page;
        name        : localized String(60);
        description : localized String(256);
        tiles       : Composition of many Group.Tile
                          on tiles.group = $self;
        links       : Composition of many Group.Tile
                          on links.group = $self;
}

entity Group.Tile : managed {
    key ID          : Integer;
        // key page        : Association to Page;
    key group       : Association to Page.Group;
        header      : localized String(40);
        subHeader   : localized String(40);
        url         : String(2048);
        headerImage : String(1024);
        appShortcut : localized String(15);
        systeminfo  : localized String(14);
}

entity Group.Link : managed {
    key ID          : Integer;
    key group       : Association to Page.Group;
        header      : localized String(40);
        subHeader   : localized String(40);
        url         : String(2048);
        headerImage : String(1024);
}
