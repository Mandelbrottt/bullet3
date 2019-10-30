project "LinearMath"
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
		"*.cpp",
		"*.h",
		"TaskScheduler/*.cpp",
		"TaskScheduler/*.h"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:not Debug"
		runtime "Release"
		optimize "on"