#!/bin/bash
echo "compiling applescripts for OS X warp..."
osacompile -o ~/git/shuttle/Shuttle/apple-scpt/warp-new-window.scpt -x ~/git/shuttle/apple-scripts/warp/warp-new-window.applescript
osacompile -o ~/git/shuttle/Shuttle/apple-scpt/warp-current-window.scpt -x ~/git/shuttle/apple-scripts/warp/warp-current-window.applescript
osacompile -o ~/git/shuttle/Shuttle/apple-scpt/warp-new-tab-default.scpt -x ~/git/shuttle/apple-scripts/warp/warp-new-tab-default.applescript