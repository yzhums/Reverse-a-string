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
                    StringList: List of [Text];
                    StringLetter: Text;
                    ReversedString: Text;
                begin
                    ReversedString := '';
                    foreach StringLetter in Rec.Name do
                        StringList.Add(StringLetter);
                    StringList.Reverse();
                    foreach StringLetter in StringList do
                        ReversedString += StringLetter;
                    Message(ReversedString);
                end;
            }
        }
    }
}
