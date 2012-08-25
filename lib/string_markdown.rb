require 'redcarpet'
require 'pygments'
require 'string_markdown/version'
require 'string_markdown/extention/string'

module StringMarkdown
  def to_md
    html_render = StringMarkdown::PygmentizeHTML.new hard_wrap: true, filter_html: true
    markdown = Redcarpet::Markdown.new html_render, autolink: true, fenced_code_blocks: true, space_after_headers: true
    begin
      text = self
      return markdown.render text
    rescue => e
      return e.message
      text
    end
  end
end

class StringMarkdown::PygmentizeHTML < Redcarpet::Render::HTML
  def block_code code, language
    ::Pygments.highlight code, lexer: language, options: {encoding: 'utf-8'} 
  end
end
