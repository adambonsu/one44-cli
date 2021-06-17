# frozen_string_literal: true

module One44
  module CLI
    module Optparse
      require 'optparse'

      class Parser
        def self.parse(args)
          options = {}
          option_parser = OptionParser.new do |opts|
            opts.on('-r', '--random-sort-questions') do
              options[:random_sort_questions] = true
            end

            opts.on('--not-random-sort-questions') do
              options[:random_sort_questions] = false
            end

            opts.on('-s ORDER', '--sort-questions=ORDER', /^random$/i) do |order|
              options[:question_order] = order.downcase.to_sym
            end

            opts.on('-t TEST', '--path-to-test-file=TEST', '[Mandatory] Specify the path to the test file.') do |test|
              options[:test] = test
            end
          end
          process_options(option_parser, options, args)
        end

        def self.process_options(option_parser, options, args)
          option_parser.parse!(args)
          unless options[:test]
            puts option_parser.help
            exit 1
          end
          options
        rescue Exception => e
          puts "Exception encountered: #{e}"
          exit 1
        end
      end
    end
  end
end
