Feature: Pupil Receives Test Result

  If you get all answers to test questions correct => you pass
  If you get one or more answers incorrect => you fail

  Scenario: Pupil answers all questions correctly - result is PASS

    Given I provide the following Answers for these Test Questions:
      | question | answer | mark    |
      | 1x5      | 5      | CORRECT |
      | 2x8      | 16     | CORRECT |
      | 10x9     | 90     | CORRECT |
    Then my Test Result will be PASS


  Scenario: Pupil answers at least one question incorrectly - result is FAIL

    Given I provide the following Answers for these Test Questions:
      | question | answer | mark      |
      | 7x10     | 70     | CORRECT   |
      | 10x2     | 102    | INCORRECT |
      | 6x7      | 42     | CORRECT   |
    Then my Test Result will be FAIL
