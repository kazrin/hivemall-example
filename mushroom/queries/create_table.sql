drop table mushroom_train_test;
create table if not exists mushroom_train_test (
  time bigint,
  id int,
  target int,
  features_for_logress array(varchar),
  features_for_randomforest array(varchar)
  );

drop table mushroom_logistic_regression;create table if not exists mushroom_logistic_regression (time bigint);
drop table mushroom_randomforest;create table if not exists mushroom_randomforest (time bigint);

drop table mushroom_prediction_lr;create table if not exists mushroom_prediction_lr (time bigint);
drop table mushrrom_predictino_rf;create table if not exists mushroom_prediction_rf (time bigint);

