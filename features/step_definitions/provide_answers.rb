# frozen_string_literal: true

def provide_answer(answer)
  type(unescape_text("#{answer}"))
end
def provide_test(questions, answers, expected_marks)
  provide_answer  answers.join("\n")
  questions.each_with_index do |_question, index|
    provide_answer answers[index]
    expect(all_stdout).to include expected_marks[index]
  end
end

Given('I provide the following Answers for these {string} Test Questions:') do |test_name, table|
  questions_answers_and_marks = table.hashes

  @questions = questions_answers_and_marks.map { |row| row['question'] }
  @answers = questions_answers_and_marks.map { |row| row['answer'].to_i }
  @expected_marks = questions_answers_and_marks.map { |row| row['mark'] }

  @test_name = test_name
  create_test_file(@test_name, @questions.join("\n"))

  start_test("one44-cli -t '#{test_name}'")
  provide_test(@questions, @answers, @expected_marks)
end

When('my Test Result will be {word}') do |result|
  expect(all_stdout).to include result
end
