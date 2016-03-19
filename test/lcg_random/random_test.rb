require 'test_helper'

class RandomTest < Minitest::Test
  def test_next
    @seq1 = LcgRandom::Random.new(100)

    result01 = @seq1.next
    result02 = @seq1.next

    assert result01 != result02

    @seq2 = LcgRandom::Random.new(100)

    result11 = @seq2.next
    result12 = @seq2.next

    assert_equal result01, result11
    assert_equal result02, result12
  end

  def test_reset
    @seq = LcgRandom::Random.new(100)

    result01 = @seq.next
    result02 = @seq.next

    assert result01 != result02

    @seq.reset

    result11 = @seq.next
    result12 = @seq.next

    assert_equal result01, result11
    assert_equal result02, result12
  end
end
