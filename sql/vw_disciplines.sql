


CREATE OR REPLACE
 VIEW vw_disciplines
 AS  Select 

    `d`.`id` AS `id`,
    `d`.`date_discipline` AS `date_discipline`,
    `d`.`discipline_by` AS `discipline_by`,
    `d`.`infraction_description` AS `infraction_description`,
    `d`.`documents_on_file` AS `documents_on_file`,
    `d`.`hr_comment` AS `hr_comment`,`d`.`employee_comment` AS `employee_comment`,
    `d`.`created_at` AS `created_at`,`d`.`updated_at` AS `updated_at`,
    `d`.`hr_manager_approval` AS `hr_manager_approval`,`d`.`dept_manager_approval` AS `dept_manager_approval`,
    `s`.`name` AS `stream` ,
     l.name as level,
     e.name as employee_name,
     d.stream_type
     
    from dc_disciplines d
      left join dc_streams s
        on d.dc_stream_id = s.id
      left join dc_levels l
        on d.dc_level_id = l.id
      left join employees e
        on d.employee_id = e.id
  order by d.id desc

 

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Title:  .
-----------------------2018-04-19[Apr-Thu]14-00PM

old...

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 

select `d`.`id` AS `id`,
`d`.`date_discipline` AS `date_discipline`,
`d`.`discipline_by` AS `discipline_by`,
`d`.`infraction_description` AS `infraction_description`,
`d`.`documents_on_file` AS `documents_on_file`,
`d`.`hr_comment` AS `hr_comment`,`d`.`employee_comment` AS `employee_comment`,
`d`.`created_at` AS `created_at`,`d`.`updated_at` AS `updated_at`,
`d`.`hr_manager_approval` AS `hr_manager_approval`,`d`.`dept_manager_approval` AS `dept_manager_approval`,
`s`.`name` AS `stream` 

from (((`dc_disciplines` `d` 
left join `dc_streams` `s` on((`d`.`dc_stream_id` = `s`.`id`))) 
left join `dc_levels` `l` on((`d`.`dc_level_id` = `l`.`id`))) 
left join `employees` `e` on((`d`.`employee_id` = `e`.`id`))) order by `d`.`id` desc

   