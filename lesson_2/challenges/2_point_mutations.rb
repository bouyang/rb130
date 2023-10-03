class DNA
  def initialize(seq)
    @seq = seq
  end

  def hamming_distance(other_seq)
    result = 0

    if @seq.length <= other_seq.length
      seq1 = @seq
      seq2 = other_seq
    else
      seq1 = other_seq
      seq2 = @seq
    end

    seq1.chars.each_with_index do |base, idx|
      result += 1 if base != seq2[idx]
    end
    result
  end
end