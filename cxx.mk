# Viciously copypasta'd from https://news.ycombinator.com/item?id=16524236

# Save the file to something like `compile.mk` and create a Makefile with
# SOURCES += $(wildcard src/*.cpp)
# SOURCES += other_files.c

# TARGET = foo

# include compile.mk

FLAGS += -MMD
CFLAGS += $(FLAGS)
CXXFLAGS += $(FLAGS)

OBJECTS += $(patsubst %, build/%.o, $(SOURCES))
DEPS = $(patsubst %, build/%.d, $(SOURCES))

$(TARGET): $(OBJECTS)
	$(CXX) -o $@ $^ $(LDFLAGS)

-include $(DEPS)

build/%.c.o: %.c
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) -c -o $@ $<

build/%.cpp.o: %.cpp
	@mkdir -p $(@D)
	$(CXX) $(CXXFLAGS) -c -o $@ $<
