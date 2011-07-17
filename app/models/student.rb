class Student < ActiveRecord::Base
  attr_accessible :lastname, :firstname, :IDnumber, :graduationyear, :grade, :address1, :address2, :zip, :email1, :confirmed1, :email2, :confirmed2, :telephone1, :telephone2

  validates :lastname, :presence => true
  validates :firstname, :presence => true
  validates :IDnumber, :presence => true


end
