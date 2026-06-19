set BaseAddr 0x04000000
set master_path [lindex [get_service_paths master] 0]
set claim_path [claim_service master $master_path mylib]

puts [master_read_8 $claim_path $BaseAddr 1]
puts [master_read_8 $claim_path [expr {$BaseAddr + 1}] 1]
puts [master_read_8 $claim_path [expr {$BaseAddr + 2}] 1]

close_service master $claim_path