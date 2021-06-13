# frozen_string_literal: true

module One44
  module CLI
    module Optparse
      require 'optparse'

      options = {}
      option_parser = OptionParser.new do |opts|
        # Create a switch
        opts.on("-r", "--random-sort-questions") do
          options[:random_sort_questions] = true
        end

        opts.on("--not-random-sort-questions") do
          options[:random_sort_questions] = false
        end

        opts.on("-s ORDER", "--sort-questions=ORDER") do |order|
          options[:question_order] = order
        end
      end
      option_parser.parse!
      puts options.inspect
    end
  end
end