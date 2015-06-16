require 'spec_helper'

describe HttpRequestWrapper do
  it 'has a version number' do
    expect(HttpRequestWrapper::VERSION).not_to be nil
  end

  it 'http get' do
    html = HttpRequestWrapper::Request.get('www.google.com','/')
    expect(html).not_to be nil
  end

end
