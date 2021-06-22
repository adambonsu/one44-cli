# frozen_string_literal: true

def provide_answer(answer)
  type(unescape_text(answer.to_s))
end

def provide_test(answers)
  provide_answer answers.join("\n")
end

Given('I provide the following Answers for these {string} Test Questions:') do |test_name, table|
  questions_answers_and_marks = table.hashes

  @questions = questions_answers_and_marks.map { |row| row['question'] }
  @answers = questions_answers_and_marks.map { |row| row['answer'].to_i }
  @expected_marks = questions_answers_and_marks.map { |row| row['mark'] }

  @test_name = test_name
  create_test_file(@test_name, @questions.join("\n"))

  start_test("one44-cli -t '#{test_name}'")
  provide_test(@answers)
end

When('my Test Result will be {word}') do |result|
  expect(all_stdout).to include result
end
