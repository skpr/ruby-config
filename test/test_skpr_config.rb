
require "skpr_config"
require "test/unit"

class TestSkprConfig < Test::Unit::TestCase

  def test_load
    SkprConfig.load(__dir__ + "/example.json")
    assert_equal(ENV["FOO"], "bar")
    assert_equal(ENV["WHIZZ__POP"], "bang")
  end

end
