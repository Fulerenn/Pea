workspace "Fulerenn"
    configurations { "Release", "Debug" }
    platforms { "x64", "x86" }

    filter "configurations:Debug"
        defines { "BUILD_DEBUG" }
        symbols "on"
        optimize "off"
        
    filter "configurations:Release"
        defines { "BUILD_RELEASE" }
        symbols "off"
        optimize "on"

    targetdir "%{wks.location}/bin/%{cfg.architecture}-%{cfg.buildcfg}"
    objdir "%{wks.location}/bin-int/%{cfg.architecture}-%{cfg.buildcfg}"

    flags { "MultiProcessorCompile" }

    project "Sandbox"
        kind "ConsoleApp"
        language "C++"
        cppdialect "C++20"
        
        targetname "Pea"
        
        files 
        { 
            "source/**.h", 
            "source/**.cpp",
        }
