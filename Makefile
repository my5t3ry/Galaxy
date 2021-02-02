CXXFLAGS=-std=c++17 -Wno-narrowing

all: ThreeBody Sun-Earth-Moon Collision

ThreeBody: ThreeBody.cpp screen.h vec2.h
	$(CXX) $(CXXFLAGS) ThreeBody.cpp -o build/$@

Sun-Earth-Moon: Sun-Earth-Moon.cpp screen.h vec2.h
	$(CXX) $(CXXFLAGS) Sun-Earth-Moon.cpp -o build/$@

Collision: Collision.cpp screen.h vec2.h
	$(CXX) $(CXXFLAGS) Collision.cpp -o build/$@

clean:
	rm -f build/*

.PHONY: clean
