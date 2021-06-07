# frozen_string_literal: true

def answer
  gets.chomp
end

def clean(answer)
  Integer(answer).to_i
rescue StandardError
  nil
end

def randomise(questions)
  questions.shuffle
end

def questions
  load_tests_from_csv_file('bin/tests/Advanced Indigo.txt', "\t\t")
end
