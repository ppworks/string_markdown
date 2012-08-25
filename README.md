# StringMarkdown

Add Strning#to_md

## Installation

Add this line to your application's Gemfile:

    gem 'string_markdown'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install string_markdown

## Usage

```
text = <<MARKDOWN
# level1 header
## level2 header
* list
* list

http://example.com
MARKDOWN

text.to_md
```

```
<h1>level1 header</h1>\n\n<h2>level2 header</h2>\n</div>\n\n<ul>\n<li>list</li>\n<li>list</li>\n</ul>\n\n<p><a href=\"http://example.com\">http://example.com</a></p>\n
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
