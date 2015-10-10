require 'spec_helper'

describe Store do

  it { should have_many :shoes }

  it 'returns store name' do
    store = Store.new({:store_name => "Jump, Dive and Sale"})
    expect(store.store_name).to eq ("Jump, Dive and Sale")
  end


  it 'Capitalized store name' do
    store = Store.create({:store_name => "shoe barn"})
    expect(store.store_name). to eq ("Shoe Barn")
  end
end
