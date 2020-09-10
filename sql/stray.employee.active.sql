

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@  
#@  
#@  
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   2020-08-11[Aug-Tue]16-45PM 


list active employees that are not present in emp_enterprise table.

SELECT e2.name,  e1.*
    FROM emp_enterprise e2
    left join employees e1
    on e2.clock = e2.clock
        where e1.active=1 and e1.clock is null
        order by e2.clock
    limit 22


SELECT e2.name,  e1.name
    FROM emp_enterprise e2
    left join employees e1
    on e2.clock = e1.clock
        -- where e1.active=1 and e1.clock is null
        order by e2.clock
    limit 22



#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#@  
#@  
#@  
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   2020-08-11[Aug-Tue]16-45PM 



list active employees that are not present in emp_enterprise table.

SELECT e.name,e.clock,e.active,  d.*
    FROM `employees` e
    left join emp_enterprise d
    on e.clock = d.clock
        where e.active=1 and d.status is null
        order by e.clock
    limit 222

_____________


2020-08-11_Tue_16.42-PM

name,clock,active,clock,name,dept,company,grouping,status,hired_date,id_e,job,shift,firstname,lastname,updatedtime,createdtime,sch_wk1,pln_wk1,sch_wk2,pln_wk2
Stfd Metal Dennis Stf,000C1,1,,,,,,,,,,,,,,,,,,
Stfd Metal-1 Stfd Meta,000C2,1,,,,,,,,,,,,,,,,,,
Lloyds-1 Lloyds-1,000C3,1,,,,,,,,,,,,,,,,,,
Lloyds-2 Lloyds-2,000C4,1,,,,,,,,,,,,,,,,,,
Lloyds-3 Lloyds-3,000C5,1,,,,,,,,,,,,,,,,,,
Lloyds-4 Lloyds-4,000C6,1,,,,,,,,,,,,,,,,,,
Strong Arm-1 Strong Ar,000C7,1,,,,,,,,,,,,,,,,,,
Strong Arm-2 Strong Ar,000C8,1,,,,,,,,,,,,,,,,,,
Strong Arm-3 Strong Ar,000C9,1,,,,,,,,,,,,,,,,,,
Herman Paul,00132,1,,,,,,,,,,,,,,,,,,
McMaster James,00279,1,,,,,,,,,,,,,,,,,,
Gleba David,00826,1,,,,,,,,,,,,,,,,,,
Strong Arm-4 Strong Ar,00C10,1,,,,,,,,,,,,,,,,,,
Turner Pl-1 Turner Pl-,00C11,1,,,,,,,,,,,,,,,,,,
Turner Pl-2 Turner Pl-,00C12,1,,,,,,,,,,,,,,,,,,
Turner Pl-3 Turner Pl-,00C13,1,,,,,,,,,,,,,,,,,,
Morrisoneveritt-1 Morr,00C14,1,,,,,,,,,,,,,,,,,,
Morrisoneveritt-2 Morr,00C15,1,,,,,,,,,,,,,,,,,,
Morrisoneveritt-3 Morr,00C16,1,,,,,,,,,,,,,,,,,,
Strong Arm Rod Strong,00C17,1,,,,,,,,,,,,,,,,,,
Strong Arm-5 Strong Ar,00C18,1,,,,,,,,,,,,,,,,,,
Strong Arm-6 Strong Ar,00C19,1,,,,,,,,,,,,,,,,,,
Ken Robinson-1 Ken Rob,00C20,1,,,,,,,,,,,,,,,,,,
Ken Robinson-2 Ken Rob,00C21,1,,,,,,,,,,,,,,,,,,
Ken Robinson-3 Ken Rob,00C22,1,,,,,,,,,,,,,,,,,,
Ken Robinson-4 Ken Rob,00C23,1,,,,,,,,,,,,,,,,,,
Elliott Matsuura Ellio,00C24,1,,,,,,,,,,,,,,,,,,
Elliott Matsuura-2 Ell,00C25,1,,,,,,,,,,,,,,,,,,
Stfd Metal Steve K Stf,00C26,1,,,,,,,,,,,,,,,,,,
Stfd Metal-2 Stfd Meta,00C27,1,,,,,,,,,,,,,,,,,,
Stfd Metal-3 Stfd Meta,00C28,1,,,,,,,,,,,,,,,,,,
Turner Pl-4 Turner Pl-,00C29,1,,,,,,,,,,,,,,,,,,
Lloyds-5 Lloyds-5,00C32,1,,,,,,,,,,,,,,,,,,
Turner Pl-5 Turner Pl-,00C33,1,,,,,,,,,,,,,,,,,,
Name,00Id#,1,,,,,,,,,,,,,,,,,,
Lay Dennis,01111,1,,,,,,,,,,,,,,,,,,
Ross Tara,05334,1,,,,,,,,,,,,,,,,,,
Adair Kasey,06655,1,,,,,,,,,,,,,,,,,,
Longfield Ian,09523,1,,,,,,,,,,,,,,,,,,
Bennett Christine,09567,1,,,,,,,,,,,,,,,,,,
Willis Shane,09572,1,,,,,,,,,,,,,,,,,,
Smith Nancy,09592,1,,,,,,,,,,,,,,,,,,
Martin April,09607,1,,,,,,,,,,,,,,,,,,
Dunbar Aaron,09619,1,,,,,,,,,,,,,,,,,,
Powell Maddie,09620,1,,,,,,,,,,,,,,,,,,
St. Jules Caileigh,09670,1,,,,,,,,,,,,,,,,,,
Bradley Matthew,09793,1,,,,,,,,,,,,,,,,,,
Harvey Lewis,09845,1,,,,,,,,,,,,,,,,,,
Kraetschmer Antonio,09846,1,,,,,,,,,,,,,,,,,,
McCutchen Michael,09849,1,,,,,,,,,,,,,,,,,,
Samuelson Brody,09860,1,,,,,,,,,,,,,,,,,,
Bradley Tom,09863,1,,,,,,,,,,,,,,,,,,
Christie James,09864,1,,,,,,,,,,,,,,,,,,
Eggleston Kim,09865,1,,,,,,,,,,,,,,,,,,
Graham Kyra,09866,1,,,,,,,,,,,,,,,,,,
Singh Khushbu Kumari,09886,1,,,,,,,,,,,,,,,,,,
Button Jennifer,09889,1,,,,,,,,,,,,,,,,,,
Sippel Jonathan,09894,1,,,,,,,,,,,,,,,,,,
Deighton Dan,09964,1,,,,,,,,,,,,,,,,,,
McNulty Riley,09968,1,,,,,,,,,,,,,,,,,,
Millar Daniel,10220,1,,,,,,,,,,,,,,,,,,
Adhvaryu Niraj,10484,1,,,,,,,,,,,,,,,,,,
Phan Duc Bach,10524,1,,,,,,,,,,,,,,,,,,
Vera Alison,10656,1,,,,,,,,,,,,,,,,,,
Melville Alexis,10672,1,,,,,,,,,,,,,,,,,,
McGuinness Patrick,10675,1,,,,,,,,,,,,,,,,,,
Sreedhar Prasanth,10678,1,,,,,,,,,,,,,,,,,,
Erassa Mekdes,10681,1,,,,,,,,,,,,,,,,,,
Matthews Jesse,10705,1,,,,,,,,,,,,,,,,,,
Marriott Angela,10756,1,,,,,,,,,,,,,,,,,,
Singh Jaspreet,10922,1,,,,,,,,,,,,,,,,,,
John Binil,10926,1,,,,,,,,,,,,,,,,,,
Sippel Jonathan,11081,1,,,,,,,,,,,,,,,,,,
Jesso David,11133,1,,,,,,,,,,,,,,,,,,
Vaghela Dhrumilbhai,11225,1,,,,,,,,,,,,,,,,,,
Vaghela Dhrumilbhai,11226,1,,,,,,,,,,,,,,,,,,
Gandhi Abhishek,11227,1,,,,,,,,,,,,,,,,,,
Rajatiya Prafulkumar,11228,1,,,,,,,,,,,,,,,,,,
Raj Nirav,11229,1,,,,,,,,,,,,,,,,,,
Raj Dhanush,11230,1,,,,,,,,,,,,,,,,,,
Ramachandrakurup Sarath,11231,1,,,,,,,,,,,,,,,,,,
Sethumadhavan Prajith,11232,1,,,,,,,,,,,,,,,,,,
Unais Mohamed,11233,1,,,,,,,,,,,,,,,,,,
Jinadas Aswin,11234,1,,,,,,,,,,,,,,,,,,
Livingston Andrea,11918,1,,,,,,,,,,,,,,,,,,
Peguero Miguel,12246,1,,,,,,,,,,,,,,,,,,
Gleba2 David2,89999,1,,,,,,,,,,,,,,,,,,
Elliot Dave (Kleen Way),99013,1,,,,,,,,,,,,,,,,,,
Boyd Janet (Kleen Way),99015,1,,,,,,,,,,,,,,,,,,
Koebel Stephanie (Kleen Way),99016,1,,,,,,,,,,,,,,,,,,
Jackson Steven (Kleen Way),99017,1,,,,,,,,,,,,,,,,,,
Osmond Theresa (Kleen Way),99018,1,,,,,,,,,,,,,,,,,,
Debont Joe,99019,1,,,,,,,,,,,,,,,,,,
Thomas Jennifer (Kleen Way),99021,1,,,,,,,,,,,,,,,,,,
Skerritt Janelle,99022,1,,,,,,,,,,,,,,,,,,
Diehl Arron,99023,1,,,,,,,,,,,,,,,,,,
Grosz Pat,99024,1,,,,,,,,,,,,,,,,,,
Stuckless David,99025,1,,,,,,,,,,,,,,,,,,
Admin Admin,ADMIN,1,,,,,,,,,,,,,,,,,,
Employee Schedule Listing,Stack,1,,,,,,,,,,,,,,,,,,

end 2020-08-11_Tue_16.42-PM 


_____________

