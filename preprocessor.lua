local workingSet = {
	optimizations = {
		bundling = false,
		inlining = false,
		colorRegistry = false,
		ipairsRewrite = false,
		localizer = false,
		drawCallCache = false
	},
	files = {},
	bundles = {},
	ignoredFiles = {}
}

local optimizations = {}


local function ParsePreLuaFile( filePath )
	print( "Parsing PreLua File" )
	local file = file.read( filePath )

	workingSet.files[ filePath ] = {
		contents = file.read( filePath ),
		jitContent = "",
		optimizations = {},
		externalFiles = {},
		codeParsed = {}
	}
end

local function parseCode()
	return ""
end

local function exportBundles()
	return workingSet.bundles
end

local function getWorkingSet()
	return workingSet
end


//Optimizations Registering
function optimizations.inlineFunction()
end

//Create localized table of colors within either a file or a table based on where the colors are used
function optimizations.colorRegistry()
end

//Package all files within the working set into a singular bundle file
function optimizations.bundleLuaFIles()
end

//Rewrite ipairs to numeric for loop when applicable
function optimizations.ipairsRewrite()
end

//Localize heavily used libraries in a way to reduce usage of the global table when possible
function optimizations.localizer()
end

//Cache certain draw calls in lua as a texture that is then drawn to the screen instead
function optimizations.drawCallCache()
end


return {
	optimizations = optimizations,
	parseCode = parseCode,
	ParsePreLuaFile = ParsePreLuaFile,
	exportBundles = exportBundles,
	getWorkingSet = getWorkingSet
}


