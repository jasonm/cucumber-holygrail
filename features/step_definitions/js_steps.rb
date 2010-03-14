def cucumber_js(code)
  HolyGrail::XhrProxy.context = self
  @__page ||= Harmony::Page.new(HolyGrail::Assertions::XHR_MOCK_SCRIPT + rewrite_script_paths(@response.body.to_s))
  @__javascript_result = @__page.execute_js(code)

  page_without_xhr_mock_script = @__page.to_html.gsub(HolyGrail::Assertions::XHR_MOCK_SCRIPT.strip, '')
  response.body = page_without_xhr_mock_script
end

When /^I run the following javascript:$/ do |src|
  cucumber_js(src)
end

Then /^the result of that javascript should be "([^\"]*)"$/ do |value|
  assert_equal value, @__javascript_result.to_s
end
