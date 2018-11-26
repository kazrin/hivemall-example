select
  train_randomforest_classifier(
    features
    ,is_poisonous
  )
from
  mushroom_randomforest_preprocessed
where
  is_train = 1
