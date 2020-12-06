# Groupby, Don't Cry

* The below are a pandas data frame preview and a query for the total duration (in seconds) of UFO sightings by state, respectively.

  ![Images/grouby01.png](Images/groupby01.png)
  
  ![Images/grouby02.png](Images/groupby02.png)
  
* What is an equivalent SQL query? Instead of the sum, find the mean duration by state.

SELECT
  *
FROM
  groupby01
LIMIT 15;

SELECT
  state,
  AVERAGE(duration)
FROM
  groupby02
GROUP BY
  state


