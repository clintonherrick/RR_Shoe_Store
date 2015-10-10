require 'spec_helper'

describe Brand do

  it { should have_many :shoes }

  it 'returns brand name' do
    brand = Brand.new({:brand_name => "Nike"})
    expect(brand.brand_name).to eq ("Nike")
  end
end
