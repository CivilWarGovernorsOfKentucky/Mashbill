module EntitiesHelper

  def certainty_clause(date)
    if date.match(/[cC]/)
      ' certainty="medium"'.html_safe
    else
      ''
    end
  end

  def when_clause(date)
    if date == 'unknown'
      ''
    else
      " when=\"#{date.gsub(/[cC]/, '')}\"".html_safe      
    end    
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
