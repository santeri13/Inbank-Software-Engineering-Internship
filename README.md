# Inbank-Software-Engineering-Internship
Task for internship on position Inbank Software Engineering Internship 2025 by Santeri Pohjartanta

## Task 1(TICKET-101)

As part of the task scoring algorithm was implemented for calculating the credit score of the customers as the method getCreditScore(lines 117-118) and used in the calculateApprovedLoan method (lines 69-71) in DecisionEngine.java.
Also, a decision engine was implemented to provide the maximum possible sum for a loan for the customer based on the provided ID, credit modifier, and loan sum provided by the customer.
- By intern was integrated part which finds the suitable loan period based on the client's requested loan (line 59-61).
- Also, a function was added to find the customers' credit score, which provided the error message "No valid loan found!" for the clients if the credit score is lower than 0.1 (lines 69-71).
Done modifications for frontend to provide better results from a design perspective.
- As part of it was changed "if" clause that results show only when the frontend receives results and not receive error messages from the backend (line 45). It was done to show the customer that a suitable loan was not found by the provided parameters and did not provide old parameters and a current one.

## Task 2(TICKET-102)

As part of the task, the age field was integrated to clarify if the customer is old enough to take loans.
- For that, age_field.dart was created template
- This template is used in loan_form.dart (line 91-97)
- It checks if the customer is 18 years old or older and returns an error message if the customer is not.
- Also, data for the backend would not be pushed if the customer is not 18 years old (line 87).
- Also, as the current limitation, the maximum age is 99 years old. It could be fixed in the future version.

## Additional fixes

In the review process, differences in parameters from the provided parameters in the paper with tasks were found in the backend and frontend code.
- In the paper, the minimum loan could be 12 months and a maximum of 48, but it was for a minimum 6 months and for a maximum 60 months in frontend and backend parameters. Parameters were changed based on the information provided in the paper.

## Remarks
The task of implementing credit scores was not understandable if need to use the loan amount which is provided by the customer or the loan amount calculated by the backend.

Examples of IDs that are used in the paper are different from those that are used in tests in the backend.

In tasks, 2 was needed to implement an age restriction, but from the text, it was not clear if need to implement only an age restriction or also to add a field for providing the country from which the customer is and use it to find if the customer is old enough.

## Complains
Some of the remarks were sent as questions for the person who sent the email with the task paper. 3 emails were sent (2 with questions and 1 with clarification if emails are received), and I did not receive any answers.

Copy of emails:
![Screenshot 2025-03-27 010954](https://github.com/user-attachments/assets/4a28d675-5bfc-42b8-b0e9-8d27dace0a46)

![Screenshot 2025-03-27 011036](https://github.com/user-attachments/assets/64578121-13ad-4513-ba42-351c50423ba9)

![Screenshot 2025-03-27 011131](https://github.com/user-attachments/assets/6e21aa36-f3b7-4c82-a198-c2bc51dd6819)
