Feature: Pupil Submits Answer

  Pupil is presented with mental math questions
  Have 5 minutes to provide all answers


  Scenario: Pupil Submits Correct Answer - Mark is CORRECT

    Given I provide a correct Answer to a Test Question:
      | question | answer |
      | 1x5      | 5      |
    Then the Mark for my Answer will be CORRECT


  Scenario: Pupil Submits Incorrect Answer - Mark is INCORRECT

    Given I provide an incorrect Answer to a Test Question:
      | question | answer |
      | 1x8      | 9      |
    Then the Mark for my Answer will be INCORRECT