extends Node

onready var music_player = AudioStreamPlayer.new()


var music_tracks = {
	"main":"res://SFX/Music/Royalty Free Music Loops OGG/Little Apprentice Loop.ogg"
	}

var sound_effects = {
	"jump":"res://SFX/jump (1).wav",
	"death":"res://SFX/Death.wav"
	}

var music_db = 1
var sound_db = 0.6

func change_music_volume(value):
	music_db = linear2db(value)
	music_player.volume_db = music_db
	
func change_sound_volume(value):
	sound_db = linear2db(value)
	



func _ready():
	music_player.stream = load(music_tracks["main"])
	add_child(music_player)
	music_player.play()

func change_song(track):
	music_player.stream = load(music_tracks["main"])
	music_player.play()
	

func play_sound_effect(sfx):
	var sound = AudioStreamPlayer.new()
	sound.stream = load(sound_effects[sfx])
	add_child(sound)
	sound.volume_db = sound_db
	sound.play()
	yield(sound,"finished")
	sound.queue_free()
	
	
