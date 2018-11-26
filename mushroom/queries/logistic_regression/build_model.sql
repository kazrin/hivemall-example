select
  train_classifier(
    add_bias(features)
    ,target
    ,'-loss logloss'
  )
from
  mushroom_logistic_regression_preprocessed
where
  is_train = 1
