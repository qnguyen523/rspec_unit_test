class ProgrammingLanguage
  attr_reader :name
  def initialize(name = 'Ruby')
    @name = name
  end
end
RSpec.describe ProgrammingLanguage do
end