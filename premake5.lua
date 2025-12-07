project "GoogleTest"
      kind "StaticLib"
      language "C++"
      cppdialect "C++17"
      
      -- Point to the googletest src/include folders
      targetdir ("bin/" .. outputdir .. "/GoogleTest")
      objdir ("bin-int/" .. outputdir .. "/GoogleTest")

      includedirs {
         "vendor/googletest/googletest/include",
         "vendor/googletest/googletest" 
      }

      files {
         "vendor/googletest/googletest/src/gtest-all.cc"
      }
      
      filter "configurations:Debug"
         runtime "Debug"
         symbols "On"

      filter "configurations:Release"
         runtime "Release"
         optimize "On"
