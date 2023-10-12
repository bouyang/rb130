class Element
  def initialize(data, next_ele=nil)
    @data = data
    @next_ele = next_ele
  end

  def datum
    @data
  end

  def tail?
    @next_ele == nil
  end

  def next
    @next_ele
  end
end

class SimpleLinkedList
  def initialize(input=nil)
    if input == nil
      @list = []
    else
      @list = []
      input.reverse.each do |ele|
        if @list.empty?
          @list.push(Element.new(ele))
        else
          @list.push(Element.new(ele, @list[-1]))
        end
      end
    end
  end

  def size
    @list.size
  end

  def empty?
    @list.empty?
  end

  def push(data)
    if @list.empty?
      @list.push(Element.new(data))
    else
      @list.push(Element.new(data, @list[-1]))
    end
  end

  def peek
    return nil if @list[-1].nil?
    @list[-1].datum
  end

  def head
    @list[-1]
  end

  def pop
    @list.pop.datum
  end

  def self.from_a(input)
    SimpleLinkedList.new(input)
  end

  def to_a
    result = []
    @list.reverse.each do |ele|
      result << ele.datum
    end
    result
  end

  def reverse
    list_r = SimpleLinkedList.new
    
    @list.reverse.each do |ele|
      list_r.push(ele.datum)
    end
    list_r
  end
end
