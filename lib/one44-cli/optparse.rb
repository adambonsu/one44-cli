# frozen_string_literal: true

module One44
  module CLI
    module Optparse
      require 'optparse'

      $one44_cli_options = {}
      option_parser = OptionParser.new do |opts|
        opts.on('-r', '--random-sort-questions') do
          $one44_cli_options[:random_sort_questions] = true
        end

        opts.on('--not-random-sort-questions') do
          $one44_cli_options[:random_sort_questions] = false
        end

        opts.on('-s ORDER', '--sort-questions=ORDER', /^random$/i) do |order|
          $one44_cli_options[:question_order] = order.downcase.to_sym
        end
      end
      option_parser.parse!

      unless $one44_cli_options&.dig(:question_order)
        $one44_cli_options[:question_order] = :random unless $one44_cli_options&.dig(:random_sort_questions) == false
      end
    end
  end
end
