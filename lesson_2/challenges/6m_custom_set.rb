class CustomSet
  attr_reader :set

  def initialize(element=[])
    @set = Hash.new
    element.each do |ele|
      @set[ele] = ele
    end
  end

  def empty?
    @set.empty?
  end

  def contains?(element)
    @set.key?(element)
  end

  def subset?(collection)
    @set.all? do |set_item, _|
      collection.set.key?(set_item)
    end
  end

  def disjoint?(collection)
    @set.none? do |set_item, _|
      collection.set.key?(set_item)
    end
  end

  def eql?(collection)
    @set.keys.sort == collection.set.keys.sort
  end

  def ==(collection)
    @set.keys.sort == collection.set.keys.sort
  end

  def add(element)
    @set[element] = element
    self
  end

  def intersection(collection)
    result = @set.select do |key, _|
      collection.set.key?(key)
    end
    CustomSet.new(result.keys)
  end

  def difference(collection)
    result = @set.select do |key, _|
      !collection.set.key?(key)
    end
    CustomSet.new(result.keys)
  end

  def union(collection)
    result = []
    @set.each do |key, _|
      result << key
    end
    collection.set.each do |key, _|
      result << key
    end
    CustomSet.new(result)
  end

end
