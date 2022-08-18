extends Node

onready var music = AudioStreamPlayer.new()


var music_tracks = {
	"main":"res://SFX/Music/Royalty Free Music Loops OGG/Little Apprentice Loop.ogg"
	}

var sound_effects = {
	"jump":"res://SFX/jump (1).wav",
	"death":"res://SFX/explosion.wav"
	}

var music_db = 1
var sound_db = 1

func change_music_db(val):
	music_db = linear2db(val)
	
func change_sound_db(val):
	sound_db = linear2db(val)
	



func _ready():
	music.stream = load(music_tracks["main"])
	add_child(music)
	music.play()
	print(music.stream)
	print("playing song")

func play_sound_effect(sfx):
	var sound = AudioStreamPlayer.new()
	sound.stream = load(sound_effects[sfx])
	add_child(sound)
	sound.play()
	yield(sound,"finished")
	sound.queue_free()
	
	
