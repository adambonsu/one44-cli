# frozen_string_literal: true

def provide_test(answers, expected_marks)
  test.questions.each_with_index do |_question, index|
    test.provide answers[index], index
    expect(output.messages.last).to eq(expected_marks[index])
  end
end

Given('I provide the following Answers for these Test Questions:') do |table|
  questions_answers_and_marks = table.hashes

  questions = questions_answers_and_marks.map { |row| row['question'] }
  answers = questions_answers_and_marks.map { |row| row['answer'].to_i }
  expected_marks = questions_answers_and_marks.map { |row| row['mark'] }

  test.start(game, questions)
  provide_test answers, expected_marks
end

When('my Test Result will be {word}') do |result|
  test.result
  expect(output.messages).to include result
end
