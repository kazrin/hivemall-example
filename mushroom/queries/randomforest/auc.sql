select
  auc(score,target) as auc
from (
  select
    p.id
    ,is_poisonous as target
    ,score
  from
    mushroom_randomforest_predicted p
    inner join
    mushroom_randomforest_preprocessed s
    on
      p.id = s.id
  order by
    score desc
) t
