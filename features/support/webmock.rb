require 'webmock/cucumber'

Before do
  stub_request(:get, "https://random-word-api.herokuapp.com/word").to_return(:status => 200, :headers => {}, :body => "testword")
end
