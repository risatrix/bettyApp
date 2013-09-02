require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  test "valid with all attributes" do
    c = clients(:one)
    assert c.valid?, "field is missing"
  end
end
