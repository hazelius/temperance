class Employee

  def initialize(mapping_info)
    @@file_name = mapping_info["file"]
    @@headers = mapping_info["columns"].map {|column| column["name"] }
  end

  def readCsv
    CSV.open(@@file_name + '.csv','w', :headers => @@headers, :write_headers => true) do |output|
      CSV.foreach('data.csv', headers: true) do |row|
          intro_msg = "PERNR:#{row["PERNR"]} SUBTY:#{row["SUBTY"]} ENDDA:#{row["ENDDA"]}です。\n"
          puts intro_msg
          output << [row["PERNR"], row["SUBTY"], row["ENDDA"]]
      end
    end
  end
end
