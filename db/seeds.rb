
# Sample answers
Answer.create(key_name: 'team_name', key_value: 'Awesome Badgers', key_type: 'string')
Answer.create(key_name: 'cc_count', key_value: '0', key_type: 'integer')
Answer.create(key_name: 'cc_plus_billing_count', key_value: '0', key_type: 'integer')
Answer.create(key_name: 'dev_creds', key_value: 'SAMPLE_KEY1=OMG,SAMPLE_KEY2=WAT', key_type: 'csv_list')
Answer.create(key_name: 'user_creds_valid_count', key_value: '0', key_type: 'integer')
Answer.create(key_name: 'user_creds_invalid_count', key_value: '0', key_type: 'integer')
Answer.create(key_name: 'most_destructive_db_command', key_value: 'insert into answers () values();', key_type: 'string')
Answer.create(key_name: 'most_destructive_sh_command', key_value: 'ls', key_type: 'string')
Answer.create(key_name: 'place_100_dollar_order_command', key_value: 'RAILS_ENV=production bundle exec rails c', key_type: 'string')

# Sample names
names = [
  'Micheal Main',
  'Ying Yohe',
  'Ma Maza',
  'Sheree Steinert',
  'Kenneth Kellerman',
  'Analisa Alls',
  'Tyson Talmadge',
  'Cassey Cales',
  'Thu Towle',
  'Venita Venuti',
  'Digna Davie',
  'Shawanda Santucci',
  'Louis Livermore',
  'Sang Shimizu',
  'Lady Libby',
  'Virgie Verville',
  'Clarisa Crabb',
  'Fe Frady',
  'Melvin Mannella',
  'Consuela Calton',
  'Theressa Trask',
  'Roslyn Rumley',
  'Lucas Lines',
  'Seema Smiddy',
  'Ema Eberly',
  'Kaylee Kunst',
  'Faustino Fertig',
  'Jenise Just',
  'Gaynelle Girardi',
  'Lynsey Ledet',
  'Lamonica Lamarca',
  'Addie Ashworth',
  'Kenia Kreger',
  'Jamar Jorden',
  'Eveline Eichman',
  'Edmond Engel',
  'Allan Ayers',
  'Donte Demma',
  'Velvet Vandam',
  'Corina Coyer',
  'Irmgard Insley',
  'Amberly Aguirre',
  'Kathern Kersh',
  'Elouise Eber',
  'Mariam Mcewan',
  'Jeff Julia',
  'Hortensia Hertz',
  'Neal Nipp',
  'Kasey Kintzel',
  'Bryanna Brummitt'
]

# Address parts
streets = [
  'Alfred',
  'Commodore',
  'Scott',
  'Spalding',
  'Some Type of Lake',
  'Varying Blossoms',
  'Magical Dragons',
  'Scientific',
  'Technology',
  'Sparse',
  'Ponce',
  'Peachtree',
  'Other Peachtree',
  'Third Peachtree',
  'Peaches Trees',
  'Ptree'
]

street_types = [
  'Street',
  'Way',
  'Circle',
  'Drive',
  'Blvd',
  'Hwy'
]

cities = [
  'Atlanta',
  'Norcross',
  'Brookhaven',
  'Athens',
  'Sandy Springs',
  'Columbia'
]

states = [ 'GA', 'TN', 'AL', 'FL', 'SC', 'NC' ]

names.each do |name|
  first_name, last_name = name.split
  User.create(
    first_name: first_name,
    last_name: last_name,
    street_address_1: "#{rand(1..10000)} #{streets.sample}",
    city: cities.sample,
    state: states.sample,
    zip_code: "#{rand(10000..99999)}",
    username: "#{first_name}.#{last_name}".downcase,
    password: (0...rand(8..24)).map { [('a'..'z').to_a, ('A'..'Z').to_a, ('0'..'9').to_a].flatten.sample }.join
  )
end
