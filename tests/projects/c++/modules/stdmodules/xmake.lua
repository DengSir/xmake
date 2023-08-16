add_rules("mode.debug", "mode.release")
set_languages("c++latest")

target("mod")
    set_kind("static")
    add_files("src/*.cpp", "src/*.mpp")
    set_policy("build.c++.clang.stdmodules", true)

target("stdmodules")
    set_kind("binary")
    add_files("test/*.cpp")
    add_deps("mod")
    set_policy("build.c++.clang.stdmodules", true)
