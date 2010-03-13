When /^I run the following javascript:$/ do |src|
  @_javascript_result = js(src)
end

Then /^the result of that javascript should be "([^\"]*)"$/ do |value|
  assert_equal value, @_javascript_result.to_s
end
