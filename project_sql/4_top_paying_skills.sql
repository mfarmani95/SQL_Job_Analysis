
/*
What are the top skills based on salary?

*/

SELECT 
    skills,
    ROUND(AVG(job_postings_fact.salary_year_avg),0) AS mean_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
WHERE 
    job_title_short = 'Data Analyst'  AND
    job_postings_fact.salary_year_avg IS NOT NULL AND
    job_work_from_home = True
GROUP BY 
    skills_dim.skills
ORDER BY 
    mean_salary DESC
LIMIT 25;




/*

The top-paying skills are strongly associated with big-data processing, machine learning, and production data infrastructure. PySpark has the highest average salary at about $208K, followed by tools such as Bitbucket, Couchbase, Watson, DataRobot, GitLab, Jupyter, Pandas, Elasticsearch, and Golang. This suggests that higher-paying data roles often value candidates who can work beyond basic analysis and contribute to scalable data pipelines, ML workflows, and production-ready engineering systems.


	
0	
skills	"pyspark"
mean_salary	"208172"
1	
skills	"bitbucket"
mean_salary	"189155"
2	
skills	"couchbase"
mean_salary	"160515"
3	
skills	"watson"
mean_salary	"160515"
4	
skills	"datarobot"
mean_salary	"155486"
5	
skills	"gitlab"
mean_salary	"154500"
6	
skills	"swift"
mean_salary	"153750"
7	
skills	"jupyter"
mean_salary	"152777"
8	
skills	"pandas"
mean_salary	"151821"
9	
skills	"elasticsearch"
mean_salary	"145000"
10	
skills	"golang"
mean_salary	"145000"
11	
skills	"numpy"
mean_salary	"143513"
12	
skills	"databricks"
mean_salary	"141907"
13	
skills	"linux"
mean_salary	"136508"
14	
skills	"kubernetes"
mean_salary	"132500"
15	
skills	"atlassian"
mean_salary	"131162"
16	
skills	"twilio"
mean_salary	"127000"
17	
skills	"airflow"
mean_salary	"126103"
18	
skills	"scikit-learn"
mean_salary	"125781"
19	
skills	"jenkins"
mean_salary	"125436"
20	
skills	"notion"
mean_salary	"125000"
21	
skills	"scala"
mean_salary	"124903"
22	
skills	"postgresql"
mean_salary	"123879"
23	
skills	"gcp"
mean_salary	"122500"
24	
skills	"microstrategy"
mean_salary	"121619"

*/