using Admin as service from './admin';

annotate service.Page with @(
    UI: {
        // LineItem for List Report
        LineItem: [
            {Value: ID},
            {Value: name},
            {Value: description},
            {Value: createdAt},
            {Value: createdBy},
            {Value: modifiedAt},
            {Value: modifiedBy}
        ],
        // HeaderInfo for Object Page
        HeaderInfo: {
            TypeName: 'Page',
            TypeNamePlural: 'Pages',
            Title: {Value: name},
            Description: {Value: description}
        },
        // Facets for Object Page layout
        Facets: [
            {
                $Type: 'UI.ReferenceFacet',
                Target: '@UI.FieldGroup#General',
                Label: 'General Information'
            },
            {
                $Type: 'UI.ReferenceFacet',
                Target: 'groups/@UI.LineItem',
                Label: 'Groups'
            },
            {
                $Type: 'UI.ReferenceFacet',
                Target: '@UI.FieldGroup#Administrative',
                Label: 'Administrative Data'
            }
        ],
        // FieldGroup for General Information
        FieldGroup #General: {
            Data: [
                {Value: ID},
                {Value: name},
                {Value: description}
            ]
        },
        // FieldGroup for Administrative Data (aspect fields)
        FieldGroup #Administrative: {
            Data: [
                {Value: createdAt},
                {Value: createdBy},
                {Value: modifiedAt},
                {Value: modifiedBy}
            ]
        }
    }
);

annotate service.Group with @(
    UI: {
        // LineItem for List Report
        LineItem: [
            {Value: ID},
            {Value: page_ID, Label: 'Page ID'},
            {Value: name},
            {Value: description},
            {Value: createdAt},
            {Value: createdBy},
            {Value: modifiedAt},
            {Value: modifiedBy}
        ],
        // HeaderInfo for Object Page
        HeaderInfo: {
            TypeName: 'Group',
            TypeNamePlural: 'Groups',
            Title: {Value: name},
            Description: {Value: description}
        },
        // Facets for Object Page layout
        Facets: [
            {
                $Type: 'UI.ReferenceFacet',
                Target: '@UI.FieldGroup#General',
                Label: 'General Information'
            },
            {
                $Type: 'UI.ReferenceFacet',
                Target: 'tiles/@UI.LineItem',
                Label: 'Tiles'
            },
            {
                $Type: 'UI.ReferenceFacet',
                Target: 'links/@UI.LineItem',
                Label: 'Links'
            },
            {
                $Type: 'UI.ReferenceFacet',
                Target: '@UI.FieldGroup#Administrative',
                Label: 'Administrative Data'
            }
        ],
        // FieldGroup for General Information
        FieldGroup #General: {
            Data: [
                {Value: ID},
                {Value: page_ID, Label: 'Page ID'},
                {Value: name},
                {Value: description}
            ]
        },
        // FieldGroup for Administrative Data (aspect fields)
        FieldGroup #Administrative: {
            Data: [
                {Value: createdAt},
                {Value: createdBy},
                {Value: modifiedAt},
                {Value: modifiedBy}
            ]
        }
    }
);

annotate service.Tile with @(
    UI: {
        // LineItem for List Report
        LineItem: [
            {Value: ID},
            {Value: group_ID, Label: 'Group ID'},
            {Value: header},
            {Value: subHeader},
            {Value: url},
            {Value: headerImage},
            {Value: appShortcut},
            {Value: systeminfo},
            {Value: createdAt},
            {Value: createdBy},
            {Value: modifiedAt},
            {Value: modifiedBy}
        ],
        // HeaderInfo for Object Page
        HeaderInfo: {
            TypeName: 'Tile',
            TypeNamePlural: 'Tiles',
            Title: {Value: header},
            Description: {Value: subHeader}
        },
        // Facets for Object Page layout
        Facets: [
            {
                $Type: 'UI.ReferenceFacet',
                Target: '@UI.FieldGroup#General',
                Label: 'General Information'
            },
            {
                $Type: 'UI.ReferenceFacet',
                Target: '@UI.FieldGroup#Content',
                Label: 'Content'
            },
            {
                $Type: 'UI.ReferenceFacet',
                Target: '@UI.FieldGroup#Administrative',
                Label: 'Administrative Data'
            }
        ],
        // FieldGroup for General Information
        FieldGroup #General: {
            Data: [
                {Value: ID},
                {Value: group_ID, Label: 'Group ID'}
            ]
        },
        // FieldGroup for Content
        FieldGroup #Content: {
            Data: [
                {Value: header},
                {Value: subHeader},
                {Value: url},
                {Value: headerImage},
                {Value: appShortcut},
                {Value: systeminfo}
            ]
        },
        // FieldGroup for Administrative Data (aspect fields)
        FieldGroup #Administrative: {
            Data: [
                {Value: createdAt},
                {Value: createdBy},
                {Value: modifiedAt},
                {Value: modifiedBy}
            ]
        }
    }
);

annotate service.Link with @(
    UI: {
        // LineItem for List Report
        LineItem: [
            {Value: ID},
            {Value: group_ID, Label: 'Group ID'},
            {Value: header},
            {Value: subHeader},
            {Value: url},
            {Value: headerImage},
            {Value: createdAt},
            {Value: createdBy},
            {Value: modifiedAt},
            {Value: modifiedBy}
        ],
        // HeaderInfo for Object Page
        HeaderInfo: {
            TypeName: 'Link',
            TypeNamePlural: 'Links',
            Title: {Value: header},
            Description: {Value: subHeader}
        },
        // Facets for Object Page layout
        Facets: [
            {
                $Type: 'UI.ReferenceFacet',
                Target: '@UI.FieldGroup#General',
                Label: 'General Information'
            },
            {
                $Type: 'UI.ReferenceFacet',
                Target: '@UI.FieldGroup#Content',
                Label: 'Content'
            },
            {
                $Type: 'UI.ReferenceFacet',
                Target: '@UI.FieldGroup#Administrative',
                Label: 'Administrative Data'
            }
        ],
        // FieldGroup for General Information
        FieldGroup #General: {
            Data: [
                {Value: ID},
                {Value: group_ID, Label: 'Group ID'}
            ]
        },
        // FieldGroup for Content
        FieldGroup #Content: {
            Data: [
                {Value: header},
                {Value: subHeader},
                {Value: url},
                {Value: headerImage}
            ]
        },
        // FieldGroup for Administrative Data (aspect fields)
        FieldGroup #Administrative: {
            Data: [
                {Value: createdAt},
                {Value: createdBy},
                {Value: modifiedAt},
                {Value: modifiedBy}
            ]
        }
    }
);
