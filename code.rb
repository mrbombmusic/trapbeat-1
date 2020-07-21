kicks = "/Users/admin/Music/SAmples/808_drum_kit/kicks/"
hats = "/Users/admin/Music/SAmples/808_drum_kit/hihats/"
snares = "/Users/admin/Music/SAmples/808_drum_kit/snares/"
percs = "/Users/admin/Music/SAmples/808_drum_kit/percussion/"

gak = "/Users/admin/Music/SAmples/musicradar-cheap-synth-samples/Gakken SX-150/Processed 10.wav"
fire = "/Users/admin/Music/SAmples/musicradar-cheap-synth-samples/Yamaha PSS-140/Preset Sounds/Fireworks C1.wav"
vox = "/Users/admin/Music/SAmples/musicradar-cheap-synth-samples/SK-1/Preset Sounds/Voice C2.wav"



use_bpm 66

live_loop :gak do
  cue :tick
  sample gak, finish: 0.5, rate: 0.5, beat_stretch: 4
  sleep 6
end


sync :tick
live_loop :fire do
  sleep 4.5
  sample fire
  sleep 7.5
end

live_loop :vox do
  with_fx :reverb, room: 1 do
    sample vox, pitch: 2
    sleep 2.25
    sample vox, pitch: -1
    sleep 0.75
    sample vox, pitch: 4
    sleep 3
  end
end

live_loop :kik do
  sample kicks, 17, amp: 1.5
  sample kicks, 9, amp: 3
  sleep 3
end

live_loop :snair do
  sleep 1.5
  sample snares, 3
  sleep 3
  sample snares, 30
  sleep 0.375
  sample snares, 31
  sleep 1.125
  2.times do
    sleep 1.5
    sample snares, 3
    sleep 1.5
  end
end

h = 9

live_loop :hat do
  16.times do
    sample hats, h
    sleep 0.75 / 4
    
  end
  12.times do
    sample hats, h
    sleep 0.75 / 4
  end
  16.times do
    sample hats, h
    sleep 0.75 / 16
  end
  12.times do
    sample hats, h
    sleep 0.75 / 4
  end
  16.times do
    sample hats, h
    sleep 0.75 / 16
  end
  12.times do
    sample hats, h
    sleep 0.75 / 4
  end
  6.times do
    sample hats, h
    sleep 0.75 / 6
  end
end

