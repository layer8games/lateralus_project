extends Node2D

var _activePlayer
var _nextPlayer = 2

onready var _player1 = $Knight
onready var _player2 = $Warrior

func _ready():
	_activePlayer = _player1
	_activePlayer.StartRound()


func _process(delta):
	if not _activePlayer.Playing() and _nextPlayer == 2:
		_activePlayer = _player2
		_nextPlayer = 1
		_activePlayer.StartRound()
	elif not _activePlayer.Playing() and _nextPlayer == 1:
		_activePlayer = _player1;
		_nextPlayer = 2;
		_activePlayer.StartRound()
