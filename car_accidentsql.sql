create database project;
use project;
use first;

/*Find number of males and females that resulted in fatal injuries in a car accident*/
select count(*) as "Male"
from car_accidents
where`Gender`="Male" and `Injury Severity`="Fatal Injury (K)";

select count(*) as "Female"
from car_accidents
where `Gender` ="Female" and `Injury Severity` ="Fatal Injury (K)";

/* In 2011, the number of males that resulted in a fatal injury were 1603 and the number of females were 716. 
We can conclude based on assumptions that males are more likely to get into fatal car accidents than females.*/

/* Find average age of females and males in that got into a car accident*/
select avg(Age)
from car_accidents
/* In 2011, the average age for car accidents was 38.6*/

select avg(age) as "avg female"
from car_accidents
where `Gender` ="female" and `Injury Severity` = "Fatal Injury (K)";

select avg(age) as "avg male"
from car_accidents
where `Gender` ="male" and `Injury Severity` = "Fatal Injury (K)";

/* In 2011, the average female age to result in a fatal injury is 44.1. 
In 2011, the average male age to result in a fatal injury 41.7.
We can conclude based on assumptions that males are more likely to get into a car accident that results in a fatal injury at a younger age than females. */ 

/* Find number of car accidents for different atmospheric conditions */
select count(*) as " number of clear day car accidents"
from car_accidents
where `Atmospheric Condition` ="Clear";
/* results in 3220*/

select count(*) as " number of rainy day car accidents"
from car_accidents
where `Atmospheric Condition` ="Rain";
/* results in 374*/

select count(*) as " number of cloudy day car accidents"
from car_accidents
where `Atmospheric Condition` ="cloudy";
/* results in 845*/

/* In 2011, there were more car accidents on a clear day than any other atmospheric conditions like rain and cloudy. 
We can conclude based on assumptions that people are more likely to head outside and drive on a sunny clear day than bad weather conditions which may result in more accidents. */

/* Find out if there are more male fatalities than female no matter the atmospheric condition */
SELECT `Gender`,`Atmospheric Condition`, SUM(`Fatalities in crash`) as "Number of Fatalities"
FROM car_accidents
GROUP BY `Atmospheric Condition`, `Gender`

/* We can see the gender disparities in car accidents that result in fatal injuries. 
There are significantly more male fatalities than female no matter the atmospheric condition. */

/* Find out which date has the most accidents throughout the entire year of 2011 */
SELECT `Crash Date.month`, `Crash Date.day-of-month`, COUNT(*) as "Number of Crashes"
FROM car_accidents
GROUP BY `Crash Date.month`,  `Crash Date.day-of-month`

/* In 2011, there were significantly more car accidents on January 1 than any other date. 
This is likely due to the fact that it is New Years Day and alcohol could be involved.*/