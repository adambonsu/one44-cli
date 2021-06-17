# frozen_string_literal: true

module One44
  module CLI
    module Helpers
      def answer
        gets.chomp
      end

      def clean(answer)
        Integer(answer).to_i
      rescue StandardError
        nil
      end

      def ordered_questions(test, question_order)
        question_order == :random ? randomise(questions_from(test)) : questions_from(test)
      end

      def randomise(questions)
        questions.shuffle
      end

      def questions_from(test)
        load_tests_from_csv_file(test, "\t\t")
      end
    end
  end
end
