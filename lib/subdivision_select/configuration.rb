module SubdivisionSelect
  class << self
    attr_accessor :options
  end

  def self.configure
    self.options ||= Configuration.new
    yield(options)
  end

  class Configuration
    attr_accessor :priority_subdivisions

    def initialize
      @priority_subdivisions = {}
    end
  end
end
