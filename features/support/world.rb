# frozen_string_literal: true

module KnowsOne44
  def game
    @game ||= 'indigo'
  end

  def output
    @output ||= One44::Output.new
  end

  def test
    @test ||= One44::Test.new(output)
  end
end

World(KnowsOne44)
