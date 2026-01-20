using {managed} from '@sap/cds/common';

namespace sapdev.fav;

type Header      : localized String(40) @title: 'Title';
type SubHeader   : localized String(40) @title: 'Subtitle';
type URL         : String(2048) @title: 'Document Link';
type HeaderImage : String(1024) @title: 'Icon';

@fiori.draft.enabled
entity Page : managed {
    key ID          : Integer                        @title: 'ID';
        name        : localized String(60)           @title: 'Name';
        description : localized String(256)          @title: 'Description';
        groups      : Composition of many Page.Group @title: 'Groups'
                          on groups.page = $self;
}

@fiori.draft.enabled
entity Page.Group : managed {
    key ID          : Integer                        @title: 'ID';
    key page        : Association to Page            @title: 'Page';
        name        : localized String(60)           @title: 'Name';
        description : localized String(256)          @title: 'Description';
        tiles       : Composition of many Group.Tile @title: 'Tiles'
                          on tiles.group = $self;
        links       : Composition of many Group.Link @title: 'Links'
                          on links.group = $self;
}

@fiori.draft.enabled
entity Group.Tile : managed {
    key ID          : Integer                   @title: 'ID';
    key group       : Association to Page.Group @title: 'Group';
        header      : Header;
        subHeader   : SubHeader;
        url         : URL;
        headerImage : HeaderImage;
        appShortcut : localized String(15)      @title: 'App Shortcut';
        systeminfo  : localized String(14)      @title: 'System Info';
}

@fiori.draft.enabled
entity Group.Link : managed {
    key ID          : Integer                   @title: 'ID';
    key group       : Association to Page.Group @title: 'Group';
        header      : Header;
        subHeader   : SubHeader;
        url         : URL;
        headerImage : HeaderImage;
}
