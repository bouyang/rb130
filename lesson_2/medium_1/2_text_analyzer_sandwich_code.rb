class TextAnalyzer
  def process
    file = File.open('/Users/ouyang/Documents/Launch School/RB130/lesson_2/medium_1/sample_text.txt')
    yield(file)
    file.close
  end
end

analyzer = TextAnalyzer.new
analyzer.process do |file|
  paragraphs = 1
  file.each do |line|
    if line == "\n"
      paragraphs += 1
    end
  end
  puts "#{paragraphs} paragraphs"
end

analyzer.process do |file|
  lines = 0
  file.each do |line|
    lines += 1
  end
  puts "#{lines} lines"
end

analyzer.process do |file|
  words = 0
  file.each do |line|
    words += line.split.size
  end
  puts "#{words} words"
end