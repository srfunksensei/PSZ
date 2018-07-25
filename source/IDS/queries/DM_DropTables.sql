use psztest
drop table train_set
drop table validation_set

select * from validation_set where attack_group = 'other'
select * from train_set_test