class LoadData < ActiveRecord::Migration
  
  def self.up
    # Create initial users.
    down
    jb = User.create(:first_name => "Justin", :last_name => "Bieber")
    ph = User.create(:first_name => "Paris",  :last_name => "Hilton")
    bh = User.create(:first_name => "Barack", :last_name => "Obama")
    jo = User.create(:first_name => "John", :last_name => "Ousterhout")
    funny = User.create(:first_name => "<Funny>", :last_name => "&lt;name")

    # Create initial photos.
    photo1 = Photo.create(:date_time => "2009-08-30 10:44:23",
        :file_name => "ouster.jpg", :user => jo)
	photo2 = Photo.create(:date_time => "2010-09-13 20:00:00",
        :file_name => "bieber1.jpg", :user => jb)
    photo3 = Photo.create(:date_time => "2010-09-13 20:05:03",
        :file_name => "bieber2.jpg", :user => jb)
    photo4 = Photo.create(:date_time => "2009-11-18 18:02:00",
        :file_name => "hilton1.jpg", :user =>ph)
    photo5 = Photo.create(:date_time => "2009-09-20 17:30:00",
        :file_name => "hilton2.jpg", :user => ph)
    photo6 = Photo.create(:date_time => "2009-07-10 16:02:49",
        :file_name => "obama1.jpg", :user =>bh)
    photo7 = Photo.create(:date_time => "2010-03-18 23:48:00",
        :file_name => "obama2.jpg", :user =>bh)
    photo8 = Photo.create(:date_time => "2010-08-30 14:26:00",
        :file_name => "obama3.jpg", :user => bh)
   
    # Create initial comments.
    comment = Comment.create(:date_time => "2009-09-02 14:01:00",
        :comment => "Learning new programming languages is hard...",
		:user => jo, :photo => photo1)
    
    comment = Comment.create(:date_time => "2009-09-02 14:02:00",
        :comment => "This is another comment, with a bit more text; " +
        "if the text gets long enough, does it wrap properly " +
        "from line to line?",
		:user => jo, :photo => photo1)
    
    comment = Comment.create(:date_time => "2009-09-02 14:06:00",
        :comment => "If you see this text in <b>boldface</b> " +
        "then you haven\'t escaped your HTML correctly.",
		:user => jo, :photo => photo1)
    
    comment = Comment.create(:date_time => "2010-09-14 18:07:00",
        :comment => "Blah blah blah.",
		:user => jb, :photo => photo2)
    
    comment = Comment.create(:date_time => "2010-02-28 17:45:13",
        :comment => "No wonder I've been geting so many texts lately.",
		:user => jo, :photo => photo5)
    
    comment = Comment.create(:date_time => "2010-09-02 14:07:00",
        :comment => "Hey Barack, great form! Do u s'pose u could " +
        "give me n Lindsay some bowling tips? xxoo Paris",
		:user => ph, :photo => photo7)
    comment = Comment.create(:date_time => "2010-09-02 14:07:00",
        :comment => "Sorry Paris, but no can do; my poll numbers " +
        "are already bad enough...",
		:user => bh, :photo => photo7)
    
    comment = Comment.create(:date_time => "2010-09-06 13:59:33",
        :comment => "We're off to a Justin Bieber concert",
		:user => bh, :photo => photo8)
    

    
 end

  def self.down
      Comment.delete_all
      Photo.delete_all
      User.delete_all
  end
end
