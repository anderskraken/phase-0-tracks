my_dad_bag = {
  baby_accessories_bag: {
    nappies: 4,
    zinc_ointment: 1,
    nappie_bag: 10
    },
  wallet: [
    'debit card',
    'credit card',
    'gym membership card'
    ],
  food: [
        'banana',
        {
          'apple & pear squeeze pouch' => 'opened',
          'carrot juice' => 'unopened'
        },
        'water'
      ] 
    }

p my_dad_bag[:baby_accessories_bag][:nappies]

p my_dad_bag[:food][0]

p my_dad_bag[:food][1]['apple & pear squeeze pouch']

