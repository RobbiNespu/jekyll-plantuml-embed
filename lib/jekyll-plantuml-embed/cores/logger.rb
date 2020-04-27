# frozen_string_literal: true

require 'jekyll-plantuml-embed/version'

module Jekyll::PlantUML
  class Logger
    def self.display_info
      self.log "Jekyll PlantUML #{Jekyll::PlantUML::VERSION}"
    end

    def self.log(content)
      self.output 'Jekyll plantUML', content
    end

    def self.output(title, content)
      puts "#{title.rjust(18)}: #{content}"
    end
  end
end
