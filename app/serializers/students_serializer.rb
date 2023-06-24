class StudentsSerializer < ActiveModel::Serializer
  attributes :name, :age, :major
  belongs_to :instructor, serializer: InstructorSerializer
end
