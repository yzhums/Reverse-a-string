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
                    j: Integer;
                begin
                    j := 0;
                    for i := StrLen(Rec.Name) downto 1 do begin
                        j += 1;
                        ReversedString[j] := Rec.Name[i];
                    end;
                    Message(ReversedString);
                end;
            }
        }
    }
}
