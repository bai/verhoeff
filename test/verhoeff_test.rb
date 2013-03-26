require 'helper'

class VerhoeffTest < Test::Unit::TestCase
  def test_work_with_correct_previously_calculated_checksums
    checksum = (1..23).inject(1) { |checksum, i| Verhoeff.checksum_of checksum }
    assert_equal 150493068613366131371194, checksum
  end

  def test_work_when_given_a_string_argument_and_return_a_fixnum
    assert_equal 9998, Verhoeff.checksum_of("999")
  end

  def test_validate_a_properly_generated_checksum
    assert_equal true, Verhoeff.valid?(13375)
    assert_equal false, Verhoeff.valid?(13735)
  end
end
