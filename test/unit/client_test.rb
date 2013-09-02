require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  test "valid with all attributes" do
    c = clients(:one)
    assert c.valid?, "field is missing"
  end
  test "email is email" do
    c = clients(:two)
    assert c.valid?, "email format incorrect"
  end
  #TODO: validate phone number?
end
