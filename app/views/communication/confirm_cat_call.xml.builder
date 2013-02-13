xml.instruct!
xml.Response do
  xml.Gather(:action => @redirectto, :numDigits => 1) do
    xml.Say "You're cute kitty cat is running rampant throughout the neighborhood.  Please press 1 to confirm that you have received this message.  To repeat
    this message, please press 2.", :voice => "woman"
  end
  xml.Redirect @redirectto
end
