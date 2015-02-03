class ParagraphFragment < MarkdownFragment

  def render_on(pdf_object, options = {})
    arguments = _default_render_options.merge(options)
    pdf_object.pad(pdf_object.height_of(" ")) do
      pdf_object.text @content.join(' '), arguments
    end
  end

  private

  def _default_render_options
    options = { :size => 12, :align => :left, :leading => 2 }
    options = options.merge({:inline_format => true})
    options
  end

end
