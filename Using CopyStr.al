pageextension 50125 CustomerListExt extends "Customer List"
{
    actions
    {
        addafter(Email)
        {
            action(ReverseSelectedCustomerName)
            {
                Caption = 'Reverse Customer Name';
                Image = ReverseRegister;
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                trigger OnAction()
                var
                    ReversedString: Text;
                    i: Integer;
                begin
                    for i := StrLen(Rec.Name) downto 1 do
                        ReversedString += Str(Rec.Name, i, 1);
                    Message(ReversedString);
                end;
            }
        }
    }
}
