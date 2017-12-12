module EntitiesHelper
  
  def format_date(date)
    date
  end
  
  def render_markdown(source)
    renderer = Redcarpet::Render::HTML.new(no_links: true, hard_wrap: true)
    markdown = Redcarpet::Markdown.new(renderer, extensions = {})
    markdown.render(source)
  end
  
  def format_biography(markdown)
    text = render_markdown(markdown)
    text.gsub!("<em>","<hi rend=\”italic\”>")
    text.gsub!("</em>","</hi>") 
    text 
  end

  def format_bibliography(markdown)
    text = render_markdown(markdown)
    text.gsub!("<p>","")
    text.gsub!("</p>","")
    text.gsub!("<em>","<hi rend=\"italic\">")
    text.gsub!("</em>","</hi>")    
    text
  end
end
