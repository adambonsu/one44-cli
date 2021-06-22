# frozen_string_literal: true

module KnowsAruba
  def create_test_file(name, contents)
    write_file(name, unescape_text(contents))
  end
end

World(KnowsAruba)
