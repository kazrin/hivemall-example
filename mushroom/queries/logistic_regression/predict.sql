select
  id
  ,sigmoid(sum(model.weight)) as score
from (
  select
    id
    ,feature
  from
    mushroom_logistic_regression_preprocessed
  lateral view
    explode(add_bias(features)) t as feature
  where
    is_train = 0
  ) t
  inner join
  mushroom_logistic_regression_model model
  on
    t.feature = model.feature
group by
  1
