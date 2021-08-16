puts 'Clearing old data...🧹'
User.destroy_all
User.reset_pk_sequence
Salon.destroy_all
Salon.reset_pk_sequence
Service.destroy_all
Service.reset_pk_sequence
Appointment.destroy_all
Appointment.reset_pk_sequence
Review.destroy_all
Review.reset_pk_sequence

puts 'Creating User...🙋🏽‍♀️'
user1 = User.create(name: "Shevon", user_name: "Shev", password: "1234567", email: "s@d.com", admin: false)
user2 = User.create(name: "Corletta", user_name: "Letta", password: "1234567", email: "c@d.com", admin: true)


puts 'Creating Salon...🎀'
salon1 = Salon.create(name: 'Beauty Parlor', location: "123 Main Rd, Brooklyn NY", specialize_in: ['blowout', 'braids'])
salon2 = Salon.create(name: 'Tress Galore', location: "567 Main Rd, Brooklyn NY", specialize_in: ['color', 'cut', 'styling'])

puts 'Creating Service...💇🏽‍♀️'
Service.create(name: 'Blowout', price: 30, salon_id: salon2.id)
Service.create(name: 'Braids', price: 60, salon_id: salon2.id)
Service.create(name: 'Color', price: 150, salon_id: salon1.id)
Service.create(name: 'Silk Press', price: 100, salon_id: salon1.id)
Service.create(name: 'Cut', price: 40, salon_id: salon1.id)

puts 'Creating Appointment...🗓'
Appointment.create(date: '2021-08-25' , start_time: '10:30', end_time: '11:30', description: "Need a blowout", user_id: user1.id, salon_id: salon1.id)
Appointment.create(date: '2021-08-27', start_time: '1:30', end_time: '2:30', description: "Need a cut", user_id: user2.id, salon_id: salon2.id)

puts 'Creating Review...📝'
Review.create(rating: 5, comment: 'This is a great salon', salon_id: salon1.id, user_id: user1.id)
Review.create(rating: 3, comment: 'Got the job done', salon_id: salon2.id, user_id: user2.id)