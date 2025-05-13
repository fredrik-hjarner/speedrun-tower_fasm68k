.PHONY: all fasm68k vasm clown diff diff-count

all: fasm68k

fasm68k:
	sleep 1
	../../fasm68k src/SpeedrunTower.X68 -e200 -v2 fasm68k_artifacts/SpeedrunTower.bin
	sleep 1
	xxd -b -c1 fasm68k_artifacts/SpeedrunTower.bin | cut -d' ' -f2 > fasm68k_artifacts/SpeedrunTower.hex
	sleep 1
	git diff --unified=0 --no-index vasm_artifacts/SpeedrunTower.hex fasm68k_artifacts/SpeedrunTower.hex | wc -l > diffing_lines.txt

vasm:
	vasm -noialign -L vasm_artifacts/SpeedrunTower.lst -no-opt -Fbin -spaces -wfail -o vasm_artifacts/SpeedrunTower.bin src/SpeedrunTower.X68
	xxd -b -c1 vasm_artifacts/SpeedrunTower.bin | cut -d' ' -f2 > vasm_artifacts/SpeedrunTower.hex

# clownassembler can't assemble SpeedrunTower.
clown:
	# -w silences warnings.
	clownassembler -c -w -o SpeedrunTower.bin -i src/SpeedrunTower.X68

diff:
	git diff --unified=0 --no-index vasm_artifacts/SpeedrunTower.hex fasm68k_artifacts/SpeedrunTower.hex

diff-count:
	git diff --unified=0 --no-index vasm_artifacts/SpeedrunTower.hex fasm68k_artifacts/SpeedrunTower.hex | wc -l
