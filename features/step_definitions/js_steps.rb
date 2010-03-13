def cucumber_js(code)
  HolyGrail::XhrProxy.context = self
  @__page ||= Harmony::Page.new(HolyGrail::Assertions::XHR_MOCK_SCRIPT + rewrite_script_paths(@response.body.to_s))
  @__page.execute_js(code)
end

When /^I run the following javascript:$/ do |src|
  @_javascript_result = cucumber_js(src)

  page_with_xhr_mock_script = @__page.to_html
  page_without_xhr_mock_script = page_with_xhr_mock_script.gsub(HolyGrail::Assertions::XHR_MOCK_SCRIPT.strip, '')

  response.body = page_without_xhr_mock_script
end

Then /^the result of that javascript should be "([^\"]*)"$/ do |value|
  assert_equal value, @_javascript_result.to_s
end
