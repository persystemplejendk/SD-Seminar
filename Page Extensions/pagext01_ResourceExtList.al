pageextension 50101 "CSD ResourceListExt" extends "Resource List"
// CSD1.00 - 2018-01-01 - D. E. Veloper
{
    layout
    {
        modify(Type)
        {
            Visible = Showtype;
        }
        addafter(Type)
        {
            field("CSD Resource Type"; rec."CSD Resource Type")
            {
                ApplicationArea = All;
            }
            field("CSD Maximum Participants"; rec."CSD Maximum Participants")
            {
                Visible = ShowMaxField;
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    trigger OnOpenPage();
    begin
        ShowType := (rec.GetFilter(Type) = '');
        ShowMaxField := (rec.GetFilter(Type) = format(rec.Type::Machine));
    end;

    var
        [inDataSet]
        ShowMaxField: Boolean;
        [inDataSet]
        Showtype: Boolean;
}