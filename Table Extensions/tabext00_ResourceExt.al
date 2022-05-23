tableextension 50100 "CSD ResourceExt" extends "Resource"
// CSD1.00 - 2018-01-01 - D. E. Veloper
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                rec.TestField("Profit %");
            end;
        }
        field(50101; "CSD Resource Type"; Option)
        {
            Caption = 'Resource Type';
            DataClassification = AccountData;
            OptionMembers = Internal,External;
            OptionCaption = 'Internal,External';
        }
        field(50102; "CSD Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
            DataClassification = AccountData;
        }
        field(50103; "CSD Quantity Per Day"; Integer)
        {
            Caption = 'Quantity Per DAy';
            DataClassification = AccountData;
        }
    }
}