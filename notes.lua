
require 'collisions'
require 'notehit'


note = {}
note.x = 10
note.y = 450
note.w = 32
note.h = 32
note.speed = 10
note.hits = 0
note.TouchingHitter = 0

nothit = false


function NoteDraw()
  love.graphics.setColor(255,255,255)
  love.graphics.print("Hits: "..note.hits, 100, 10)
  love.graphics.print("HitterTouched: "..note.TouchingHitter, 200, 10)
  love.graphics.setColor(255,0,0)
  love.graphics.rectangle('fill', note.x, note.y, note.w, note.h)
  love.graphics.setColor(255,255,255)
end
function AntiSpamHitter()
  if collision:detect(note.x, note.y, note.w, note.h, notehit.x, notehit.y, notehit.w, notehit.h) then
      note.TouchingHitter = 1
  else
      note.TouchingHitter = 0
    end
  end
function NoteMove()
    repeat
      note.x = note.x + note.speed
    until nothit == false
  if note.x > 1610 then
    note.x = 10
    end
  end
function CollideNoteHitter()
  if love.keyboard.isDown("e") and note.TouchingHitter == 1 then
   note.x = 10
    note.hits = note.hits + 1
  end
end
function NotCollideNoteHitter()
    if note.TouchingHitter == 0 and love.keyboard.isDown("e") then
        note.hits = note.hits - 1
    if note.TouchingHitter == 1 and love.keyboard.isDown("e") then
        note.hits = note.hits + 1
      end
    end
  end