class SimpleWriter
  def initialize(path)
    @file = File.open(path, 'w')
  end

  def write_line(line)
    @file.print(line)
    @file.print("\n")
  end

  def pos
    @file.pos
  end

  def rewind
    @file.rewind
  end

  def close
    @file.close
  end
end

#DESIGN PATTERN - DECORATOR PATTERN
class Decorator
  def initialize(real_writer)
    @real_writer = real_writer
  end

  def write_line(line)
    raise 'Called abstract method: write_line'
  end

  def pos
    raise 'Called abstract method: pos'
  end

  def rewind
    raise 'Called abstract method: rewind'
  end

  def close
    raise 'Called abstract method: close'
  end
end

class NumberingWriterDecorator < Decorator
 def initialize(real_writer)
    super(real_writer)
    @line_number = 1
  end

  def write_line(line)
    @real_writer.write_line("#{@line_number}: #{line}")
    @line_number += 1
  end
end

class TimeStampingWriter < Decorator
  def write_line(line)
    @real_writer.write_line("#{Time.new}: #{line}")
  end
end

writer = TimeStampingWriter.new(NumberingWriterDecorator.new(SimpleWriter.new('final.txt')))
#writer = NumberingWriterDecorator.new(TimeStampingWriter.new(SimpleWriter.new('final.txt')))
writer.write_line('Hello out there')
writer.write_line('Hello word')