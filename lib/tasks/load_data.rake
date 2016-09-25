require 'csv'

desc 'load ministerial meeting data'
task load_ministerial_meeting_data: :environment do
  clear_all_data
  # open each file in turn
  Dir.glob('../MinistersUnderTheInfluence-Data/bmmeetings*.csv').each do |file_name|
    year_number = /(\d{4})/.match(file_name)[1].to_i
    puts file_name
    CSV.open(file_name,headers: true).each do | row |
      break unless row['Minister']
      role_name    = row['Minister'].split(',')[0]
      person_name  = row['Minister'].split(',')[1]
      month_number = Date::ABBR_MONTHNAMES.index(row['Date']) 
      year_number  = 2013
      org_name     = row['Name of Organisation']
      purpose_of_meeting = row['Purpose of meeting']
      role = Role.find_or_create_by(name: role_name)
      person = Person.find_or_create_by(name: person_name)
      organisation = Organisation.find_or_create_by(name: org_name)
      meeting = Meeting.create(month:month_number,year: year_number,purpose_of_meeting: purpose_of_meeting)
      meeting.meeting_person_roles.create(person: person, role: role)
      meeting.meeting_organisation_people.create(organisation: organisation)
    end
  end
end

def clear_all_data
  MeetingPersonRole.destroy_all
  MeetingOrganisationPerson.destroy_all
  Meeting.destroy_all
  Organisation.destroy_all
  Person.destroy_all
  Role.destroy_all
end
