set( CPACK_PACKAGE_VENDOR "US Department of Energy" )

set(CPACK_PACKAGE_VERSION_MAJOR "${CMAKE_VERSION_MAJOR}" )
set(CPACK_PACKAGE_VERSION_MINOR "${CMAKE_VERSION_MINOR}" )
set(CPACK_PACKAGE_VERSION_PATCH "${CMAKE_VERSION_PATCH}" )
set(CPACK_PACKAGE_VERSION_BUILD "${CMAKE_VERSION_BUILD}" )

set(CPACK_PACKAGE_VERSION "${CPACK_PACKAGE_VERSION_MAJOR}.${CPACK_PACKAGE_VERSION_MINOR}.${CPACK_PACKAGE_VERSION_PATCH}.${CPACK_PACKAGE_VERSION_BUILD}")

include(cmake/TargetArch.cmake)
target_architecture(TARGET_ARCH)
set(CPACK_PACKAGE_FILE_NAME "${CMAKE_PROJECT_NAME}-${CPACK_PACKAGE_VERSION}-${CMAKE_SYSTEM_NAME}-${TARGET_ARCH}")
set(CPACK_PACKAGING_INSTALL_PREFIX "/${CMAKE_PROJECT_NAME}-${CPACK_PACKAGE_VERSION_MAJOR}-${CPACK_PACKAGE_VERSION_MINOR}-${CPACK_PACKAGE_VERSION_PATCH}")

if( WIN32 AND NOT UNIX )
  set(CMAKE_INSTALL_SYSTEM_RUNTIME_LIBS_SKIP TRUE)
  include(InstallRequiredSystemLibraries)
  if(CMAKE_INSTALL_SYSTEM_RUNTIME_LIBS)
  install(PROGRAMS ${CMAKE_INSTALL_SYSTEM_RUNTIME_LIBS} DESTINATION "./")
  endif()
endif()

configure_file(cmake/license.in.txt "${CMAKE_BINARY_DIR}/license.txt" @ONLY)
install(FILES "${CMAKE_BINARY_DIR}/license.txt" DESTINATION "./")
set(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_BINARY_DIR}/license.txt")

# Install files that are in the current repo
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/AirCooledChiller.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/ASHRAE_2005_HOF_Materials.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/Boilers.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/California_Title_24-2008.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/Chillers.idf" DESTINATION "./DataSets")
#INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/Color Choices.dxf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/CompositeWallConstructions.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/DXCoolingCoil.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/ElectricGenerators.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/ElectricityUSAEnvironmentalImpactFactors.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/ElectronicEnthalpyEconomizerCurves.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/ExhaustFiredChiller.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/FluidPropertiesRefData.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/FossilFuelEnvironmentalImpactFactors.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/GLHERefData.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/GlycolPropertiesRefData.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/LCCusePriceEscalationDataSet2010.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/LCCusePriceEscalationDataSet2011.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/LCCusePriceEscalationDataSet2012.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/MoistureMaterials.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/PerfCurves.idf" DESTINATION "./DataSets")
#INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/PrecipitationSchedulesUSA-fullset_Release.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/PrecipitationSchedulesUSA.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/RefrigerationCasesDataSet.idf" DESTINATION "./DataSets")
#INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/RefrigerationCases.idf" DESTINATION "./DataSets")
#INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/RefrigerationCasesSetNumberOne.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/RefrigerationCompressorCurves.idf" DESTINATION "./DataSets")
#INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/RefrigerationCompressorCurvesNeedFix.idf" DESTINATION "./DataSets")
#INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/RefrigerationCompressorCurvesOK.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/ResidentialACsAndHPsPerfCurves.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/RooftopPackagedHeatPump.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/SandiaPVdata.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/Schedules.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/SolarCollectors.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/StandardReports.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/SurfaceColorSchemes.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/USHolidays-DST.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/Window5DataFile.dat" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/WindowBlindMaterials.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/WindowConstructs.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/WindowGasMaterials.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/WindowGlassMaterials.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/WindowScreenMaterials.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/WindowShadeMaterials.idf" DESTINATION "./DataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/FMUs/MoistAir.fmu" DESTINATION "./DataSets/FMUs")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/FMUs/ShadingController.fmu" DESTINATION "./DataSets/FMUs")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/TDV/TDV_2008_kBtu_CTZ06.csv" DESTINATION "./DataSets/TDV")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/TDV/TDV_read_me.txt" DESTINATION "./DataSets/TDV")

INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/Macro/Locations-DesignDays.xls" DESTINATION "./MacroDataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/Macro/SandiaPVdata.imf" DESTINATION "./MacroDataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/Macro/SolarCollectors.imf" DESTINATION "./MacroDataSets")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/datasets/Macro/UtilityTariffObjects.imf" DESTINATION "./MacroDataSets")

# weather files
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_CA_San.Francisco.Intl.AP.724940_TMY3.ddy" DESTINATION "./WeatherData")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_CA_San.Francisco.Intl.AP.724940_TMY3.epw" DESTINATION "./WeatherData")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_CA_San.Francisco.Intl.AP.724940_TMY3.stat" DESTINATION "./WeatherData")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_CO_Golden-NREL.724666_TMY3.ddy" DESTINATION "./WeatherData")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_CO_Golden-NREL.724666_TMY3.epw" DESTINATION "./WeatherData")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_CO_Golden-NREL.724666_TMY3.stat" DESTINATION "./WeatherData")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_FL_Tampa.Intl.AP.722110_TMY3.ddy" DESTINATION "./WeatherData")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_FL_Tampa.Intl.AP.722110_TMY3.epw" DESTINATION "./WeatherData")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_FL_Tampa.Intl.AP.722110_TMY3.stat" DESTINATION "./WeatherData")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_IL_Chicago-OHare.Intl.AP.725300_TMY3.ddy" DESTINATION "./WeatherData")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_IL_Chicago-OHare.Intl.AP.725300_TMY3.epw" DESTINATION "./WeatherData")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_IL_Chicago-OHare.Intl.AP.725300_TMY3.stat" DESTINATION "./WeatherData")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_VA_Sterling-Washington.Dulles.Intl.AP.724030_TMY3.ddy" DESTINATION "./WeatherData")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_VA_Sterling-Washington.Dulles.Intl.AP.724030_TMY3.epw" DESTINATION "./WeatherData")
INSTALL(FILES "${CMAKE_SOURCE_DIR}/weather/USA_VA_Sterling-Washington.Dulles.Intl.AP.724030_TMY3.stat" DESTINATION "./WeatherData")

# scripts
if( UNIX )
  configure_file(scripts/runenergyplus.in "${CMAKE_BINARY_DIR}/scripts/runenergyplus" @ONLY)
  install(PROGRAMS "${CMAKE_BINARY_DIR}/scripts/runenergyplus" DESTINATION "./")
  install(PROGRAMS scripts/runepmacro DESTINATION "./")
  install(PROGRAMS scripts/runreadvars DESTINATION "./")
endif()

INSTALL( DIRECTORY testfiles/ DESTINATION ExampleFiles/
  PATTERN _* EXCLUDE
  PATTERN *.ddy EXCLUDE
)

# remote files.  All of these should eventually be generated from content in the EnergyPlusTeam project.
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/Acknowledgments.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/appguidemenu.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/AuxiliaryPrograms.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/devguidemenu.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/EMS_Application_Guide.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/EngineeringReference.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/EPlusMainMenu.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/ExternalInterfaces_Application_Guide.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/GettingStarted.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/index.pdx" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/InputOutputReference.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/InterfaceDeveloper.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/ModuleDeveloper.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/OutputDetailsAndExamples.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/PlantApplicationGuide.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/ProgrammingStandard.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/Tips_and_Tricks_Using_EnergyPlus.pdf" "./Documentation")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/docs/pdf/Using_EnergyPlus_for_Compliance.pdf" "./Documentation")

# TODO Remove version from file name or generate
set( ADDRESSED_ISSUES Addressed_Issues-V8-2-0.html )
set( ENHANCEMENT_LIST_ITEMS Enhancement_List_Items-V8-2-0.html )
set( KNOWN_ISSUES Known_Issues-V8-2-0.html )
set( RULES_XLS Rules8-1-0-to-8-2-0.xls )
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/release/${ADDRESSED_ISSUES}" "./")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/release/Bugreprt.txt" "./")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/release/${ENHANCEMENT_LIST_ITEMS}" "./")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/release/ep.gif" "./")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/release/${KNOWN_ISSUES}" "./")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/release/ObjectStatus.xls" "./")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/release/readme.html" "./")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/release/${RULES_XLS}" "PreProcess/IDFVersionUpdater/")
install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/release/VariableNameListAudit.xlsx" "./")

