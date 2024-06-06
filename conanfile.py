from conan import ConanFile
from conan.tools.build import check_min_cppstd
from conan.tools.cmake import cmake_layout, CMakeToolchain, CMakeDeps, CMake
from conan.tools.env import VirtualBuildEnv
from conans.errors import ConanInvalidConfiguration


class AsmParser(ConanFile):
    name = "asm-parser"
    version = "2.0"
    license = "BSD-2"
    description = "Asm parser"
    package_type = "application"
    settings = "os", "arch", "compiler", "build_type"
    exports_sources = "src/**"

    def layout(self):
        cmake_layout(self, src_folder="src")

    @property
    def _min_cppstd(self):
        return "20"

    def validate(self):
        # This does not build out of the box in my macos, but ignoring for now, just checking cppstd
        check_min_cppstd(self, self._min_cppstd)

    def requirements(self):
        self.requires("catch2/2.13.10")  # New version 3 available, check if compatible
        self.requires("approvaltests.cpp/10.12.2")
        self.requires("fmt/9.1.0")  # New version 10 available, check if compatible
        self.requires("ctre/3.7.1")

    def generate(self):
        venv = VirtualBuildEnv(self)
        venv.generate()
        tc = CMakeToolchain(self)
        tc.generate()
        deps = CMakeDeps(self)
        deps.generate()

    def build(self):
        cmake = CMake(self)
        cmake.configure()
        cmake.build()

    def test(self):
        cmake = CMake(self)
        cmake.test()
