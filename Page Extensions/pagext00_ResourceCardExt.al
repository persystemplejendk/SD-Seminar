pageextension 50100 "CSD ResourceCardExt" extends "Resource Card"

// CSD1.00 - 2018-02-01 - D. E. Veloper
{
    layout
    {
        addlast(General)
        {
            field("CSD Resource Type"; rec."CSD Resource Type")
            {
                ApplicationArea = All;
            }
            field("CSD Quantity Per Day"; rec."CSD Quantity Per Day")
            {
                ApplicationArea = All;
            }
        }
        addlast(content)
        {
            group("CSD Room")
            {
                Caption = 'Room';
                Visible = ShowRoom;
                field("CSD Maximum Participants"; Rec."CSD Maximum Participants")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    trigger OnAfterGetCurrRecord()
    begin
        ShowRoom := (rec.Type = Rec.Type::Machine);
        CurrPage.Update(false);
    end;


    var
        [InDataSet]
        ShowRoom: Boolean;
}