describe App do

  describe 'GET /newteam' do
    it 'sends a 200 status code' do
      get '/newteam'
      expect(last_response.status).to eq(200)
    end

    it 'renders basketball team form' do
      visit '/newteam'
      expect(page).to have_selector("form")
      expect(page).to have_field(:name)
      expect(page).to have_field(:coach)
      expect(page).to have_field(:pg)
      expect(page).to have_field(:sg)
      expect(page).to have_field(:sf)
      expect(page).to have_field(:pf)
      expect(page).to have_field(:c)
    end
  end

  describe 'POST /team' do
    it 'does not return Sinatra error page' do
      visit '/newteam'

      click_button "Submit"
      expect(page).to_not have_text("Backtrace")
    end

    it "displays the basketball team name in the browser" do
      visit '/newteam'

      fill_in(:name, :with => "A")
      click_button "Submit"
      expect(page).to have_text("Team Name: A")
    end

    it "displays the coach's name in the browser" do
      visit '/newteam'

      fill_in(:coach, :with => "B")
      click_button "Submit"

      expect(page).to have_text("Coach: B")
    end

    it "displays the point guard's name in the browser" do
      visit '/newteam'

      fill_in(:pg, :with => "C")
      click_button "Submit"

      expect(page).to have_text("Point Guard: C")
    end

    it "displays the shooting guard's name in the browser" do
      visit '/newteam'

      fill_in(:sg, :with => "D")
      click_button "Submit"

      expect(page).to have_text("Shooting Guard: D")
    end

    it "displays the power forward's name in the browser" do
      visit '/newteam'

      fill_in(:pf, :with => "E")
      click_button "Submit"

      expect(page).to have_text("Power Forward: E")
    end

    it "displays the small forward's name in the browser" do
      visit '/newteam'

      fill_in(:sg, :with => "F")
      click_button "Submit"


      expect(page).to have_text("Small Forward: F")
    end

    it "displays the center's name in the browser" do
      visit '/newteam'

      fill_in(:c, :with => "G")
      click_button "Submit"

      expect(page).to have_text("Center: G")
    end


  end
end
