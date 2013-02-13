class CommunicationController < ApplicationController

  def snow_day_call
    people = Person.all

    people.each do |person|
      Communication.launch!(person.phone_number, 'http://warm-coast-4231.herokuapp.com/communication/snow_call.xml')
    end
    redirect_to people_url
  end

  def snow_call
    respond_to do |format|
      format.xml
    end
  end

  def horrible_cat_parent
    @redirectto = "http://warm-coast-4231.herokuapp.com/communication/goodbye.xml"
  end

  def confirm_cat
    crazy_cat_lady = Person.find(params[:id])
    @redirectto = "http://warm-coast-4231.herokuapp.com/communication/thank_you.xml?communication_id=#{params['communication_id']}"

    respond_to do |format|
      format.xml { @redirectto }
    end
  end

  def thank_you
    if !params['Digits']
      @redirectto = "http://warm-coast-4231.herokuapp.com/communication/confirm_cat.xml"
    elsif params['Digits'] != '1'
      redirect_to "http://warm-coast-4231.herokuapp.com/communication/horrible_cat_parent.xml"
      return
    else
      @redirectto = "http://warm-coast-4231.herokuapp.com/communication/thank_you.xml/goodbye.xml?communication_id=#{params['communication_id']}"
    end

    respond_to do |format|
      format.xml { @redirectto }
    end
  end

  def goodbye
    respond_to do |format|
      format.xml
    end
  end

end
