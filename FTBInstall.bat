call settings.bat

mkdir libraries\net\minecraft\launchwrapper\%LAUNCHWRAPPERVERSION%

libraries\wget.exe -O minecraft_server.1.7.10.jar https://s3.amazonaws.com/Minecraft.Download/versions/1.7.10/minecraft_server.1.7.10.jar
libraries\wget.exe -O libraries\%LAUNCHWRAPPER% https://libraries.minecraft.net/net/minecraft/launchwrapper/%LAUNCHWRAPPERVERSION%/launchwrapper-%LAUNCHWRAPPERVERSION%.jar
