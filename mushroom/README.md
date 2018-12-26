# Build a model classifying poisonous mushroom

## Dataset
Mushroom  
Features of 8,124 mushrooms are included.  
https://archive.ics.uci.edu/ml/datasets/mushroom

## Task
Classify poisonous mushrooms and non-poisonous ones.

## Run
`digdag run mushroom.dig -p {database} -p {td_api_key}`

Please replace {database} and {td_api_key}
The workflow does all the process from loading data to calculating the accuracy.
