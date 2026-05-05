Output demo-readme.gif
Set Shell "bash"
Set FontSize 20
Set Width 1000
Set Height 650
Require echo
Set PlaybackSpeed 0.7

Type "cd demos/overvoltage_rule/kicad"
Enter

Sleep 1s

Type "rv scan ."
Enter

Sleep 3s

Type "rv init --template robot-over_voltage.yaml"
Enter

Sleep 2s

Type "rv check robot.yaml"
Enter

Sleep 6s