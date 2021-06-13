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

      def randomise(questions)
        questions.shuffle
      end

      def questions
        load_tests_from_csv_file('bin/tests/Advanced Indigo.txt', "\t\t")
      end
    end
  end
end
