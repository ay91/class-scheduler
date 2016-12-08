# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


s = Student.create(email: "foo@bar.com", password: "foobar", password_confirmation: "foobar")

c1 = Course.create(name: "Bahasa Malaysia 200: Bahasa Jiwa Bangsa", credit: 2 )
Slot.create(day: 1, start_time: '1970-01-01 10:00:00', end_time: '1970-01-01 12:00:00', course_id: c1.id)
Slot.create(day: 3, start_time: '1970-01-01 10:00:00', end_time: '1970-01-01 12:00:00', course_id: c1.id)

c2 = Course.create(name: "Computer Science 215: Software Engineering", credit: 3 )
Slot.create(day: 0, start_time: '1970-01-01 09:30:00', end_time: '1970-01-01 10:30:00', course_id: c2.id)
Slot.create(day: 2, start_time: '1970-01-01 09:30:00', end_time: '1970-01-01 10:30:00', course_id: c2.id)
Slot.create(day: 4, start_time: '1970-01-01 09:30:00', end_time: '1970-01-01 10:30:00', course_id: c2.id)

c3 = Course.create(name: "Math 221: Linear Algebra", credit: 3 )
Slot.create(day: 0, start_time: '1970-01-01 17:30:00', end_time: '1970-01-01 18:30:00', course_id: c3.id)
Slot.create(day: 0, start_time: '1970-01-01 17:30:00', end_time: '1970-01-01 18:30:00', course_id: c3.id)

c4 = Course.create(name: "Computer Science 201: Data Structures", credit: 3 )
Slot.create(day: 0, start_time: '1970-01-01 13:30:00', end_time: '1970-01-01 14:30:00', course_id: c4.id)
Slot.create(day: 2, start_time: '1970-01-01 13:30:00', end_time: '1970-01-01 14:30:00', course_id: c4.id)
Slot.create(day: 4, start_time: '1970-01-01 13:30:00', end_time: '1970-01-01 14:30:00', course_id: c4.id)

c5 = Course.create(name: "Computer Science 220: Algorithms", credit: 3 )
Slot.create(day: 0, start_time: '1970-01-01 11:30:00', end_time: '1970-01-01 12:30:00', course_id: c5.id)
Slot.create(day: 2, start_time: '1970-01-01 11:30:00', end_time: '1970-01-01 12:30:00', course_id: c5.id)
Slot.create(day: 4, start_time: '1970-01-01 11:30:00', end_time: '1970-01-01 12:30:00', course_id: c5.id)

c6 = Course.create(name: "Computer Science 250: Introduction to Website Design", credit: 4 )
Slot.create(day: 0, start_time: '1970-01-01 16:30:00', end_time: '1970-01-01 18:00:00', course_id: c6.id)
Slot.create(day: 2, start_time: '1970-01-01 16:30:00', end_time: '1970-01-01 18:00:00', course_id: c6.id)
Slot.create(day: 4, start_time: '1970-01-01 16:30:00', end_time: '1970-01-01 18:00:00', course_id: c6.id)

c7 = Course.create(name: "Math 220: Differential Equations", credit: 3 )
Slot.create(day: 0, start_time: '1970-01-01 17:30:00', end_time: '1970-01-01 18:30:00', course_id: c7.id)
Slot.create(day: 2, start_time: '1970-01-01 17:30:00', end_time: '1970-01-01 18:30:00', course_id: c7.id)
Slot.create(day: 4, start_time: '1970-01-01 17:30:00', end_time: '1970-01-01 18:30:00', course_id: c7.id)

c8 = Course.create(name: "English 201: Introduction to Literature", credit: 3 )
Slot.create(day: 0, start_time: '1970-01-01 14:00:00', end_time: '1970-01-01 15:00:00', course_id: c8.id)
Slot.create(day: 2, start_time: '1970-01-01 14:00:00', end_time: '1970-01-01 15:00:00', course_id: c8.id)
Slot.create(day: 4, start_time: '1970-01-01 14:00:00', end_time: '1970-01-01 15:00:00', course_id: c8.id)

c9 = Course.create(name: "English 201: Introduction to Literature", credit: 2 )
Slot.create(day: 1, start_time: '1970-01-01 08:30:00', end_time: '1970-01-01 10:00:00', course_id: c9.id)
Slot.create(day: 3, start_time: '1970-01-01 08:30:00', end_time: '1970-01-01 10:00:00', course_id: c9.id)

c10 = Course.create(name: "Badminton 101: Learning to Beat Chong Wei", credit: 1 )
Slot.create(day: 1, start_time: '1970-01-01 15:00:00', end_time: '1970-01-01 16:30:00', course_id: c10.id)
Slot.create(day: 3, start_time: '1970-01-01 15:00:00', end_time: '1970-01-01 16:30:00', course_id: c10.id)
