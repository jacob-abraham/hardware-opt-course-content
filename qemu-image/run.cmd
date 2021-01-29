

QEMU="C:\Program Files\QEMU\qemu-system-x86_64.exe"
ACCEL="-accel hax"

%QEMU% -hda ubuntu20.qcow2 -m 1G -machine q35 %ACCEL% -device e1000,netdev=net0 -netdev user,id=net0,hostfwd=tcp::5555-:22 -cpu host,+fma,+avx2