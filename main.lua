

require 'collisions'
require 'notehit'
require 'notes'



function love.load()

  
end
function love.update()
  NoteMove()
  NotCollideNoteHitter()
  CollideNoteHitter()
  AntiSpamHitter()
end
function love.draw() -- Last Layer
 NoteDraw() 
 DrawHitter() 

  end -- First Layer