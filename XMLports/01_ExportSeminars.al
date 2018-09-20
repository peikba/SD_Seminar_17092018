xmlport 123456700 "Export Seminars"
{
    Direction=Export;

    schema
    {
        textelement(Root)
        {
            tableelement("Seminar";"CSD Seminar")
            {
                fieldelement(No;Seminar."No.")
                {
                }
                fieldelement(Name;Seminar.Name)
                {
                }
                fieldelement(Price;Seminar."Seminar Price")
                {
                }
                fieldelement(MaxPart;Seminar."Maximum Participants")
                {
                }
            }
        }
    }

    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                    field(Seminar;Seminar."No.")
                    {
                    }
                }
            }
        }    
    }
    
    var
        myInt : Integer;
}
