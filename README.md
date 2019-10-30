# Jekyll Root Directory  [![Gem Version](https://badge.fury.io/rb/jekyll-root-directory.svg)](https://badge.fury.io/rb/jekyll-root-directory) [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

**Jekyll Root Directory** is a ruby gem for [Jekyll](https://jekyllrb.com/) static site generator.  
It allows users to move static root sites files away from the root Jekyll directory by utilization of a `_root` directory.

## Installation
Add this line to your Gemfile:

```ruby
group :jekyll_plugins do
  gem "jekyll-root-directory"
end
```

And then execute:

    $ bundle

Alternatively install the gem yourself as:

    $ gem install jekyll-root-directory

and put this in your ``_config.yml`` 

```yaml
plugins:
  - jekyll-root-directory
```

## Usage

1. Create a `_root` directory.
2. Move your static root files to `_root` (favicon, robots.txt, humans.txt etc.).
3. Generate your site!
