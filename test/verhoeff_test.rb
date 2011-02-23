require 'helper'

class VerhoeffTest < Test::Unit::TestCase
  context "The Verhoeff checksum algorithm" do
    should "work with correct, previously calculated checksums" do
      checksum = (1..23).inject(1) { |checksum, i| Verhoeff.checksum_of checksum }
      assert_equal 150493068613366131371194, checksum
    end

    should "work when given a String argument and return a Fixnum" do
      assert_equal 9998, Verhoeff.checksum_of("999")
    end

    should "validate a properly generated checksum" do
      assert_equal true, Verhoeff.valid?(13375)
      assert_equal false, Verhoeff.valid?(13735)
    end
  end
end
