module SubdivisionSelect
  def self.configure
    yield(options)
  end

  def self.options
    @options ||= Configuration.new
  end

  class Configuration
    attr_accessor :priority_subdivisions

    def initialize
      @priority_subdivisions = {}
    end
  end
end
