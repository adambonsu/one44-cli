# frozen_string_literal: true

Given('the {string} Test contains the following Questions:') do |test_name, questions|
  @test_name = test_name
  @questions = questions.raw.flatten
  steps %{
    Given a file named "#{@test_name}" with:
      """
      #{@questions.join("\n")}
      """
  }
end

Then /^the output should match "([^"]*)"$/ do |output|
  steps %{
    Then stdout should contain "#{output}"
  }
end

Then('I should be prompted to provide an answer to the first Question, {string}') do |first_question|
  steps %{
    Then stdout should contain "#{first_question}"
  }
end