if( WIN32 )
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/EP-Launch.exe" "./")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/Epl-run.bat" "./")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/RunDirMulti.bat" "./")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/RunEP.ico" "./")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/RunEPlus.bat" "./")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/RunReadESO.bat" "./")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/Runep.pif" "./")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PostProcess/AppGPostProcess/appgpostprocess.exe" "PostProcess/AppGPostProcess/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PostProcess/CSVproc.exe" "PostProcess/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PostProcess/RunReadESO.bat" "PostProcess/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/BLASTTranslator/BLASTTranslator.txt" "PreProcess/BLASTTranslator/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/CalcSoilSurfTemp/CalcSoilSurfTemp.exe" "PreProcess/CalcSoilSurfTemp/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/CalcSoilSurfTemp/CalcSoilSurfTemp.out" "PreProcess/CalcSoilSurfTemp/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/CalcSoilSurfTemp/RunCalcSoilSurfTemp.bat" "PreProcess/CalcSoilSurfTemp/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/CoeffConv/CoeffCheck.exe" "PreProcess/CoeffConv/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/CoeffConv/CoeffCheckExample.cci" "PreProcess/CoeffConv/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/CoeffConv/CoeffConv.exe" "PreProcess/CoeffConv/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/CoeffConv/CoeffConvExample.coi" "PreProcess/CoeffConv/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/CoeffConv/EPL-Check.BAT" "PreProcess/CoeffConv/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/CoeffConv/EPL-Conv.BAT" "PreProcess/CoeffConv/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/CoeffConv/ReadMe.txt" "PreProcess/CoeffConv/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/DOE2Translator/DOE2Translator.txt" "PreProcess/DOE2Translator/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/GrndTempCalc/RunBasement.bat" "PreProcess/GrndTempCalc/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/GrndTempCalc/RunSlab.bat" "PreProcess/GrndTempCalc/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/HVACCurveFitTool/CurveFitTool.xlsm" "PreProcess/HVACCurveFitTool/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/IDFEditor/IDFEditor.exe" "PreProcess/IDFEditor/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/ParametricPreProcessor/RunParam.bat" "PreProcess/ParametricPreProcessor/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/ParametricSpreadsheets/ParametricSpreadsheets.txt" "PreProcess/ParametricSpreadsheets/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/ViewFactorCalculation/readme.txt" "PreProcess/ViewFactorCalculation/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/ViewFactorCalculation/View3D.exe" "PreProcess/ViewFactorCalculation/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/ViewFactorCalculation/View3D32.pdf" "PreProcess/ViewFactorCalculation/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/ViewFactorCalculation/ViewFactorInterface.xls" "PreProcess/ViewFactorCalculation/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/WeatherConverter/Abbreviations.csv" "PreProcess/WeatherConverter/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/WeatherConverter/ASHRAE_2013_Monthly_DesignConditions.csv" "PreProcess/WeatherConverter/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/WeatherConverter/ASHRAE_2013_OtherMonthly_DesignConditions.csv" "PreProcess/WeatherConverter/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/WeatherConverter/ASHRAE_2013_Yearly_DesignConditions.csv" "PreProcess/WeatherConverter/")
  #install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/WeatherConverter/Cal Climate Zone Lat Long data.csv" "PreProcess/WeatherConverter/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/WeatherConverter/CountryCodes.txt" "PreProcess/WeatherConverter/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/WeatherConverter/EPlusWth.dll" "PreProcess/WeatherConverter/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/WeatherConverter/libifcoremd.dll" "PreProcess/WeatherConverter/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/WeatherConverter/libifportmd.dll" "PreProcess/WeatherConverter/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/WeatherConverter/libmmd.dll" "PreProcess/WeatherConverter/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/WeatherConverter/svml_dispmd.dll" "PreProcess/WeatherConverter/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/WeatherConverter/TimeZoneCodes.txt" "PreProcess/WeatherConverter/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/WeatherConverter/WBANLocations.csv" "PreProcess/WeatherConverter/")
  install_remote(FILES "https://raw.github.com/NREL/EnergyPlusBuildSupport/v8.2.0/bin/Windows/PreProcess/WeatherConverter/Weather.exe" "PreProcess/WeatherConverter/")
endif()

configure_file("${CMAKE_SOURCE_DIR}/cmake/CMakeCPackOptions.cmake.in"
  "${CMAKE_BINARY_DIR}/CMakeCPackOptions.cmake" @ONLY)
set(CPACK_PROJECT_CONFIG_FILE "${CMAKE_BINARY_DIR}/CMakeCPackOptions.cmake")

INCLUDE(CPack)

