select
  case when rand() < 0.8 then 1 else 0 end as is_train
  ,row_number() over() as id
  ,*
from
  mushroom

