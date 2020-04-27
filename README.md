# jekyll-plantuml

[![Build Status](https://travis-ci.org/robbinespu/jekyll-plantuml-embed.svg?branch=master)](https://travis-ci.org/robbinespu/jekyll-plantuml-embed)
[![Gem Version](https://badge.fury.io/rb/jekyll-plantuml-embed.svg)](https://badge.fury.io/rb/jekyll-plantuml-embed)
[![Maintainability](https://api.codeclimate.com/v1/badges/aafba8fb4df9ac92e485/maintainability)](https://codeclimate.com/github/RobbiNespu/jekyll-plantuml-embed/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/cd56b207f327603662a1/test_coverage)](https://codeclimate.com/github/robbinespu/jekyll-plantuml/test_coverage)

A Jekyll plugin to provide powerful supports for table, mathjax, plantuml, etc.

## Table of Contents

- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
  - [1. PlantUML Usage](#3-plantuml-usage)
- [Credits](#credits)
- [Contributing](#contributing)
- [License](#license)

## Requirements
* Ruby >= 2.3.0

## Installation

Add jekyll-plantuml plugin in your site's `Gemfile`, and run `bundle install`.

```ruby
gem 'jekyll-plantuml-embed'
```

Add jekyll-plantuml to the `gems:` section in your site's `_config.yml`.

```yml
plugins:
  - jekyll-plantuml-embed
```

## Usage


### 1. PlantUML Usage
[PlantUML](http://plantuml.sourceforge.net/) is a component that allows to quickly write:
 * sequence diagram,
 * use case diagram,
 * class diagram,
 * activity diagram,
 * component diagram,
 * state diagram
 * object diagram


There are two ways to create a diagram in your Jekyll blog page:

```markdown
@startuml
Bob -> Alice : hello
@enduml
```

or

````markdown
``` plantuml
Bob -> Alice : hello world
```
````

## Credits

- [Jekyll](https://github.com/jekyll/jekyll) - A blog-aware static site generator in Ruby.
- [MultiMarkdown](https://fletcher.github.io/MultiMarkdown-6) - Lightweight markup processor to produce HTML, LaTeX, and more.
- [markdown-it-multimd-table](https://github.com/RedBug312/markdown-it-multimd-table) - Multimarkdown table syntax plugin for markdown-it markdown parser.

## Contributing

Issues and Pull Requests are greatly appreciated. If you've never contributed to an open source project before I'm more than happy to walk you through how to create a pull request.

You can start by [opening an issue](https://github.com/robbinespu/jekyll-plantuml-embed/issues/new) describing the problem that you're looking to resolve and we'll go from there.

## License
This software is licensed under the [MIT license](https://opensource.org/licenses/mit-license.php) © robbinespu.
