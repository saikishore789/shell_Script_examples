BEGIN { 
     print "---- start of etc/passwd/ file ---"
} 
 /root/ { 
     print $0 
} 
END { 
     print "---- end of etc/passwd/ file -----" 
}
