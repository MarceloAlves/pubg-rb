require "bundler/setup"
require "webmock/rspec"
require "support/fake_pubg"
require "pry"
require "pubg-rb"

WebMock.disable_net_connect!(allow_localhost: true)

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.before(:each) do
    telemetry_file = File.open(File.dirname(__FILE__) + "/support/fixtures/telemetry.json", "rb").read
    stub_request(:any, /api.playbattlegrounds.com/).to_rack(FakePubg)
    stub_request(:any, /telemetry-cdn.playbattlegrounds.com/).to_return(body: telemetry_file)

    @pubg = PUBG::Client.new("ultra_key", "xbox-na")
  end
end
