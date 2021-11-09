# frozen_string_literal: true

require "test_helper"
require "webmock/minitest"

class IpgeobaseTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Ipgeobase::VERSION
  end

  def setup
    @ip = "24.48.0.1"
  end

  def test_lookup
    stub_request(:get, "http://ip-api.com/xml/#{@ip}")
      .to_return(body: File.new("./test/request.xml"), status: 200)

    meta = Ipgeobase.lookup(@ip)
    assert_equal meta.city, "Montreal"
    assert_equal meta.country, "Canada"
    assert_equal meta.country_code, "CA"
    assert_equal meta.lat, "45.5808"
    assert_equal meta.lon, "-73.5825"
  end
end
