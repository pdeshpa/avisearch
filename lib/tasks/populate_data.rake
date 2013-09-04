require 'spreadsheet'

namespace :db do
  namespace :once do

    desc "populate birds data from excel sheet"
    task :populate_bird_information => :environment do
      book = Spreadsheet.open "#{Rails.root}/lib/data_files/bomh.xls"
      data_sheet = book.worksheet 'data'
      data_sheet.each 2 do |row|
        puts "Feeding information for: #{row[1]}"
        new_bird = Bird.create(
            :common_english_name => row[1], 
            :scientific_name => row[1], 
            :family => row[2], 
            :order => row[3], 
            :marathi_name => row[4],
            :sanskrit_name => row[5],  
            :iucn_status => row[8]
          )

        new_bird.create_bird_body(
            :shape => row[9], 
            :size => row[10], 
            :color_primary => row[11], 
            :color_secondary => row[12], 
            :under_part_color => row[13], 
            :upper_part_color => row[14],
            :back_pattern => row[15], 
            :belly_pattern => row[16], 
            :breast_pattern => row[17]
          )

        new_bird.create_bird_head(
            :bill_shape => row[18], 
            :bill_size => row[19], 
            :bill_color => row[20],
            :eye_color => row[21], 
            :head_pattern => row[22], 
            :crown_color => row[23], 
            :forehead_color => row[24],
            :nape_color => row[25], 
            :throat_color => row[26], 
            :cere_color => row[27]
          )

        new_bird.create_bird_flight(
            :flight_pattern => row[28], 
            :wing_span => row[30], 
            :wing_shape => row[31], 
            :tail_shape => row[32], 
            :tail_pattern => row[33],
            :upper_tail => row[34], 
            :under_tail => row[35], 
            :leg_color => row[36]
          )
      end
      puts 'Done.'
    end

  end
end
