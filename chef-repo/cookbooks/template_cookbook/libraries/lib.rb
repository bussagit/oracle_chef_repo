module OracleCorp
	class WebLogic
		attr_accessor :awesome_level
		def initialize(awesome_level_temp)
		@awesome_level = awesome_level_temp
		end
	end
	class Oracle
		attr_accessor :awesome_level
		def initialize(awesome_level_temp)
		@awesome_level = awesome_level_temp
		end
	end
	class OracleCloud
		attr_accessor :awesome_level
		def initialize(awesome_level_temp)
		@awesome_level = awesome_level_temp
		end
	end
end


foo = OracleCorp::WebLogic.new(20)
puts "foo value in WebLogic = #{foo.awesome_level}"
bar = OracleCorp::Oracle.new(88)
puts "bar value in Oracle = #{bar.awesome_level}"
coffee = OracleCorp::Oracle.new(66)
puts "bar value in Oracle = #{coffee.awesome_level}"