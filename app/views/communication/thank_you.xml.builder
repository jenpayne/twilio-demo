xml.instruct!
xml.Response do
    xml.Say "Thanks! Got it!", :voice =>"woman"
    xml.Redirect @redirect_to
end