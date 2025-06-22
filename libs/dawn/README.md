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

  libtool -static \
  dawn/wire/libdawn_wire.a \
  dawn/native/libdawn_native.a \
  dawn/libdawn_proc.a \
  dawn/platform/libdawn_platform.a \
  dawn/utils/libdawn_wgpu_utils.a \
  dawn/utils/libdawn_system_utils.a \
  dawn/utils/libdawn_test_utils.a \
  dawn/common/libdawn_common.a \
  dawn/samples/libdawn_sample_utils.a \
  dawn/glfw/libdawn_glfw.a \
  \
  tint/libtint_lang_spirv_reader_lower.a \
  tint/libtint_lang_wgsl_sem.a \
  tint/libtint_lang_wgsl.a \
  tint/libtint_lang_wgsl_ast_transform.a \
  tint/libtint_lang_wgsl_inspector.a \
  tint/libtint_lang_hlsl_writer_raise.a \
  tint/libtint_lang_core_ir.a \
  tint/libtint_api.a \
  tint/libtint_lang_wgsl_program.a \
  tint/libtint_lang_wgsl_resolver.a \
  tint/libtint_lang_hlsl_ir.a \
  tint/libtint_lang_wgsl_writer_raise.a \
  tint/libtint_cmd_fuzz_ir_helpers.a \
  tint/libtint_lang_hlsl_type.a \
  tint/libtint_lang_spirv_intrinsic.a \
  tint/libtint_lang_core_ir_type.a \
  tint/libtint_lang_msl_writer_helpers.a \
  tint/libtint_utils_symbol.a \
  tint/libtint_lang_msl_writer_common.a \
  tint/libtint_lang_wgsl_writer_syntax_tree_printer.a \
  tint/libtint_cmd_common.a \
  tint/libtint_lang_msl_intrinsic.a \
  tint/libtint_lang_wgsl_reader_parser.a \
  tint/libtint_lang_hlsl_writer_helpers.a \
  tint/libtint_lang_msl.a \
  tint/libtint_lang_core_type.a \
  tint/libtint_utils_math.a \
  tint/libtint_utils_bytes.a \
  tint/libtint_lang_core_ir_transform.a \
  tint/libtint_lang_glsl.a \
  tint/libtint_lang_wgsl_reader.a \
  tint/libtint_lang_hlsl_writer_common.a \
  tint/libtint_lang_wgsl_reader_lower.a \
  tint/libtint_utils_diagnostic.a \
  tint/libtint_lang_core_constant.a \
  tint/libtint_lang_msl_writer_raise.a \
  tint/libtint_lang_core_intrinsic.a \
  tint/libtint_lang_wgsl_ast.a \
  tint/libtint_utils_strconv.a \
  tint/libtint_lang_core.a \
  tint/libtint_lang_core_ir_analysis.a \
  tint/libtint_api_common.a \
  tint/libtint_utils_file.a \
  tint/libtint_lang_glsl_ir.a \
  tint/libtint_utils_ice.a \
  tint/libtint_utils.a \
  tint/libtint_lang_hlsl.a \
  tint/libtint_utils_text_generator.a \
  tint/libtint_lang_wgsl_writer_ast_printer.a \
  tint/libtint_lang_msl_writer_printer.a \
  tint/libtint_lang_wgsl_writer_ir_to_program.a \
  tint/libtint_lang_wgsl_ir.a \
  tint/libtint_lang_glsl_validate.a \
  tint/libtint_lang_wgsl_reader_program_to_ir.a \
  tint/libtint_lang_msl_ir.a \
  tint/libtint_utils_system.a \
  tint/libtint_lang_msl_type.a \
  tint/libtint_lang_spirv.a \
  tint/libtint_lang_hlsl_intrinsic.a \
  tint/libtint_lang_spirv_type.a \
  tint/libtint_utils_memory.a \
  tint/libtint_lang_msl_validate.a \
  tint/libtint_lang_wgsl_writer.a \
  tint/libtint_utils_macros.a \
  tint/libtint_lang_glsl_intrinsic.a \
  tint/libtint_utils_containers.a \
  tint/libtint_lang_msl_ir_transform.a \
  tint/libtint_lang_spirv_ir.a \
  tint/libtint_lang_wgsl_intrinsic.a \
  tint/libtint_lang_msl_writer.a \
  tint/libtint_utils_text.a \
  tint/libtint_utils_rtti.a \
  tint/libtint_utils_command.a \
  -o libdawn.a