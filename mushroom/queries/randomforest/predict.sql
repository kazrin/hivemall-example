SELECT
  id,
  case 
    when rf_ensemble(predicted.value, predicted.posteriori, model_weight).label = 1 
      then rf_ensemble(predicted.value, predicted.posteriori, model_weight).probability 
    else 1- rf_ensemble(predicted.value, predicted.posteriori, model_weight).probability end as score
FROM (
  SELECT
    id, 
    m.model_weight,
    tree_predict(m.model_id, m.model, p.features, "-classification") as predicted
  FROM
    mushroom_randomforest_preprocessed p
    LEFT OUTER JOIN -- CROSS JOIN
    mushroom_randomforest_model m
  where
    is_train = 0
) t
group by
  1
