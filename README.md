​​# Pewlett-Hackard-Analysis

## Overview of the analysis:
The goal for this project is to identify what are the next job titles that need to be replaced in the near future and find out who is eligible  to participate in the mentorship program. 
## Results: 
Step 1: Create a list of  employees who are ready to be retired. Their date of birth would be between 1952 and 1955

![Screen Shot 2022-06-06 at 12 32 40 AM](https://user-images.githubusercontent.com/103322251/172097714-bea3deee-d15c-4cdc-b80b-35e0ab86b802.png)

This data is not cleaned well, we still can see some duplicates of the employees due to the title change. SOme of the employees are already retired. 

Step 2: Create a list of unique employees who are ready to be retired and their recent titles. Those employees must be currently employed -  with to_date '9999-01-01')

![Screen Shot 2022-06-06 at 12 33 32 AM](https://user-images.githubusercontent.com/103322251/172097954-9589a2a4-ff88-4f44-8d72-b36c58089556.png)

We can use this data set to count the employees per each job title because duplicates were eliminated as well as already retired employees. 
Step 3: Create a list of employees by title  and count how many are about to retire

![Screen Shot 2022-06-06 at 12 34 05 AM](https://user-images.githubusercontent.com/103322251/172098034-4777726f-7f4f-48fa-9409-6399325d0d92.png)


Step 4: Create Mentorship Eligibility table: employees with their lates title, currently employed, DOB between 01/01/65 and 12/31/65

![Screen Shot 2022-06-06 at 12 34 39 AM](https://user-images.githubusercontent.com/103322251/172098109-c3b4a3da-7d7d-465f-9246-9e6667a9293b.png)



## Summary: 
1. According to the data we received, the hiring manager will have to replace 25916 Senior Engineers, 24926 Senior Staff members, 9285 Engineers,
7636 Staff members, 3603 Technique Leaders, 1090 Assistant Engineers and 2 Managers. 
2. I ran one additional query  to count how many  employees will be able to participate  in Mentorship program. 
![Screen Shot 2022-06-06 at 1 14 51 AM](https://user-images.githubusercontent.com/103322251/172099233-cd02b5a9-de3a-4d49-af59-8350c3a5b77f.png)

3. It appears that there is not enough staff to pass the  professional knowledge to the new hiers. Basically,  one  Senior Staff member will have to train 45 new hiers,  one Senior Engineer will have to train 48 new hiers, one regular staff member will have to train 49 new hires. 

There are not  enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees. A hiring manager will have to come up with some creative ideas on the onboarding and training process to avoid an HR crisis. 
My advice would be to start the hiring process earlier even before the position becomes available, so more senior people can pass the knowledge prior to retiring or increase the age range availability for Mentorship program. Make people with the DOB between 1956 and 1953 eligable for Mentorship program. It will make a big impact on the training program. See quesry results below:

![Screen Shot 2022-06-06 at 1 31 01 AM](https://user-images.githubusercontent.com/103322251/172101087-1c245fd1-5905-45d7-99ea-f50336ee57b9.png)


I'd also advise training in small groups to expedite the process. 


