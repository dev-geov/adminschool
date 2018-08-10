module StudentsHelper
  def is_enrolled(s)
    student = Student.find_by(fullname: s.fullname)
    enroll = Enrollment.find_by(student: student)
    enroll ? true : false
  end
end
