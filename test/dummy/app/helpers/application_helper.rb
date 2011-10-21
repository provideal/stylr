module ApplicationHelper

  def example(options = {:print_example => true}, &block)
    content = [
      pre(:class => 'prettyprint', &block)
    ]

    if options[:print_example]
      content << [
        "Let's see how this looks...",
        content_tag(:div, capture(&block), :class => 'example')
      ]
    end

    content.join.html_safe
  end

  def pre(options = {}, &block)
    content = capture(&block)
    indentation_level = indentation_level(content)
    content = fix_indentation!(content, indentation_level) if indentation_level.present?
    content_tag(:pre, escape_once(content), options, false)
  end

  private

  def indentation_level(string)
    string.lines.each do |line|
      return line.index(/\S/) if line.present?
    end
  end

  def fix_indentation!(string, value)
    string.lines.collect do |line|
      line.gsub(/^\s{#{value}}/, '')
    end.join
  end
end
