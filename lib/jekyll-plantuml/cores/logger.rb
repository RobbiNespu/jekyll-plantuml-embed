# frozen_string_literal: true

require 'jekyll-plantuml/version'

module Jekyll::PlantUML
  class Logger
    def self.display_info
      self.log "Jekyll PlantUML #{Jekyll::PlantUML::VERSION}"
      self.log 'A Jekyll plugin to provide powerful supports.'
      self.log 'https://github.com/robbinespu/jekyll-plantuml'
    end

    def self.log(content)
      self.output 'Jekyll plantUML', content
    end

    def self.output(title, content)
      puts "#{title.rjust(18)}: #{content}"
    end
  end
end
