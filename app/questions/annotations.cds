using SupportService as service from '../../srv/services';
annotate service.Questions with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'question',
                Value : question,
            },
            {
                $Type : 'UI.DataField',
                Label : 'questionVector',
                Value : questionVector,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'question',
            Value : question,
        },
        {
            $Type : 'UI.DataField',
            Label : 'questionVector',
            Value : questionVector,
        },
    ],
);

annotate service.Questions with {
    answer @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Answers',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : answer_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'answer',
            },
        ],
    }
};

