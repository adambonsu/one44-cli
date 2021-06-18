# frozen_string_literal: true

Given('the {string} Test contains the following Questions:') do |test_name, questions|
  @test_name = test_name
  @questions = questions.raw.flatten
  steps %(
    Given a file named "#{@test_name}" with:
      """
      #{@questions.join("\n")}
      """
  )
end

When(/^I run one44-cli interactively: `([^`]*)`$/) do |cmd|
  run_command(sanitize_text(cmd))
end

Then(/^the output should match "([^"]*)"$/) do |output|
  expect(all_stdout).to include output
end

Then('I should be prompted to provide an answer to the first Question, {string}') do |first_question|
  expect(all_stdout).to include first_question
end
