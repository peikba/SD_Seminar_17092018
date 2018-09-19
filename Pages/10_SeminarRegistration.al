page 123456710 "CSD Seminar Registration"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 6 - Lab 3-1
    //     - Created new page
    //   Chapter 7 - Lab 5-8
    //     - Added Post Action  

    Caption = 'Seminar Registration';
    PageType = Document;
    SourceTable = "CSD Seminar Reg. Header";

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                    QuickEntry=true;
                    AssistEdit = true;
                    trigger OnAssistEdit();
                    begin
                        if AssistEdit(xRec) then
                            CurrPage.UPDATE;
                    end;
                }
                field("Starting Date"; "Starting Date")
                {
                    QuickEntry=true;
                }
                field("Seminar No."; "Seminar No.")
                {QuickEntry=true;
                }
                field("Seminar Name"; "Seminar Name")
                {
                    QuickEntry=false;
                }
                field("Instructor Resource No."; "Instructor Resource No.")
                {
                    QuickEntry=true;
                }
                field("Instructor Name"; "Instructor Name")
                {
                    QuickEntry=false;
                }
                field("Posting Date"; "Posting Date")
                {
                    QuickEntry=false;
                }
                field("Document Date"; "Document Date")
                {
                    QuickEntry=false;
                }
                field(Status; Status)
                {
                    QuickEntry=false;
                }
                field(Duration; Duration)
                {
                    QuickEntry=false;
                }
                field("Minimum Participants"; "Minimum Participants")
                {
                    QuickEntry=false;
                }
                field("Maximum Participants"; "Maximum Participants")
                {
                    QuickEntry=false;
                }
            }
            part(SeminarRegistrationLines; "CSD Seminar Reg. Subpage")
            {
                Caption = 'Lines';
                SubPageLink = "Document No." = field ("No.");
            }
            group("Seminar Room")
            {
                field("Room Resource No."; "Room Resource No.")
                {
                    Importance=Promoted;
                }
                field("Room Name"; "Room Name")
                {
                    Importance=Promoted;
                }
                field("Room Address"; "Room Address")
                {
                    Importance=Additional;
                }
                field("Room Address 2"; "Room Address 2")
                {
                    Importance=Additional;
                }
                field("Room Post Code"; "Room Post Code")
                {
                    Importance=Additional;
                }
                field("Room City"; "Room City")
                {
                    Importance=Additional;
                }
                field("Room Country/Reg. Code"; "Room Country/Reg. Code")
                {
                    Importance=Additional;
                }
                field("Room County"; "Room County")
                {
                    Importance=Additional;
                }
            }
            group(Invoicing)
            {
                field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
                {
                }
                field("VAT Prod. Posting Group"; "VAT Prod. Posting Group")
                {
                }
                field("Seminar Price"; "Seminar Price")
                {
                }
            }
        }
        area(factboxes)
        {
            part("Seminar Details FactBox"; "CSD Seminar Details FactBox")
            {
                SubPageLink = "No." = field ("Seminar No.");
            }
            part("Customer Details FactBox"; "Customer Details FactBox")
            {
                Provider = SeminarRegistrationLines;
                SubPageLink = "No." = field ("Bill-to Customer No.");
            }

            systempart("Links"; Links)
            {
            }
            systempart("Notes"; Notes)
            {
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Seminar Registration")
            {
                Caption = '&Seminar Registration';
                action("Co&mments")
                {
                    Caption = 'Co&mments';
                    Image = Comment;
                    RunObject = Page 123456706;
                    RunPageLink = "No." = Field ("No.");
                    RunPageView = where ("Table Name" = const("Seminar Registration"));
                }
                action("&Charges")
                {
                    Caption = '&Charges';
                    Image = Costs;
                    RunObject = Page 123456724;
                    RunPageLink = "Document No." = Field ("No.");
                }
            }
        }
        area(Processing)
        {
            action("&Post")
            {
                Caption = '&Post';
                Image = PostDocument;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                ShortcutKey = F9;
                RunObject = codeunit "CSD Seminar-Post (Yes/No)";
            }
        }
    }
}

