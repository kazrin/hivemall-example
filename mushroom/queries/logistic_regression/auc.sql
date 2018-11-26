select
  auc(score,target) as auc
from (
  select
    p.id
    ,target
    ,score
  from
    mushroom_logistic_regression_predicted p
    inner join
    mushroom_logistic_regression_preprocessed s
    on
      p.id = s.id
  order by
    score desc
) t
