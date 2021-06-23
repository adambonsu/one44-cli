# frozen_string_literal: true

def provide_test(answers)
  type(unescape_text(answers))
end

Given('I provide the following Answers for these {string} Test Questions:') do |test_name, table|
  questions_answers_and_marks = table.hashes

  @questions = questions_answers_and_marks.map { |row| row['question'] }
  @answers = questions_answers_and_marks.map { |row| row['answer'].to_i }
  @expected_marks = questions_answers_and_marks.map { |row| row['mark'] }

  @test_name = test_name
  create_test_file(@test_name, @questions.join("\n"))

  @one44_command = "one44-cli -t '#{test_name}'"
  start_test(@one44_command)
  provide_test(@answers.join("\n"))
end

When(/I provide a(?:n in| )correct Answer to a Test Question:/) do |table|
  questions_answers = table.hashes

  @questions = questions_answers.map { |row| row['question'] }
  @answers = questions_answers.map { |row| row['answer'].to_i }

  @test_name = 'test'
  create_test_file(@test_name, @questions.join("\n"))

  @one44_command = "one44-cli -t '#{@test_name}'"
  start_test(@one44_command)
  provide_test(@answers.join("\n"))
end

When('my Test Result will be {word}') do |result|
  expect(all_stdout).to include result
end

When('the Mark for my Answer will be {word}') do |mark|
  expect(all_stdout).to include mark
end
