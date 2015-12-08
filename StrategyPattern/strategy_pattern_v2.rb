#DESIGN PATTERN - TEMPLATE METHOD PATTERN
#EN ESTE EJEMPLO SE PASA COMO PARAMETRO A LA FUNCION UNA REFERENCIA A LA PROPIA CLASE
class Formatter
  def output_report context
    raise 'Abstract method called'
  end
end

class HTMLFormatter < Formatter
  def output_report context
    puts '<html>'
    puts '  <head>'
    puts "    <title>#{context.title}</title>"
    puts '  </head>'
    puts '  <body>'
    context.text.each do |line|
      puts "    <p>#{line}</p>"
    end
    puts '  </body>'
    puts '</html>'
  end
end

class PlainTextFormatter < Formatter
  def output_report context
    puts "*****#{context.title}*****"
    context.text.each do |line|
      puts line
    end
  end
end

class Report
  attr_reader :title, :text
  attr_accessor :formatter
  
  def initialize formatter
    @title = 'Monthly Report'
    @text = ['Things are going', 'really, really well']
    @formatter = formatter
  end
  
  def output_report
    @formatter.output_report self
  end
end

#--------------------- Client ---------------------
report_html_formatter = Report.new(HTMLFormatter.new)
#report_html_formatter.output_report

report_plain_text_formatter = Report.new(PlainTextFormatter.new)
report_plain_text_formatter.output_report