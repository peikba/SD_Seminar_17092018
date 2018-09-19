page 123456711 "CSD Seminar Reg. Subpage"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 6 - Lab 3
    //     - Created new page

    Caption = 'Lines';
    DelayedInsert = true;
    PageType = ListPart;
    SourceTable = "CSD Seminar Registration Line";
    AutoSplitKey = true;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Bill-to Customer No."; "Bill-to Customer No.")
                {
                    QuickEntry=true;
                }
                field("Participant Contact No."; "Participant Contact No.")
                {
                    QuickEntry=true;
                }
                field("Participant Name"; "Participant Name")
                {
                    QuickEntry=false;
                }
                field(Participated; Participated)
                {
                    QuickEntry=false;
                }
                field("Registration Date"; "Registration Date")
                {
                    QuickEntry=false;
                }
                field("Confirmation Date"; "Confirmation Date")
                {
                    QuickEntry=false;
                }
                field("To Invoice"; "To Invoice")
                {
                    QuickEntry=false;
                }
                field(Registered; Registered)
                {
                    QuickEntry=false;
                }
                field("Seminar Price"; "Seminar Price")
                {
                    QuickEntry=false;
                }
                field("Line Discount %"; "Line Discount %")
                {
                    QuickEntry=false;
                }
                field("Line Discount Amount"; "Line Discount Amount")
                {
                    QuickEntry=false;
                }
                field(Amount; Amount)
                {
                    QuickEntry=false;
                }
            }
        }
    }

    actions
    {
    }
}

