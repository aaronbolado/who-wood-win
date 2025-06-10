extends PanelContainer

@onready var tool_axe: Button = $MarginContainer/HBoxContainer/ToolAxe
@onready var tool_pick: Button = $MarginContainer/HBoxContainer/ToolPick
@onready var tool_rock: Button = $MarginContainer/HBoxContainer/ToolRock
@onready var tool_steal: Button = $MarginContainer/HBoxContainer/ToolSteal

func _on_tool_axe_pressed() -> void:
	ToolManager.select_tool(DataTypes.Tools.AxeWood)

func _on_tool_pick_pressed() -> void:
	ToolManager.select_tool(DataTypes.Tools.PickRock)

func _on_tool_rock_pressed() -> void:
	ToolManager.select_tool(DataTypes.Tools.PlaceRock)

func _on_tool_steal_pressed() -> void:
	ToolManager.select_tool(DataTypes.Tools.StealWood)

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("release_tool"):
		ToolManager.select_tool(DataTypes.Tools.None)
		tool_axe.release_focus()
		tool_pick.release_focus()
		tool_rock.release_focus()
		tool_steal.release_focus()
