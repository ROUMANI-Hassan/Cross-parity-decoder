% set master_path [lindex [get_service_paths master] 0]
set claim_path [claim_service master $master_path mylib]
set BASE 0x04000000
puts "Lecture Status : [master_read_8 $claim_path $BASE 1]"
puts "Lecture Control: [master_read_8 $claim_path [expr {$BASE + 1}] 1]"
close_service master $claim_path
Lecture Status : 0x00
Lecture Control: 0x00
