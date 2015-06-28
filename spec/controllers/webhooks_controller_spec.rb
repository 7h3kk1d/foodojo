require 'rails_helper'

RSpec.describe WebhooksController, type: :controller do

  it 'should change the status of a participant' do
    person = Person.create(name: 'alex')
    potluck = FactoryGirl.create(:potluck)
    Participant.create(venmo_payment: "1312337325098795713", person: person, potluck: potluck)

    post :create, 
      date_created:"2013-12-16T16:15:23.514136",
      type:"payment.created",
      data:{
        action:"pay",
        actor:{
          about:"No Short Bio",
          date_joined:"2011-09-09T00:30:51",
          display_name:"Andrew Kortina",
          first_name:"Andrew",
          id:"711020519620608087",
          last_name:"Kortina",
          profile_picture_url:"https://s3.amazonaws.com/venmo/no-image.gif",
          username:"kortina"
        },
        amount:nil,
        audience:"public",
        date_completed:"2013-12-16T16:20:00",
        date_created:"2013-12-16T16:20:00",
        id:"1312337325098795713",
        note:"jejkeljeljke",
        status:"settled",
        target:{
          email:nil,
          phone:nil,
          type:"user",
          user:{
            about:"No Short Bio",
            date_joined:"2011-09-09T00:30:54",
            display_name:"Shreyans Bhansali",
            first_name:"Shreyans",
            id:"711020544786432772",
            last_name:"Bhansali",
            profile_picture_url:"https://s3.amazonaws.com/venmo/no-image.gif",
            username:"shreyans"
          }
        }
      }


      expect(response.status).to eq(204)
  end
end
