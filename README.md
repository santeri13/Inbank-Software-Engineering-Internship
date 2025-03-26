# Inbank-Software-Engineering-Internship
Task for internship on position Inbank Software Engineering Internship 2025 by Santeri Pohjartanta

#Task 1(TICKET-101)

As part of task was implemented scoring algorithm for calculating scredit score of customer as method getCreditScore(line 117-118) and used in calculateApprovedLoan method (line 69-71) in DecisionEngine.java.
Also was implemented desiscion engine to provide maximum possible sum for loan for custeomer based on the provided ID, credit modifier and provided loan of customer.
- By intern was integrated part which find suitable period of loan based on requested loan by client (line 59-61).
- Also, was added function for finding credit score of customer which provide error messgae "No valid loan found!" for client if credit score is lower than 0.1 (line 69-71).
Was done modifications for fronetend to provide better results from design perspective.
- As part of it was changed if clause that results show only when frontned recive results and not recive error mmessages from backend (line 45). It was done to show costumer that suitable loan was not found by provide parameters and do not provide old parameters and curent one.

#Task 2(TICKET-102)

As part of it was integrated age for clarification if customer is older enough to take laons.
- For that was created age_field.dart temaplate
- This template is used in loan_form.dart (line 91-97)
- It check if customer is 18 years old or older and return error message if customer is not.
- Also data for backend would be not pushed if customer is not 18 years old (line 87).
- Also as current limitation maximum age is 99 years old. Could be fixed in futre version.

#Additional fixes

In process of review backend and frontend code was found difiriences in parameters from provided parameters in paper with tasks.
- In paper was provied that minimum loan could be 12 months and maximum 48 but in frontend and backend parameters it was 6 till 60 months. Parameters was changed based on provied in paper.

#Remarks
In task for implmenting credit score was not understandable if need to use loan amount which is provided by customer or loan amount calculated by backend.
Examples of ID which are used in paper is different from which are used in tests in backend.
In tasks 2 was needed to implment age restriction but from text is not clear if need to implement only age restriction or also require to add field for providing country frm which customer is and use it to find if customer is old enught.

#Complains
Some of remarks was send as questions for person who send task paper by email. 3 email was send (2 with questions, 1 with clarification if emails is recived) and I do not recive any answer.

Copy of emails:
![Screenshot 2025-03-27 010954](https://github.com/user-attachments/assets/4a28d675-5bfc-42b8-b0e9-8d27dace0a46)

![Screenshot 2025-03-27 011036](https://github.com/user-attachments/assets/64578121-13ad-4513-ba42-351c50423ba9)

![Screenshot 2025-03-27 011131](https://github.com/user-attachments/assets/6e21aa36-f3b7-4c82-a198-c2bc51dd6819)
