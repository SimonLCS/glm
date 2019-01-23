project "glm"
    kind "StaticLib"
    language "C++"
    
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
        "%{prj.name}/**.h",
		"%{prj.name}/**.hpp",
		"%{prj.name}/**.c",
		"%{prj.name}/**.cpp"
    }

    includedirs{
        ".",
    }
   
	filter "system:windows"
        cppdialect "C++17"
        systemversion "latest"
        staticruntime "On"
    

    
	filter "system:linux"
        cppdialect "C++17"
        systemversion "latest"
        staticruntime "On"
    
    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"
