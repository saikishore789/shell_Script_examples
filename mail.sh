#!/bin/bash
recipient=”rachumallasaikishore@gmail.com”
subject=”Greetings”
message=”Welcome to UbuntuPit”
`mail -s $subject $recipient <<< $message`
