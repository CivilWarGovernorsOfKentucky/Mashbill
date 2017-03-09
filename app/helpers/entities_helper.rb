module EntitiesHelper
  
  def format_date(date)
    Date.parse(date).to_s
  end
  
  def render_markdown(source)
    renderer = Redcarpet::Render::HTML.new(no_links: true, hard_wrap: true)
    markdown = Redcarpet::Markdown.new(renderer, extensions = {})
    markdown.render(source)
  end
  
  def format_biography(markdown)
    render_markdown(markdown)
  end

  def format_bibliography(markdown)
    render_markdown(markdown)
  end
end
