for table in mushroom mushroom_source
  do
    td table:delete -f ${database} $table
    td table:create ${database} $table
  done


for model in randomforest logistic_regression
  do
    for step in preprocessed model predicted
      do
        td table:delete -f ${database} mushroom_${model}_$step
        td table:create ${database} mushroom_${model}_$step
      done
  done
