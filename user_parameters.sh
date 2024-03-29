# WARNING: Hooks should be put in the profiles, not in this file

# SHA1 Database that contains the version of each library, based on their SHA1
SHA1_DB=$ezBenchDir/SHA1_DB

# Frequencies
#WANTED_CPU_FREQ_kHZ=2000000

# xrandr reset command
XRANDR_RESET_ARGS="--auto"

# Repo addresses
REPO_MESA=/home/pavel/repos/mesa
REPO_LINUX=/opt/source/linux
REPO_IGT=/opt/source/intel-gpu-tools
REPO_PERF_BISECT='/home/pavel/repos/bisect-test' # git://people.freedesktop.org/~mperes/bisect-test
REPO_PIGLIT=/home/pavel/repos/mesa/piglit
REPO_XF86_VIDEO_INTEL=/home/mupuf/src/xf86-video-intel

# Repo compilation parameters
REPO_MESA_PARAMETERS="--prefix='/home/pavel/repos/ezbench/builds/test' \
    -Dbuildtype=debug \
-Dvalgrind=false \
-Ddri-drivers=i965 \
-Dgallium-drivers=iris \
-Dvulkan-drivers=intel \
-Dgallium-omx="disabled" \
-Dplatforms=x11,drm,surfaceless \
-Dtools=intel"
REPO_LINUX_CONFIG=/path/to/linux/.config

REPO_XF86_VIDEO_INTEL_PARAMETERS="--prefix=\$REPO_XF86_VIDEO_INTEL_PREFIX \
    --enable-sna \
    --with-default-dri=3 \
    --disable-xvmc"
REPO_XF86_VIDEO_INTEL_XORG_CONF_TEMPLATE="$ezBenchDir/confs.d/xf86-video-intel-template.conf"

# folder that will receive the different builds
DEPLOY_BASE_DIR=$ezBenchDir/builds

# Libraries options
LIBFRAMETIME64_SO=/usr/lib/libframetime.so
LIBFRAMETIME32_SO=/usr/lib32/libframetime.so

# apitrace parameters
APITRACE_BINARY=/usr/bin/apitrace
GLRETRACE_BINARY=/usr/bin/glretrace

# Trace folder should contain:
# - trace files named as: <name>.trace
# - trace performance frame files named as: <name>.trace.benchmark
#   - contains ID for frame in trace to benchmark
# - trace validation frame files named as: <name>.trace.validate
#   - contains comma separated list of IDs for frames to validate
# Notes:
# - Frames are ID'd by their Apitrace GL/ES call numbers
# - Only the first line in benchmark & validate files is significant, rest can be comments
# - Numbers are separated by commas, without any whitespace!
#
# For example:
# - dota2:tutorial:high:1080p.trace
# - dota2:tutorial:high:1080p.trace.benchmark
# - dota2:tutorial:high:1080p.trace.validate
# Convention is to separate test-case name, resolution and render
# quality level in <name> with a colon character.
APITRACE_TRACE_FOLDER=/opt/benchmarks/apitraces

# vkreplay is part of VulkanTools repository tools:
#   https://github.com/LunarG/VulkanTools/blob/master/BUILDVT.md
VKREPLAY_BINARY=/usr/bin/vkreplay
# VulkanTools screenshot layer location (needed for validation) for Vulkan loader
VK_LAYER_PATH=/usr/lib/VulkanTools/layersvt/

# Traces, and files containing comma separate list of frames to
# validate from them, are named as:
#   <name>.vktrace
#   <name>.vktrace.validate
# Only the first line in validate files is significant, rest can be comments
VKREPLAY_TRACE_FOLDER=/opt/benchmarks/vktraces/

# UE4 parameters
UE4_FOLDER="/opt/benchmarks/Unreal Engine 4"
UE4_WINDOW_SIZE_X=128
UE4_WINDOW_SIZE_Y=80

# Unigine settings
UNIGINE_HEAVEN_FOLDER=/home/pavel/repos/Unigine_Heaven-4.0
UNIGINE_VALLEY_FOLDER=/home/pavel/repos/Unigine_Valley-1.0

# GpuTest settings
GPUTEST_FOLDER=/opt/benchmarks/GpuTest_Linux_x64_0.7.0

# Lightsmark settings
LIGHTSMARK_FOLDER=/opt/benchmarks/lightsmark-1.2.0

# GLBenchmark settings
GLBENCHMARK27_FOLDER=/home/pavel/repos/gfxbench
GLBENCHMARK30_FOLDER=/home/pavel/repos/gfxbench
GFXBENCH4_FOLDER=/home/pavel/repos/gfxbench

# LuxMark settings
LUXMARK_FOLDER=/opt/benchmarks/luxmark-v3.0

# OpenArena folder, install cfg files in baseoa/!
OPENARENA_FOLDER=/opt/benchmarks/openarena-0.8.8

# Tesseract folder, install demo files at the root
TESSERACT_FOLDER=/opt/benchmarks/tesseract

# Piglit run parameters
PIGLIT_RUN_PARAMS=''
#PIGLIT_KEEP_REPORTS=1

# PolyBench-ACC settings
# https://github.com/cavazos-lab/PolyBench-ACC
POLYBENCH_ACC_FOLDER=/opt/benchmarks/PolyBench-ACC

# FinanceBench settings
# https://github.com/cavazos-lab/FinanceBench
FINANCEBENCH_FOLDER=/opt/benchmarks/FinanceBench

# intel-gpu-tools settings
IGT_ROOT=/opt/intel-gpu-tools/
IGT_BENCHMARKS=$IGT_ROOT/benchmarks
IGT_TRACES=$IGT_ROOT/traces

# watchdog timeout parameters
WATCHDOG_TIMEOUT_SYNC=120
WATCHDOG_TIMEOUT_REBOOT=120

# Rendercheck: From https://cgit.freedesktop.org/~mperes/rendercheck/
# Must point to the directory containing the 'rendercheck' binary
RENDERCHECK_FOLDER=/opt/benchmarks/rendercheck/
RENDERCHECK_FORMATS="a8r8g8b8,x8r8g8b8"

# cairo-demos settings
CAIRO_DEMOS=/opt/benchmarks/cairo-demos

# cairo-traces repo. Make sure you ran make there before running benchmarks
CAIRO_TRACES="/opt/benchmarks//cairo-traces"

# Shader-db
SHADERDB_FOLDER=/opt/benchmarks/shader-db

# Chrome telemetry
TELEMETRY_FOLDER="/opt/benchmarks/telemetry"
CHROME_PATH="/opt/google/chrome/chrome"

# Videos' folder for the video benchmarks
VIDEOS_FOLDER="/opt/benchmarks/videos"

# xf86-video-intel setting
XF86_VIDEO_INTEL=/opt/benchmarks/xf86-video-intel

# Xonotic
XONOTIC_FOLDER=/usr/bin

# Driver for the yokogawa power meters. Make sure you also use a udev rule to
# give the device an easy-to-find device name:
# cat /etc/udev/rules.d/99-yoko.rules
# KERNEL=="usbtmc[0-9]*", SUBSYSTEM=="usbmisc", SUBSYSTEMS=="usb", ATTRS{idVendor}=="0b21", ATTRS{idProduct}=="0025", MODE="0666", SYMLINK+="yokogawa"
YOKO_TOOL=/opt/yoko-tool/yokotool
YOKO_DEVICE_NAME=/dev/yokogawa
