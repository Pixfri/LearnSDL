set_xmakever("2.7.4")

set_project("LearnSDL")
set_version("0.0.0")

set_allowedplats("windows", "linux", "macosx")
set_allowedarchs("windows|x64", "linux|x64", "macosx|x86_64")

add_rules("mode.debug", "mode.release")
set_languages("cxx20")
set_optimize("fastest")

add_requires("libsdl release-2.26.1")

local outputdir = "$(mode)-$(os)-$(arch)"

target("LearnSDL")
    set_kind("binary")

    set_targetdir("build/" .. outputdir .. "/LearnSDL/bin")
    set_objectdir("build/" .. outputdir .. "/LearnSDL/obj")

    add_files("LearnSDL/src/**.cpp")
    add_headerfiles("LearnSDL/include/**.hpp", "LearnSDL/include/**.h")
    add_includedirs("LearnSDL/include/", {public = true})

    add_packages("libsdl")