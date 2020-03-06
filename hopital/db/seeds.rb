
40.times do |i|
	Appoitment.create(date: Time.now, doctor_id: rand(1..50), patient_id: rand(1..70))
end