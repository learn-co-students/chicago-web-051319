require_relative '../config/environment.rb'

describe 'Hero' do
  let(:abilities_array) do
    [
       {
           name: 'Super Strength',
           coolness: 3
       },
       {
           name:'Flight',
           coolness: 5
       },
       {
           name: 'Lightning Blast',
           coolness: 10
       }
   ]
  end

  let(:thor) do
    Hero.new(abilities_array)
  end
  it 'has readable abilities' do
   # p thor.abilities == abilities_array
    expect(thor.abilities).to eq(abilities_array)
  end

  it 'can show an ordered ability names list' do
    abilities_array = [
       {
           name: 'Super Strength',
           coolness: 3
       },
       {
           name:'Flight',
           coolness: 5
       },
       {
           name: 'Lightning Blast',
           coolness: 10
       }
   ]
   thor = Hero.new(abilities_array)
    expect(thor.ordered_abilities).to eq(["Flight", "Lightning Blast", "Super Strength"])
  end

  it 'can return the coolest ability' do
    expect(thor.coolest_ability).to eq({
        name: 'Lightning Blast',
        coolness: 10
    })

    black_widow = Hero.new([{name: "Interrogation", coolness: 9}])

    expect(black_widow.coolest_ability).to eq({
        name: 'Interrogation',
        coolness: 9
    })
  end

  it 'can accept a new ability into the abilities array' do
    thor.add_ability({name: "Drink Beer", coolness: 9.4})

    expect(thor.abilities.count).to be(4)
  end

  xit 'will only allow hashes as new abilities to add' do
    expect{thor.add_ability("Brotherly Wisdom")}.to raise_error(ArgumentError)
  end
end
