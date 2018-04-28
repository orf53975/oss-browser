# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := crc64_ecma182
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=crc64_ecma182' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++0x

INCS_Debug := \
	-I/root/.electron-gyp/.node-gyp/iojs-1.8.4/include/node \
	-I/root/.electron-gyp/.node-gyp/iojs-1.8.4/src \
	-I/root/.electron-gyp/.node-gyp/iojs-1.8.4/deps/uv/include \
	-I/root/.electron-gyp/.node-gyp/iojs-1.8.4/deps/v8/include \
	-I$(srcdir)/node_modules/_nan@2.10.0@nan

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=crc64_ecma182' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++0x

INCS_Release := \
	-I/root/.electron-gyp/.node-gyp/iojs-1.8.4/include/node \
	-I/root/.electron-gyp/.node-gyp/iojs-1.8.4/src \
	-I/root/.electron-gyp/.node-gyp/iojs-1.8.4/deps/uv/include \
	-I/root/.electron-gyp/.node-gyp/iojs-1.8.4/deps/v8/include \
	-I$(srcdir)/node_modules/_nan@2.10.0@nan

OBJS := \
	$(obj).target/$(TARGET)/src/node_crc64_ecma_182.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(builddir)/crc64_ecma182_base.a $(obj).target/crc64_ecma182_base.a

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64

LIBS :=

$(obj).target/crc64_ecma182.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/crc64_ecma182.node: LIBS := $(LIBS)
$(obj).target/crc64_ecma182.node: TOOLSET := $(TOOLSET)
$(obj).target/crc64_ecma182.node: $(OBJS) $(obj).target/crc64_ecma182_base.a FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(obj).target/crc64_ecma182.node
# Add target alias
.PHONY: crc64_ecma182
crc64_ecma182: $(builddir)/crc64_ecma182.node

# Copy this to the executable output path.
$(builddir)/crc64_ecma182.node: TOOLSET := $(TOOLSET)
$(builddir)/crc64_ecma182.node: $(obj).target/crc64_ecma182.node FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/crc64_ecma182.node
# Short alias for building this executable.
.PHONY: crc64_ecma182.node
crc64_ecma182.node: $(obj).target/crc64_ecma182.node $(builddir)/crc64_ecma182.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/crc64_ecma182.node

