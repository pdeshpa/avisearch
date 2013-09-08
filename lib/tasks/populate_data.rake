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
            :scientific_name => row[2], 
            :family => row[3], 
            :order => row[4], 
            :marathi_name => row[5],
            :sanskrit_name => row[6],  
            :iucn_status => row[9]
          )

        new_bird.create_bird_body(
            :shape => row[10], 
            :size => row[11], 
            :color_primary => row[12], 
            :color_secondary => row[13], 
            :under_part_color => row[14], 
            :upper_part_color => row[15],
            :back_pattern => row[16], 
            :belly_pattern => row[17], 
            :breast_pattern => row[18]
          )

        new_bird.create_bird_head(
            :bill_shape => row[19], 
            :bill_size => row[20], 
            :bill_color => row[21],
            :eye_color => row[22], 
            :head_pattern => row[23], 
            :crown_color => row[24], 
            :forehead_color => row[25],
            :nape_color => row[26], 
            :throat_color => row[27], 
            :cere_color => row[28]
          )

        new_bird.create_bird_flight(
            :flight_pattern => row[29], 
            :wing_span => row[31], 
            :wing_shape => row[32], 
            :tail_shape => row[33], 
            :tail_pattern => row[34],
            :upper_tail => row[35], 
            :under_tail => row[36], 
            :leg_color => row[37]
          )
      end
      puts 'Done.'
    end

  end
end
