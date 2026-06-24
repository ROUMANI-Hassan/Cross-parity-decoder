##########################################################################
#    System console script to test DPC decoder registers and functions
##########################################################################

##########################################################################
#    TO BE DEFINED: Base address & offsets (see DPC_decoder.vhd)
##########################################################################
#    BaseAddr: address of the DPC component in the Avalon address map.
#    If you use a Clock Crossing Bridge, BaseAddr = bridge_base + dpc_base.
#    Otherwise, just the DPC base address (e.g., 0x04000000).
#    BusSize: data bus width in bytes (here 1 byte for 8-bit accesses).
#    Offsets:
#        Status   = 0
#        Control  = 1
#        Data     = 2
#
set BaseAddr 0x04000000
set BusSize 1

set Status  0
set Control 1
set Data    2

##########################################################################
#    INITIALIZATION OF SYSTEM CONSOLE "MASTER" SERVICE
##########################################################################
set master_path [lindex [get_service_paths master] 0]
set claim_path [claim_service master $master_path mylib]
puts "Master service open"
puts ""

##########################################################################
#    HELPER PROCEDURES FOR 8-BIT ACCESS (since DPC uses 8-bit registers)
##########################################################################
proc read_status {base} {
    global claim_path Status BusSize
    return [master_read_8 $claim_path [expr {$base + $Status*$BusSize}] 1]
}

proc write_control {base value} {
    global claim_path Control BusSize
    master_write_8 $claim_path [expr {$base + $Control*$BusSize}] $value
}

proc write_data {base value} {
    global claim_path Data BusSize
    master_write_8 $claim_path [expr {$base + $Data*$BusSize}] $value
}

proc read_data {base} {
    global claim_path Data BusSize
    return [master_read_8 $claim_path [expr {$base + $Data*$BusSize}] 1]
}

##########################################################################
#    TEST SCENARIO
##########################################################################

puts "=== DPC Decoder Test ==="
puts "Base address: 0x[format %08X $BaseAddr]"
puts ""

# 1. Read initial status (should be 0)
set initial_status [read_status $BaseAddr]
puts "Initial Status: 0x[format %02X $initial_status]"

# 2. Write a known 8x8 matrix (7x7 data + parity)
#    Here we write 8 bytes representing a matrix with no error.
#    You can replace these values with your own test matrix.
puts ""
puts "Writing 8 bytes of matrix data (no error case)..."
set matrix_no_error {0x55 0xAA 0x55 0xAA 0x55 0xAA 0x55 0xAA}
foreach byte $matrix_no_error {
    write_data $BaseAddr $byte
    puts "  Wrote 0x[format %02X $byte]"
}

# 3. Start decoding by setting the Decod bit (bit 0 of Control)
puts ""
puts "Starting decoding (set Decod bit)..."
write_control $BaseAddr 0x01

# 4. Wait for Done bit (bit 5 of Status) to become 1
puts "Waiting for Done flag..."
set done 0
set timeout 10000
set count 0
while {$done == 0 && $count < $timeout} {
    set status [read_status $BaseAddr]
    set done [expr {($status >> 5) & 1}]
    set count [expr {$count + 1}]
}
if {$count >= $timeout} {
    puts "Timeout! Done not set."
} else {
    puts "Done set after $count iterations."
}

# 5. Read status to see if error or correction occurred
set final_status [read_status $BaseAddr]
puts "Final Status: 0x[format %02X $final_status]"
set error [expr {($final_status >> 7) & 1}]
set corr  [expr {($final_status >> 6) & 1}]
puts "  Error flag: $error"
puts "  Corr  flag: $corr"

# 6. Read the 7 data bytes (output FIFO) if no uncorrectable error
if {$error == 1} {
    puts "Uncorrectable error detected. No data will be read."
} else {
    puts "Reading output data (7 bytes):"
    for {set i 0} {$i < 7} {incr i} {
        set data_out [read_data $BaseAddr]
        puts "  Byte $i: 0x[format %02X $data_out]"
    }
}

# 7. Optional: test with a correctable error (one bit flipped in data)
#    Add your own test cases here...

puts ""
puts "=== Test completed ==="

##########################################################################
#    CLOSE THE MASTER SERVICE
##########################################################################
close_service master $claim_path
puts "Master service closed"
