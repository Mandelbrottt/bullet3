project "BulletDynamics"
    kind "StaticLib"
	language "C++"
    staticruntime "on"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("obj/" .. outputdir .. "/%{prj.name}")

    if os.istarget("Linux") then
        buildoptions{"-fPIC"}
    end
    
    includedirs {
		"..",
	}
    
    files {
		"Dynamics/*.cpp",
        "Dynamics/*.h",
        "ConstraintSolver/*.cpp",
        "ConstraintSolver/*.h",
        "Featherstone/*.cpp",
        "Featherstone/*.h",
        "MLCPSolvers/*.cpp",
        "MLCPSolvers/*.h",
        "Vehicle/*.cpp",
        "Vehicle/*.h",
        "Character/*.cpp",
        "Character/*.h"
	}

    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:not Debug"
		runtime "Release"
		optimize "on"