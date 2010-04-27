require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "LuhneyBin" do
  #valid luhn numbers
  [
    '4552720412345677',
    '5431111111111111',
    '378282246310005',
    '6011111111111117',
    '4111111111111111',
    '4012888888881881'
  ].each do |valid_string|
    it "should designate #{valid_string} as valid" do
      LuhneyBin.validate(valid_string).should be_true
    end
  end
  
  #invalid luhn numbers
  [
    '21341451',
    '12523453245',
    '234512423562345234',
    '215432425125213413',
    '1342134234783152425'
  ].each do |invalid_string|
    it "should designate #{invalid_string} as valid" do
      LuhneyBin.validate(invalid_string).should_not be_true
    end
  end
end
