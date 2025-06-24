```
cp scripts/standalone.gclient .gclient
```
```
gclient sync
```
```
cmake -G Ninja \
  -S . -B out/macos-universal \
  -DBUILD_SHARED_LIBS=OFF \
  -DDAWN_FETCH_DEPENDENCIES=ON \
  -DDAWN_ENABLE_INSTALL=ON \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_OSX_ARCHITECTURES="x86_64;arm64"
```
```
  cmake --build out/macos-universal --config Release
```
```
  cd out/macos-universal
```
```
#!/usr/bin/env bash
set -euo pipefail

# Output archive name
OUT="libdawn.a"

# Directories to search
DIRS=(
  "third_party/abseil"
  "src"
)

# Collect all .a files from the specified dirs
libs=()
for d in "${DIRS[@]}"; do
  while IFS= read -r lib; do
    libs+=("$lib")
  done < <(find "$d" -type f -name '*.a' ! -name "$OUT" | sort)
done

if [ "${#libs[@]}" -eq 0 ]; then
  echo "No static archives found in ${DIRS[*]}"
  exit 1
fi

echo "Merging ${#libs[@]} archives into $OUT"
libtool -static "${libs[@]}" -o "$OUT"

echo "Created $OUT"
```