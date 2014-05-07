//Maya ASCII 2014 scene
//Name: test.ma
//Last modified: Sat, Mar 22, 2014 01:56:44 PM
//Codeset: 1252
requires maya "2014";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOutputPass" -nodeType "mentalrayRenderPass"
		 -nodeType "mentalrayUserBuffer" -nodeType "mentalraySubdivApprox" -nodeType "mentalrayCurveApprox"
		 -nodeType "mentalraySurfaceApprox" -nodeType "mentalrayDisplaceApprox" -nodeType "mentalrayOptions"
		 -nodeType "mentalrayGlobals" -nodeType "mentalrayItemsList" -nodeType "mentalrayShader"
		 -nodeType "mentalrayUserData" -nodeType "mentalrayText" -nodeType "mentalrayTessellation"
		 -nodeType "mentalrayPhenomenon" -nodeType "mentalrayLightProfile" -nodeType "mentalrayVertexColors"
		 -nodeType "mentalrayIblShape" -nodeType "mapVizShape" -nodeType "mentalrayCCMeshProxy"
		 -nodeType "cylindricalLightLocator" -nodeType "discLightLocator" -nodeType "rectangularLightLocator"
		 -nodeType "sphericalLightLocator" -nodeType "abcimport" -nodeType "mia_physicalsun"
		 -nodeType "mia_physicalsky" -nodeType "mia_material" -nodeType "mia_material_x" -nodeType "mia_roundcorners"
		 -nodeType "mia_exposure_simple" -nodeType "mia_portal_light" -nodeType "mia_light_surface"
		 -nodeType "mia_exposure_photographic" -nodeType "mia_exposure_photographic_rev" -nodeType "mia_lens_bokeh"
		 -nodeType "mia_envblur" -nodeType "mia_ciesky" -nodeType "mia_photometric_light"
		 -nodeType "mib_texture_vector" -nodeType "mib_texture_remap" -nodeType "mib_texture_rotate"
		 -nodeType "mib_bump_basis" -nodeType "mib_bump_map" -nodeType "mib_passthrough_bump_map"
		 -nodeType "mib_bump_map2" -nodeType "mib_lookup_spherical" -nodeType "mib_lookup_cube1"
		 -nodeType "mib_lookup_cube6" -nodeType "mib_lookup_background" -nodeType "mib_lookup_cylindrical"
		 -nodeType "mib_texture_lookup" -nodeType "mib_texture_lookup2" -nodeType "mib_texture_filter_lookup"
		 -nodeType "mib_texture_checkerboard" -nodeType "mib_texture_polkadot" -nodeType "mib_texture_polkasphere"
		 -nodeType "mib_texture_turbulence" -nodeType "mib_texture_wave" -nodeType "mib_reflect"
		 -nodeType "mib_refract" -nodeType "mib_transparency" -nodeType "mib_continue" -nodeType "mib_opacity"
		 -nodeType "mib_twosided" -nodeType "mib_refraction_index" -nodeType "mib_dielectric"
		 -nodeType "mib_ray_marcher" -nodeType "mib_illum_lambert" -nodeType "mib_illum_phong"
		 -nodeType "mib_illum_ward" -nodeType "mib_illum_ward_deriv" -nodeType "mib_illum_blinn"
		 -nodeType "mib_illum_cooktorr" -nodeType "mib_illum_hair" -nodeType "mib_volume"
		 -nodeType "mib_color_alpha" -nodeType "mib_color_average" -nodeType "mib_color_intensity"
		 -nodeType "mib_color_interpolate" -nodeType "mib_color_mix" -nodeType "mib_color_spread"
		 -nodeType "mib_geo_cube" -nodeType "mib_geo_torus" -nodeType "mib_geo_sphere" -nodeType "mib_geo_cone"
		 -nodeType "mib_geo_cylinder" -nodeType "mib_geo_square" -nodeType "mib_geo_instance"
		 -nodeType "mib_geo_instance_mlist" -nodeType "mib_geo_add_uv_texsurf" -nodeType "mib_photon_basic"
		 -nodeType "mib_light_infinite" -nodeType "mib_light_point" -nodeType "mib_light_spot"
		 -nodeType "mib_light_photometric" -nodeType "mib_cie_d" -nodeType "mib_blackbody"
		 -nodeType "mib_shadow_transparency" -nodeType "mib_lens_stencil" -nodeType "mib_lens_clamp"
		 -nodeType "mib_lightmap_write" -nodeType "mib_lightmap_sample" -nodeType "mib_amb_occlusion"
		 -nodeType "mib_fast_occlusion" -nodeType "mib_map_get_scalar" -nodeType "mib_map_get_integer"
		 -nodeType "mib_map_get_vector" -nodeType "mib_map_get_color" -nodeType "mib_map_get_transform"
		 -nodeType "mib_map_get_scalar_array" -nodeType "mib_map_get_integer_array" -nodeType "mib_fg_occlusion"
		 -nodeType "mib_bent_normal_env" -nodeType "mib_glossy_reflection" -nodeType "mib_glossy_refraction"
		 -nodeType "builtin_bsdf_architectural" -nodeType "builtin_bsdf_architectural_comp"
		 -nodeType "builtin_bsdf_carpaint" -nodeType "builtin_bsdf_ashikhmin" -nodeType "builtin_bsdf_lambert"
		 -nodeType "builtin_bsdf_mirror" -nodeType "builtin_bsdf_phong" -nodeType "contour_store_function"
		 -nodeType "contour_store_function_simple" -nodeType "contour_contrast_function_levels"
		 -nodeType "contour_contrast_function_simple" -nodeType "contour_shader_simple" -nodeType "contour_shader_silhouette"
		 -nodeType "contour_shader_maxcolor" -nodeType "contour_shader_curvature" -nodeType "contour_shader_factorcolor"
		 -nodeType "contour_shader_depthfade" -nodeType "contour_shader_framefade" -nodeType "contour_shader_layerthinner"
		 -nodeType "contour_shader_widthfromcolor" -nodeType "contour_shader_widthfromlightdir"
		 -nodeType "contour_shader_widthfromlight" -nodeType "contour_shader_combi" -nodeType "contour_only"
		 -nodeType "contour_composite" -nodeType "contour_ps" -nodeType "mi_metallic_paint"
		 -nodeType "mi_metallic_paint_x" -nodeType "mi_bump_flakes" -nodeType "mi_car_paint_phen"
		 -nodeType "mi_metallic_paint_output_mixer" -nodeType "mi_car_paint_phen_x" -nodeType "physical_lens_dof"
		 -nodeType "physical_light" -nodeType "dgs_material" -nodeType "dgs_material_photon"
		 -nodeType "dielectric_material" -nodeType "dielectric_material_photon" -nodeType "oversampling_lens"
		 -nodeType "path_material" -nodeType "parti_volume" -nodeType "parti_volume_photon"
		 -nodeType "transmat" -nodeType "transmat_photon" -nodeType "mip_rayswitch" -nodeType "mip_rayswitch_advanced"
		 -nodeType "mip_rayswitch_environment" -nodeType "mip_card_opacity" -nodeType "mip_motionblur"
		 -nodeType "mip_motion_vector" -nodeType "mip_matteshadow" -nodeType "mip_cameramap"
		 -nodeType "mip_mirrorball" -nodeType "mip_grayball" -nodeType "mip_gamma_gain" -nodeType "mip_render_subset"
		 -nodeType "mip_matteshadow_mtl" -nodeType "mip_binaryproxy" -nodeType "mip_rayswitch_stage"
		 -nodeType "mip_fgshooter" -nodeType "mib_ptex_lookup" -nodeType "misss_physical"
		 -nodeType "misss_physical_phen" -nodeType "misss_fast_shader" -nodeType "misss_fast_shader_x"
		 -nodeType "misss_fast_shader2" -nodeType "misss_fast_shader2_x" -nodeType "misss_skin_specular"
		 -nodeType "misss_lightmap_write" -nodeType "misss_lambert_gamma" -nodeType "misss_call_shader"
		 -nodeType "misss_set_normal" -nodeType "misss_fast_lmap_maya" -nodeType "misss_fast_simple_maya"
		 -nodeType "misss_fast_skin_maya" -nodeType "misss_fast_skin_phen" -nodeType "misss_fast_skin_phen_d"
		 -nodeType "misss_mia_skin2_phen" -nodeType "misss_mia_skin2_phen_d" -nodeType "misss_lightmap_phen"
		 -nodeType "misss_mia_skin2_surface_phen" -nodeType "surfaceSampler" -nodeType "mib_data_bool"
		 -nodeType "mib_data_int" -nodeType "mib_data_scalar" -nodeType "mib_data_vector"
		 -nodeType "mib_data_color" -nodeType "mib_data_string" -nodeType "mib_data_texture"
		 -nodeType "mib_data_shader" -nodeType "mib_data_bool_array" -nodeType "mib_data_int_array"
		 -nodeType "mib_data_scalar_array" -nodeType "mib_data_vector_array" -nodeType "mib_data_color_array"
		 -nodeType "mib_data_string_array" -nodeType "mib_data_texture_array" -nodeType "mib_data_shader_array"
		 -nodeType "mib_data_get_bool" -nodeType "mib_data_get_int" -nodeType "mib_data_get_scalar"
		 -nodeType "mib_data_get_vector" -nodeType "mib_data_get_color" -nodeType "mib_data_get_string"
		 -nodeType "mib_data_get_texture" -nodeType "mib_data_get_shader" -nodeType "mib_data_get_shader_bool"
		 -nodeType "mib_data_get_shader_int" -nodeType "mib_data_get_shader_scalar" -nodeType "mib_data_get_shader_vector"
		 -nodeType "mib_data_get_shader_color" -nodeType "user_ibl_env" -nodeType "user_ibl_rect"
		 -nodeType "mia_material_x_passes" -nodeType "mi_metallic_paint_x_passes" -nodeType "mi_car_paint_phen_x_passes"
		 -nodeType "misss_fast_shader_x_passes" -dataType "byteArray" "Mayatomr" "2014.0 - 3.11.1.4 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010241-864206";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -n "group";
	setAttr ".s" -type "double3" 3.2304237388613837 3.2304237388613837 3.2304237388613837 ;
	setAttr ".rp" -type "double3" 0.44832681126385143 0.17712870053931506 0.76818146984938229 ;
	setAttr ".sp" -type "double3" 0.44832681126385143 0.17712870053931506 0.76818146984938229 ;
createNode transform -n "pasted__pCube1" -p "group";
	setAttr ".t" -type "double3" -0.50205222248741244 0.17712870053931531 -0.11920618666478044 ;
	setAttr ".r" -type "double3" 0 -100.29617631980534 0 ;
	setAttr ".s" -type "double3" 0.5972671232544482 0.65772657697256265 0.46321133353282928 ;
createNode mesh -n "pasted__Sandsäcke" -p "pasted__pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 60 ".pt[5:59]" -type "float3"  0 -1.8626451e-009 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1.8626451e-009 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1.8626451e-009 
		0 0 -1.8626451e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr ".dr" 1;
createNode transform -n "group1";
	setAttr ".rp" -type "double3" 0.44832681126385143 0.17712870053931498 0.76818146984938229 ;
	setAttr ".sp" -type "double3" 0.44832681126385143 0.17712870053931498 0.76818146984938229 ;
createNode transform -n "pasted__group" -p "group1";
	setAttr ".s" -type "double3" 3.2304237388613837 3.2304237388613837 3.2304237388613837 ;
	setAttr ".rp" -type "double3" 0.44832681126385143 0.17712870053931506 0.76818146984938229 ;
	setAttr ".sp" -type "double3" 0.44832681126385143 0.17712870053931506 0.76818146984938229 ;
createNode transform -n "pasted__pasted__pCube1" -p "|group1|pasted__group";
	setAttr ".t" -type "double3" 0.32577148903410552 0.17712870053931504 0.76001111503406649 ;
	setAttr ".s" -type "double3" 0.74833117676727978 0.64760293952733139 0.45608164808999208 ;
createNode mesh -n "pasted__pasted__Sandsäcke" -p "|group1|pasted__group|pasted__pasted__pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 60 ".pt[3:59]" -type "float3"  2.9802322e-008 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 2.9802322e-008 0 0 0 0 0 0 0 0 1.8626451e-009 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2.9802322e-008 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".dr" 1;
createNode transform -n "group2";
	setAttr ".rp" -type "double3" -0.79837608514334801 0.17712870053931587 0.20232913845707712 ;
	setAttr ".sp" -type "double3" -0.79837608514334801 0.17712870053931587 0.20232913845707712 ;
createNode transform -n "pasted__group" -p "group2";
	setAttr ".s" -type "double3" 3.2304237388613837 3.2304237388613837 3.2304237388613837 ;
	setAttr ".rp" -type "double3" 0.44832681126385143 0.17712870053931506 0.76818146984938229 ;
	setAttr ".sp" -type "double3" 0.44832681126385143 0.17712870053931506 0.76818146984938229 ;
createNode transform -n "pasted__pasted__pCube1" -p "|group2|pasted__group";
	setAttr ".t" -type "double3" -0.32079735323083264 0.17712870053931587 0.47262828286579944 ;
	setAttr ".r" -type "double3" 0 -50.406408881217182 0 ;
	setAttr ".s" -type "double3" 0.72684999999873234 0.67095378425912555 0.4725267429151378 ;
createNode mesh -n "pasted__pasted__Sandsäcke" -p "|group2|pasted__group|pasted__pasted__pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 60 ".pt[12:59]" -type "float3"  0 0 -1.1920929e-007 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1.1920929e-007 0 
		0 0 0 0 0 0 0 0 0 0 -1.1920929e-007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1.1920929e-007 
		0 0 0 0 0 0 0 0 0 0 0 -1.1920929e-007 0 0 0 0 0 -1.1920929e-007 0 0 0 0 0 0 0 0 0 
		0 0 -1.1920929e-007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1.1920929e-007 0 0 0 0 0 0 
		0 0 0 0 0 -1.1920929e-007 0 0 0 0 0 0 0 0 0 0 0 -1.1920929e-007 0 0 0;
	setAttr ".dr" 1;
createNode transform -n "group3";
	setAttr ".rp" -type "double3" 1.5877197121047393 0.17712870053931409 0.12576991501595808 ;
	setAttr ".sp" -type "double3" 1.5877197121047393 0.17712870053931409 0.12576991501595808 ;
createNode transform -n "pasted__group" -p "group3";
	setAttr ".s" -type "double3" 3.2304237388613837 3.2304237388613837 3.2304237388613837 ;
	setAttr ".rp" -type "double3" 0.44832681126385143 0.17712870053931506 0.76818146984938229 ;
	setAttr ".sp" -type "double3" 0.44832681126385143 0.17712870053931506 0.76818146984938229 ;
createNode transform -n "pasted__pasted__pCube1" -p "|group3|pasted__group";
	setAttr ".t" -type "double3" 0.93816200970114849 0.17712870053931476 0.45045053357926712 ;
	setAttr ".r" -type "double3" 0 -124.80931805068336 0 ;
	setAttr ".s" -type "double3" 0.73916486761891442 0.64484927285097848 0.45414234738675796 ;
createNode mesh -n "pasted__pasted__Sandsäcke" -p "|group3|pasted__group|pasted__pasted__pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 60 ".pt[0:59]" -type "float3"  0 0 -5.9604645e-008 0 0 -5.9604645e-008 
		-1.4901161e-008 0 -5.9604645e-008 0 0 -5.9604645e-008 0 0 -5.9604645e-008 0 0 -5.9604645e-008 
		0 0 -5.9604645e-008 0 0 -5.9604645e-008 0 0 -5.9604645e-008 0 0 -5.9604645e-008 0 
		0 -5.9604645e-008 0 0 -5.9604645e-008 0 0 -1.1920929e-007 0 0 0 0 0 -1.1920929e-007 
		0 0 -1.1920929e-007 0 0 -1.1920929e-007 0 0 -1.1920929e-007 0 0 -1.1920929e-007 0 
		0 -1.1920929e-007 0 0 -1.1920929e-007 0 0 -1.1920929e-007 0 0 -1.1920929e-007 0 0 
		-1.1920929e-007 0 0 -1.1920929e-007 0 0 0 0 0 -5.9604645e-008 0 0 -5.9604645e-008 
		0 0 -1.1920929e-007 0 0 0 0 0 -1.1920929e-007 0 0 -1.1920929e-007 0 0 -5.9604645e-008 
		0 0 -5.9604645e-008 0 0 -1.1920929e-007 0 0 0 -1.4901161e-008 0 -5.9604645e-008 0 
		0 -5.9604645e-008 0 0 -1.1920929e-007 0 0 0 0 0 -1.1920929e-007 0 0 0 0 0 -1.1920929e-007 
		0 0 -1.1920929e-007 0 0 -1.1920929e-007 0 0 0 0 0 -1.1920929e-007 0 0 -1.1920929e-007 
		0 0 -5.9604645e-008 0 0 -5.9604645e-008 0 0 -1.1920929e-007 0 0 0 0 0 -1.1920929e-007 
		0 0 -1.1920929e-007 0 0 -1.1920929e-007 0 0 0 0 0 -1.1920929e-007 0 0 -1.1920929e-007 
		0 0 -1.1920929e-007 0 0 0;
	setAttr ".dr" 1;
createNode transform -n "group4";
	setAttr ".rp" -type "double3" 1.9705158293103175 0.17712870053931587 -1.2012566246300311 ;
	setAttr ".sp" -type "double3" 1.9705158293103175 0.17712870053931587 -1.2012566246300311 ;
createNode transform -n "pasted__group" -p "group4";
	setAttr ".s" -type "double3" 3.2304237388613837 3.2304237388613837 3.2304237388613837 ;
	setAttr ".rp" -type "double3" 0.44832681126385143 0.17712870053931506 0.76818146984938229 ;
	setAttr ".sp" -type "double3" 0.44832681126385143 0.17712870053931506 0.76818146984938229 ;
createNode transform -n "pasted__pasted__pCube1" -p "|group4|pasted__group";
	setAttr ".t" -type "double3" 1.1163735038040301 0.17712870053931642 -0.14776206066225742 ;
	setAttr ".r" -type "double3" 0 -80.708001684045172 0 ;
	setAttr ".s" -type "double3" 0.61773557990964767 0.64234234650466893 0.45237681633388865 ;
createNode mesh -n "pasted__pasted__Sandsäcke" -p "|group4|pasted__group|pasted__pasted__pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 60 ".pt[3:59]" -type "float3"  1.4901161e-008 0 0 0 -3.7252903e-009 
		0 0 0 0 0 0 0 0 0 0 5.9604645e-008 0 0 5.9604645e-008 0 0 1.1920929e-007 0 0 0 0 
		0 0 0 -1.1920929e-007 0 0 0 0 0 0 0 -3.7252903e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 1.1920929e-007 
		0 0 0 0 0 0 0 0 1.4901161e-008 0 0 0 0 -1.1920929e-007 0 0 0 0 0 0 0 0 0 0 0 -1.1920929e-007 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1.1920929e-007 0 0 0 0 0 0 1.4901161e-008 0 0 
		0 0 -1.1920929e-007 0 0 0 0 0 -1.1920929e-007 0 0 0 0 0 0 0 0 0 0 0 -1.1920929e-007 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1.1920929e-007 0 0 0 0 0 0 1.4901161e-008 0 0 
		0 0 -1.1920929e-007 0 0 0 1.1920929e-007 0 0 0 0 0 0 0 -1.1920929e-007 0 0 0;
	setAttr ".dr" 1;
createNode transform -n "pCylinder1";
	setAttr ".t" -type "double3" 1.3201313095386384 0.94116712891024368 -2.9959422998692 ;
	setAttr ".s" -type "double3" 0.04 1.124396924178805 0.04 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group5";
	setAttr ".rp" -type "double3" -1.289272677041057 0.94116712891024379 -0.55926084177375568 ;
	setAttr ".sp" -type "double3" -1.289272677041057 0.94116712891024379 -0.55926084177375568 ;
createNode transform -n "pasted__pCylinder1" -p "group5";
	setAttr ".t" -type "double3" -1.2892726722726853 0.94116712891024368 -2.9959422998692 ;
	setAttr ".s" -type "double3" 0.04 1.124396924178805 0.04 ;
createNode mesh -n "pasted__pCylinderShape1" -p "|group5|pasted__pCylinder1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group6";
	setAttr ".rp" -type "double3" 0.015429313864604999 0.94116712891024379 -0.55926084177375568 ;
	setAttr ".sp" -type "double3" 0.015429313864604999 0.94116712891024379 -0.55926084177375568 ;
createNode transform -n "pasted__pCylinder1" -p "group6";
	setAttr ".t" -type "double3" 1.3201313095386384 0.94116712891024368 -0.55926083462119824 ;
	setAttr ".s" -type "double3" 0.04 1.124396924178805 0.04 ;
createNode mesh -n "pasted__pCylinderShape1" -p "|group6|pasted__pCylinder1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__group5" -p "group6";
	setAttr ".rp" -type "double3" -1.289272677041057 0.94116712891024379 -0.55926084177375568 ;
	setAttr ".sp" -type "double3" -1.289272677041057 0.94116712891024379 -0.55926084177375568 ;
createNode transform -n "pasted__pasted__pCylinder1" -p "pasted__group5";
	setAttr ".t" -type "double3" -1.2892726722726853 0.94116712891024368 -0.55926083462119824 ;
	setAttr ".s" -type "double3" 0.04 1.124396924178805 0.04 ;
createNode mesh -n "pasted__pasted__pCylinderShape1" -p "pasted__pasted__pCylinder1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pPlane1";
	setAttr ".t" -type "double3" 0.015429313864605332 2.0624763409503575 -1.7075317143597279 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt";
	setAttr ".pt[27]" -type "float3" 0 -0.05549043 0 ;
	setAttr ".pt[28]" -type "float3" 0 -0.05549043 0 ;
	setAttr ".pt[33]" -type "float3" 0 -0.05549043 0 ;
	setAttr ".pt[34]" -type "float3" 0 -0.05549043 0 ;
	setAttr ".dr" 1;
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" 0.1929722918850697 0.78615899676955858 -0.042390661513854511 ;
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".s" -type "double3" 2.6681985342453545 2.1955332675660619 1.7664101494985021 ;
	setAttr -av ".sx";
	setAttr -av ".sy";
	setAttr -av ".sz";
	setAttr ".rp" -type "double3" 0 0.0022036422130785951 0 ;
	setAttr ".sp" -type "double3" 0 0.0010036933831206502 0 ;
	setAttr ".spt" -type "double3" -9.7144514654701197e-016 0.0022570539386572936 0 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "pCylinder2";
	setAttr ".t" -type "double3" 0.14305105960538561 0.79255124649796638 0.77697432771327124 ;
	setAttr ".r" -type "double3" 89.839270810205363 0.28600482861466359 -180.00080231483761 ;
	setAttr ".s" -type "double3" 1.308650524700079 2.4791044659138564 1.308650524700079 ;
	setAttr ".spt" -type "double3" 0 -0.0129514539547278 0 ;
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder3";
	setAttr ".t" -type "double3" 0.37583470915833883 0.61096494888567632 0.24194871443772892 ;
	setAttr ".r" -type "double3" -355.53015217393101 -37.678816012933282 399.12966391103595 ;
	setAttr ".s" -type "double3" 2.1782189913784631 2.1782189913784631 2.1782189913784631 ;
createNode mesh -n "pCylinderShape3" -p "pCylinder3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".dsr" 2;
	setAttr ".xsr" 3;
	setAttr ".nat" 22.344827651977539;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group7";
	setAttr ".rp" -type "double3" 1.1100368268033081 0.30126299746936192 -5.806046367612022 ;
	setAttr ".sp" -type "double3" 1.1100368268033081 0.30126299746936192 -5.806046367612022 ;
createNode transform -n "pasted__pCylinder3" -p "group7";
	setAttr ".t" -type "double3" 0.0051258437906417237 0.61096494888567632 0.26513785315917249 ;
	setAttr ".r" -type "double3" 257.19451138622946 -82.747205528925051 -301.50391313132309 ;
	setAttr ".s" -type "double3" 2.231173779247726 2.231173779247726 2.231173779247726 ;
createNode mesh -n "pasted__pCylinderShape3" -p "pasted__pCylinder3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".dsr" 2;
	setAttr ".xsr" 3;
	setAttr ".nat" 22.344827651977539;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode polyMergeVert -n "polyMergeVert21";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" -0.3448589360687988 0 1.8983562869877677 0 0 2.1247355479322056 0 0
		 -1.4722728122462168 -0 -0.26745581907592686 0 -2.6218001802823756 0.17712870053931595 -2.0984566813265406 1;
	setAttr ".d" 5.069;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert11";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" -0.3448589360687988 0 1.8983562869877677 0 0 2.1247355479322056 0 0
		 -1.4722728122462168 -0 -0.26745581907592686 0 -2.6218001802823756 0.17712870053931595 -2.0984566813265406 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert6";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" -0.3448589360687988 0 1.8983562869877677 0 0 2.1247355479322056 0 0
		 -1.4722728122462168 -0 -0.26745581907592686 0 -2.6218001802823756 0.17712870053931595 -2.0984566813265406 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" -0.3448589360687988 0 1.8983562869877677 0 0 2.1247355479322056 0 0
		 -1.4722728122462168 -0 -0.26745581907592686 0 -2.6218001802823756 0.17712870053931595 -2.0984566813265406 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.064627089 0 ;
	setAttr ".tk[4]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[5]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[6]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[7]" -type "float3" 0 -0.020349735 0 ;
	setAttr ".tk[10]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[11]" -type "float3" 0 -0.018400984 0 ;
	setAttr ".tk[14]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[15]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[16]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[20]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[21]" -type "float3" 0 -0.018400984 0 ;
	setAttr ".tk[22]" -type "float3" -2.6077032e-008 0 0 ;
	setAttr ".tk[23]" -type "float3" -2.6077032e-008 0 0 ;
	setAttr ".tk[28]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[29]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[30]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[31]" -type "float3" -2.6077032e-008 0.064627089 0 ;
	setAttr ".tk[32]" -type "float3" 0 0.064627089 0 ;
	setAttr ".tk[33]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[34]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[35]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[41]" -type "float3" -2.6077032e-008 0 0 ;
	setAttr ".tk[42]" -type "float3" -2.6077032e-008 0 0 ;
	setAttr ".tk[44]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[45]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[46]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[47]" -type "float3" 0 -0.020349735 0 ;
	setAttr ".tk[48]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[54]" -type "float3" 0 0.064627089 0 ;
	setAttr ".tk[55]" -type "float3" -2.6077032e-008 0.064627089 0 ;
	setAttr ".tk[56]" -type "float3" -2.6077032e-008 0.064627089 0 ;
createNode deleteComponent -n "pasted__deleteComponent1";
	setAttr ".dc" -type "componentList" 31 "e[0:29]" "e[31]" "e[33]" "e[35]" "e[37]" "e[39]" "e[41]" "e[43]" "e[45]" "e[47]" "e[49]" "e[51]" "e[53]" "e[55]" "e[57]" "e[59]" "e[61]" "e[63]" "e[65]" "e[67]" "e[69]" "e[71]" "e[73]" "e[75]" "e[77]" "e[79]" "e[81]" "e[83]" "e[85]" "e[87]" "e[89]";
createNode polyExtrudeVertex -n "pasted__polyChamfer1";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.44832681126385143 0.17712870053931504 0.76818146984938229 1;
	setAttr -l on ".l";
	setAttr ".w" 0.25;
	setAttr -l on ".d";
createNode polySplit -n "pasted__polySplit6";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 2;
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.50000005960464478 0.5 -5.9604644775390625e-008 ;
	setAttr ".sps[0].sp[1].f" 9;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[2].f" 9;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.49999994039535522 0.50000005960464478 
		0 ;
	setAttr ".c2v" yes;
createNode polySplit -n "pasted__polySplit5";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0.50000005960464478 -5.9604644775390625e-008 ;
	setAttr ".sps[0].sp[1].f" 3;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[2].f" 3;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".c2v" yes;
createNode polySplit -n "pasted__polySplit4";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 3;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[1].f" 3;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[2].t" 1;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".c2v" yes;
createNode polySplit -n "pasted__polySplit3";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].t" 3;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[1].f" 6;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0 0.49999994039535522 0.50000005960464478 ;
	setAttr ".sps[0].sp[2].f" 6;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.49999994039535522 0.50000005960464478 
		0 ;
	setAttr ".c2v" yes;
createNode polySplit -n "pasted__polySplit2";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[1].f" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0 0.5 0.5 ;
	setAttr ".sps[0].sp[2].f" 2;
	setAttr ".sps[0].sp[2].t" 1;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.50000107288360596 0.49999785423278809 
		1.0728836059570313e-006 ;
	setAttr ".c2v" yes;
createNode polySplit -n "pasted__polySplit1";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.50000005960464478 0.49999997019767761 
		-2.9802322387695313e-008 ;
	setAttr ".sps[0].sp[1].f" 1;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[2].f" 2;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".c2v" yes;
createNode polyCube -n "pasted__polyCube1";
	setAttr ".w" 1.3276314276496168;
	setAttr ".h" 0.35425740107863007;
	setAttr ".d" 0.970988991481323;
	setAttr ".cuv" 4;
createNode polyMergeVert -n "polyMergeVert17";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 2.4174267979590951 0 0 0 0 2.0920319092055046 0 0 0 0 1.473336982848934 0
		 0.052421189009073998 0.17712870053931495 0.74178776169906557 1;
	setAttr ".d" 5.069;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert13";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 2.4174267979590951 0 0 0 0 2.0920319092055046 0 0 0 0 1.473336982848934 0
		 0.052421189009073998 0.17712870053931495 0.74178776169906557 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert8";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 2.4174267979590951 0 0 0 0 2.0920319092055046 0 0 0 0 1.473336982848934 0
		 0.052421189009073998 0.17712870053931495 0.74178776169906557 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 2.4174267979590951 0 0 0 0 2.0920319092055046 0 0 0 0 1.473336982848934 0
		 0.052421189009073998 0.17712870053931495 0.74178776169906557 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.064627089 0 ;
	setAttr ".tk[4]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[5]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[6]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[7]" -type "float3" 0 -0.020349735 0 ;
	setAttr ".tk[10]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[11]" -type "float3" 0 -0.018400984 0 ;
	setAttr ".tk[14]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[15]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[16]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[20]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[21]" -type "float3" 0 -0.018400984 0 ;
	setAttr ".tk[22]" -type "float3" -2.6077032e-008 0 0 ;
	setAttr ".tk[23]" -type "float3" -2.6077032e-008 0 0 ;
	setAttr ".tk[28]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[29]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[30]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[31]" -type "float3" -2.6077032e-008 0.064627089 0 ;
	setAttr ".tk[32]" -type "float3" 0 0.064627089 0 ;
	setAttr ".tk[33]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[34]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[35]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[41]" -type "float3" -2.6077032e-008 0 0 ;
	setAttr ".tk[42]" -type "float3" -2.6077032e-008 0 0 ;
	setAttr ".tk[44]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[45]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[46]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[47]" -type "float3" 0 -0.020349735 0 ;
	setAttr ".tk[48]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[54]" -type "float3" 0 0.064627089 0 ;
	setAttr ".tk[55]" -type "float3" -2.6077032e-008 0.064627089 0 ;
	setAttr ".tk[56]" -type "float3" -2.6077032e-008 0.064627089 0 ;
createNode deleteComponent -n "pasted__pasted__deleteComponent1";
	setAttr ".dc" -type "componentList" 31 "e[0:29]" "e[31]" "e[33]" "e[35]" "e[37]" "e[39]" "e[41]" "e[43]" "e[45]" "e[47]" "e[49]" "e[51]" "e[53]" "e[55]" "e[57]" "e[59]" "e[61]" "e[63]" "e[65]" "e[67]" "e[69]" "e[71]" "e[73]" "e[75]" "e[77]" "e[79]" "e[81]" "e[83]" "e[85]" "e[87]" "e[89]";
createNode polyExtrudeVertex -n "pasted__pasted__polyChamfer1";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.44832681126385143 0.17712870053931504 0.76818146984938229 1;
	setAttr -l on ".l";
	setAttr ".w" 0.25;
	setAttr -l on ".d";
createNode polySplit -n "pasted__pasted__polySplit6";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 2;
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.50000005960464478 0.5 -5.9604644775390625e-008 ;
	setAttr ".sps[0].sp[1].f" 9;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[2].f" 9;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.49999994039535522 0.50000005960464478 
		0 ;
	setAttr ".c2v" yes;
createNode polySplit -n "pasted__pasted__polySplit5";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0.50000005960464478 -5.9604644775390625e-008 ;
	setAttr ".sps[0].sp[1].f" 3;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[2].f" 3;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".c2v" yes;
createNode polySplit -n "pasted__pasted__polySplit4";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 3;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[1].f" 3;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[2].t" 1;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".c2v" yes;
createNode polySplit -n "pasted__pasted__polySplit3";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].t" 3;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[1].f" 6;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0 0.49999994039535522 0.50000005960464478 ;
	setAttr ".sps[0].sp[2].f" 6;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.49999994039535522 0.50000005960464478 
		0 ;
	setAttr ".c2v" yes;
createNode polySplit -n "pasted__pasted__polySplit2";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[1].f" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0 0.5 0.5 ;
	setAttr ".sps[0].sp[2].f" 2;
	setAttr ".sps[0].sp[2].t" 1;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.50000107288360596 0.49999785423278809 
		1.0728836059570313e-006 ;
	setAttr ".c2v" yes;
createNode polySplit -n "pasted__pasted__polySplit1";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.50000005960464478 0.49999997019767761 
		-2.9802322387695313e-008 ;
	setAttr ".sps[0].sp[1].f" 1;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[2].f" 2;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".c2v" yes;
createNode polyCube -n "pasted__pasted__polyCube1";
	setAttr ".w" 1.3276314276496168;
	setAttr ".h" 0.35425740107863007;
	setAttr ".d" 0.970988991481323;
	setAttr ".cuv" 4;
createNode polyCut -n "polyCut6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:31]";
	setAttr ".ix" -type "matrix" 1.496490499820911 0 1.8093583049384152 0 0 2.1674650323495586 0 0
		 -1.1762677121833873 0 0.9728716814818118 0 -2.0362701478517038 0.17712870053931773 -0.1865805614785212 1;
	setAttr ".pc" -type "double3" -0.87779323951907806 1.9726951102814247 1.5179286623216233 ;
	setAttr ".ro" -type "double3" -180 0 0 ;
	setAttr ".ps" -type "double2" 3.1289310455322266 1 ;
createNode polyCut -n "polyCut5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:31]";
	setAttr ".ix" -type "matrix" 1.496490499820911 0 1.8093583049384152 0 0 2.1674650323495586 0 0
		 -1.1762677121833873 0 0.9728716814818118 0 -2.0362701478517038 0.17712870053931773 -0.1865805614785212 1;
	setAttr ".pc" -type "double3" -0.92326607729333565 1.9577326568571498 1.5291369077491794 ;
	setAttr ".ro" -type "double3" -180 0 0 ;
	setAttr ".ps" -type "double2" 3.1289310455322266 1 ;
createNode polyCut -n "polyCut4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:31]";
	setAttr ".ix" -type "matrix" 1.496490499820911 0 1.8093583049384152 0 0 2.1674650323495586 0 0
		 -1.1762677121833873 0 0.9728716814818118 0 -2.0362701478517038 0.17712870053931773 -0.1865805614785212 1;
	setAttr ".pc" -type "double3" -0.26152881540412715 1.6554910976867838 1.6117259378612625 ;
	setAttr ".ro" -type "double3" -180 0 0 ;
	setAttr ".ps" -type "double2" 3.1289310455322266 1 ;
createNode polyCut -n "polyCut3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:31]";
	setAttr ".ix" -type "matrix" 1.496490499820911 0 1.8093583049384152 0 0 2.1674650323495586 0 0
		 -1.1762677121833873 0 0.9728716814818118 0 -2.0362701478517038 0.17712870053931773 -0.1865805614785212 1;
	setAttr ".pc" -type "double3" -0.94642913430988151 1.496889091389465 1.7489976155407452 ;
	setAttr ".ro" -type "double3" -180 0 0 ;
	setAttr ".ps" -type "double2" 3.1289310455322266 1 ;
createNode polyCut -n "polyCut2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:31]";
	setAttr ".ix" -type "matrix" 1.496490499820911 0 1.8093583049384152 0 0 2.1674650323495586 0 0
		 -1.1762677121833873 0 0.9728716814818118 0 -2.0362701478517038 0.17712870053931773 -0.1865805614785212 1;
	setAttr ".pc" -type "double3" -0.2703932980148403 1.245519873861632 1.8062477372361236 ;
	setAttr ".ro" -type "double3" -180 0 0 ;
	setAttr ".ps" -type "double2" 3.1289310455322266 1 ;
createNode polyCut -n "polyCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:31]";
	setAttr ".ix" -type "matrix" 1.496490499820911 0 1.8093583049384152 0 0 2.1674650323495586 0 0
		 -1.1762677121833873 0 0.9728716814818118 0 -2.0362701478517038 0.17712870053931773 -0.1865805614785212 1;
	setAttr ".pc" -type "double3" -0.7333588714591166 1.9068603987980681 1.5358918395117427 ;
	setAttr ".ro" -type "double3" -180 0 0 ;
	setAttr ".ps" -type "double2" 3.1289310455322266 1 ;
createNode polyMergeVert -n "polyMergeVert20";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1.496490499820911 0 1.8093583049384152 0 0 2.1674650323495586 0 0
		 -1.1762677121833873 0 0.9728716814818118 0 -2.0362701478517038 0.17712870053931773 -0.1865805614785212 1;
	setAttr ".d" 5.069;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert16";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1.496490499820911 0 1.8093583049384152 0 0 2.1674650323495586 0 0
		 -1.1762677121833873 0 0.9728716814818118 0 -2.0362701478517038 0.17712870053931773 -0.1865805614785212 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert12";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1.496490499820911 0 1.8093583049384152 0 0 2.1674650323495586 0 0
		 -1.1762677121833873 0 0.9728716814818118 0 -2.0362701478517038 0.17712870053931773 -0.1865805614785212 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert7";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1.496490499820911 0 1.8093583049384152 0 0 2.1674650323495586 0 0
		 -1.1762677121833873 0 0.9728716814818118 0 -2.0362701478517038 0.17712870053931773 -0.1865805614785212 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert3";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1.496490499820911 0 1.8093583049384152 0 0 2.1674650323495586 0 0
		 -1.1762677121833873 0 0.9728716814818118 0 -2.0362701478517038 0.17712870053931773 -0.1865805614785212 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.064627089 0 ;
	setAttr ".tk[4]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[5]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[6]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[7]" -type "float3" 0 -0.020349735 0 ;
	setAttr ".tk[10]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[11]" -type "float3" 0 -0.018400984 0 ;
	setAttr ".tk[14]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[15]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[16]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[20]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[21]" -type "float3" 0 -0.018400984 0 ;
	setAttr ".tk[22]" -type "float3" -2.6077032e-008 0 0 ;
	setAttr ".tk[23]" -type "float3" -2.6077032e-008 0 0 ;
	setAttr ".tk[28]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[29]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[30]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[31]" -type "float3" -2.6077032e-008 0.064627089 0 ;
	setAttr ".tk[32]" -type "float3" 0 0.064627089 0 ;
	setAttr ".tk[33]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[34]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[35]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[41]" -type "float3" -2.6077032e-008 0 0 ;
	setAttr ".tk[42]" -type "float3" -2.6077032e-008 0 0 ;
	setAttr ".tk[44]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[45]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[46]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[47]" -type "float3" 0 -0.020349735 0 ;
	setAttr ".tk[48]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[54]" -type "float3" 0 0.064627089 0 ;
	setAttr ".tk[55]" -type "float3" -2.6077032e-008 0.064627089 0 ;
	setAttr ".tk[56]" -type "float3" -2.6077032e-008 0.064627089 0 ;
createNode deleteComponent -n "pasted__pasted__deleteComponent2";
	setAttr ".dc" -type "componentList" 31 "e[0:29]" "e[31]" "e[33]" "e[35]" "e[37]" "e[39]" "e[41]" "e[43]" "e[45]" "e[47]" "e[49]" "e[51]" "e[53]" "e[55]" "e[57]" "e[59]" "e[61]" "e[63]" "e[65]" "e[67]" "e[69]" "e[71]" "e[73]" "e[75]" "e[77]" "e[79]" "e[81]" "e[83]" "e[85]" "e[87]" "e[89]";
createNode polyExtrudeVertex -n "pasted__pasted__polyChamfer2";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.44832681126385143 0.17712870053931504 0.76818146984938229 1;
	setAttr -l on ".l";
	setAttr ".w" 0.25;
	setAttr -l on ".d";
createNode polySplit -n "pasted__pasted__polySplit12";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 2;
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.50000005960464478 0.5 -5.9604644775390625e-008 ;
	setAttr ".sps[0].sp[1].f" 9;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[2].f" 9;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.49999994039535522 0.50000005960464478 
		0 ;
	setAttr ".c2v" yes;
createNode polySplit -n "pasted__pasted__polySplit11";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0.50000005960464478 -5.9604644775390625e-008 ;
	setAttr ".sps[0].sp[1].f" 3;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[2].f" 3;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".c2v" yes;
createNode polySplit -n "pasted__pasted__polySplit10";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 3;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[1].f" 3;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[2].t" 1;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".c2v" yes;
createNode polySplit -n "pasted__pasted__polySplit9";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].t" 3;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[1].f" 6;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0 0.49999994039535522 0.50000005960464478 ;
	setAttr ".sps[0].sp[2].f" 6;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.49999994039535522 0.50000005960464478 
		0 ;
	setAttr ".c2v" yes;
createNode polySplit -n "pasted__pasted__polySplit8";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[1].f" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0 0.5 0.5 ;
	setAttr ".sps[0].sp[2].f" 2;
	setAttr ".sps[0].sp[2].t" 1;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.50000107288360596 0.49999785423278809 
		1.0728836059570313e-006 ;
	setAttr ".c2v" yes;
createNode polySplit -n "pasted__pasted__polySplit7";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.50000005960464478 0.49999997019767761 
		-2.9802322387695313e-008 ;
	setAttr ".sps[0].sp[1].f" 1;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[2].f" 2;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".c2v" yes;
createNode polyCube -n "pasted__pasted__polyCube2";
	setAttr ".w" 1.3276314276496168;
	setAttr ".h" 0.35425740107863007;
	setAttr ".d" 0.970988991481323;
	setAttr ".cuv" 4;
createNode polyMergeVert -n "polyMergeVert18";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" -1.3630776977998054 0 1.9605313502854311 0 0 2.0831363990053027 0 0
		 -1.2045490100362726 -0 -0.83747392830430201 0 2.0307020644255722 0.17712870053931407 -0.25822408924825124 1;
	setAttr ".d" 5.069;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert14";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" -1.3630776977998054 0 1.9605313502854311 0 0 2.0831363990053027 0 0
		 -1.2045490100362726 -0 -0.83747392830430201 0 2.0307020644255722 0.17712870053931407 -0.25822408924825124 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert9";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" -1.3630776977998054 0 1.9605313502854311 0 0 2.0831363990053027 0 0
		 -1.2045490100362726 -0 -0.83747392830430201 0 2.0307020644255722 0.17712870053931407 -0.25822408924825124 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert4";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" -1.3630776977998054 0 1.9605313502854311 0 0 2.0831363990053027 0 0
		 -1.2045490100362726 -0 -0.83747392830430201 0 2.0307020644255722 0.17712870053931407 -0.25822408924825124 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.064627089 0 ;
	setAttr ".tk[4]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[5]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[6]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[7]" -type "float3" 0 -0.020349735 0 ;
	setAttr ".tk[10]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[11]" -type "float3" 0 -0.018400984 0 ;
	setAttr ".tk[14]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[15]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[16]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[20]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[21]" -type "float3" 0 -0.018400984 0 ;
	setAttr ".tk[22]" -type "float3" -2.6077032e-008 0 0 ;
	setAttr ".tk[23]" -type "float3" -2.6077032e-008 0 0 ;
	setAttr ".tk[28]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[29]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[30]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[31]" -type "float3" -2.6077032e-008 0.064627089 0 ;
	setAttr ".tk[32]" -type "float3" 0 0.064627089 0 ;
	setAttr ".tk[33]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[34]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[35]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[41]" -type "float3" -2.6077032e-008 0 0 ;
	setAttr ".tk[42]" -type "float3" -2.6077032e-008 0 0 ;
	setAttr ".tk[44]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[45]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[46]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[47]" -type "float3" 0 -0.020349735 0 ;
	setAttr ".tk[48]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[54]" -type "float3" 0 0.064627089 0 ;
	setAttr ".tk[55]" -type "float3" -2.6077032e-008 0.064627089 0 ;
	setAttr ".tk[56]" -type "float3" -2.6077032e-008 0.064627089 0 ;
createNode deleteComponent -n "pasted__pasted__deleteComponent3";
	setAttr ".dc" -type "componentList" 31 "e[0:29]" "e[31]" "e[33]" "e[35]" "e[37]" "e[39]" "e[41]" "e[43]" "e[45]" "e[47]" "e[49]" "e[51]" "e[53]" "e[55]" "e[57]" "e[59]" "e[61]" "e[63]" "e[65]" "e[67]" "e[69]" "e[71]" "e[73]" "e[75]" "e[77]" "e[79]" "e[81]" "e[83]" "e[85]" "e[87]" "e[89]";
createNode polyExtrudeVertex -n "pasted__pasted__polyChamfer3";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.44832681126385143 0.17712870053931504 0.76818146984938229 1;
	setAttr -l on ".l";
	setAttr ".w" 0.25;
	setAttr -l on ".d";
createNode polySplit -n "pasted__pasted__polySplit18";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 2;
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.50000005960464478 0.5 -5.9604644775390625e-008 ;
	setAttr ".sps[0].sp[1].f" 9;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[2].f" 9;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.49999994039535522 0.50000005960464478 
		0 ;
	setAttr ".c2v" yes;
createNode polySplit -n "pasted__pasted__polySplit17";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0.50000005960464478 -5.9604644775390625e-008 ;
	setAttr ".sps[0].sp[1].f" 3;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[2].f" 3;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".c2v" yes;
createNode polySplit -n "pasted__pasted__polySplit16";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 3;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[1].f" 3;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[2].t" 1;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".c2v" yes;
createNode polySplit -n "pasted__pasted__polySplit15";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].t" 3;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[1].f" 6;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0 0.49999994039535522 0.50000005960464478 ;
	setAttr ".sps[0].sp[2].f" 6;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.49999994039535522 0.50000005960464478 
		0 ;
	setAttr ".c2v" yes;
createNode polySplit -n "pasted__pasted__polySplit14";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[1].f" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0 0.5 0.5 ;
	setAttr ".sps[0].sp[2].f" 2;
	setAttr ".sps[0].sp[2].t" 1;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.50000107288360596 0.49999785423278809 
		1.0728836059570313e-006 ;
	setAttr ".c2v" yes;
createNode polySplit -n "pasted__pasted__polySplit13";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.50000005960464478 0.49999997019767761 
		-2.9802322387695313e-008 ;
	setAttr ".sps[0].sp[1].f" 1;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[2].f" 2;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".c2v" yes;
createNode polyCube -n "pasted__pasted__polyCube3";
	setAttr ".w" 1.3276314276496168;
	setAttr ".h" 0.35425740107863007;
	setAttr ".d" 0.970988991481323;
	setAttr ".cuv" 4;
createNode polyMergeVert -n "polyMergeVert19";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 0.32221310091266847 0 1.9693626551390648 0 0 2.0750379646246069 0 0
		 -1.4421931277925897 0 0.23596137491912414 0 2.6064007055134768 0.17712870053931951 -2.1907042545719246 1;
	setAttr ".d" 5.069;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert15";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 0.32221310091266847 0 1.9693626551390648 0 0 2.0750379646246069 0 0
		 -1.4421931277925897 0 0.23596137491912414 0 2.6064007055134768 0.17712870053931951 -2.1907042545719246 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert10";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 0.32221310091266847 0 1.9693626551390648 0 0 2.0750379646246069 0 0
		 -1.4421931277925897 0 0.23596137491912414 0 2.6064007055134768 0.17712870053931951 -2.1907042545719246 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert5";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 0.32221310091266847 0 1.9693626551390648 0 0 2.0750379646246069 0 0
		 -1.4421931277925897 0 0.23596137491912414 0 2.6064007055134768 0.17712870053931951 -2.1907042545719246 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.064627089 0 ;
	setAttr ".tk[4]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[5]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[6]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[7]" -type "float3" 0 -0.020349735 0 ;
	setAttr ".tk[10]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[11]" -type "float3" 0 -0.018400984 0 ;
	setAttr ".tk[14]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[15]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[16]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[20]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[21]" -type "float3" 0 -0.018400984 0 ;
	setAttr ".tk[22]" -type "float3" -2.6077032e-008 0 0 ;
	setAttr ".tk[23]" -type "float3" -2.6077032e-008 0 0 ;
	setAttr ".tk[28]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[29]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[30]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[31]" -type "float3" -2.6077032e-008 0.064627089 0 ;
	setAttr ".tk[32]" -type "float3" 0 0.064627089 0 ;
	setAttr ".tk[33]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[34]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[35]" -type "float3" 0 -0.07434535 0 ;
	setAttr ".tk[41]" -type "float3" -2.6077032e-008 0 0 ;
	setAttr ".tk[42]" -type "float3" -2.6077032e-008 0 0 ;
	setAttr ".tk[44]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[45]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[46]" -type "float3" 0 -0.066973105 0 ;
	setAttr ".tk[47]" -type "float3" 0 -0.020349735 0 ;
	setAttr ".tk[48]" -type "float3" 0 0.050039161 0 ;
	setAttr ".tk[54]" -type "float3" 0 0.064627089 0 ;
	setAttr ".tk[55]" -type "float3" -2.6077032e-008 0.064627089 0 ;
	setAttr ".tk[56]" -type "float3" -2.6077032e-008 0.064627089 0 ;
createNode deleteComponent -n "pasted__pasted__deleteComponent4";
	setAttr ".dc" -type "componentList" 31 "e[0:29]" "e[31]" "e[33]" "e[35]" "e[37]" "e[39]" "e[41]" "e[43]" "e[45]" "e[47]" "e[49]" "e[51]" "e[53]" "e[55]" "e[57]" "e[59]" "e[61]" "e[63]" "e[65]" "e[67]" "e[69]" "e[71]" "e[73]" "e[75]" "e[77]" "e[79]" "e[81]" "e[83]" "e[85]" "e[87]" "e[89]";
createNode polyExtrudeVertex -n "pasted__pasted__polyChamfer4";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.44832681126385143 0.17712870053931504 0.76818146984938229 1;
	setAttr -l on ".l";
	setAttr ".w" 0.25;
	setAttr -l on ".d";
createNode polySplit -n "pasted__pasted__polySplit24";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 2;
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.50000005960464478 0.5 -5.9604644775390625e-008 ;
	setAttr ".sps[0].sp[1].f" 9;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[2].f" 9;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.49999994039535522 0.50000005960464478 
		0 ;
	setAttr ".c2v" yes;
createNode polySplit -n "pasted__pasted__polySplit23";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0.50000005960464478 -5.9604644775390625e-008 ;
	setAttr ".sps[0].sp[1].f" 3;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[2].f" 3;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".c2v" yes;
createNode polySplit -n "pasted__pasted__polySplit22";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 3;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[1].f" 3;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[2].t" 1;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".c2v" yes;
createNode polySplit -n "pasted__pasted__polySplit21";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].t" 3;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[1].f" 6;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0 0.49999994039535522 0.50000005960464478 ;
	setAttr ".sps[0].sp[2].f" 6;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.49999994039535522 0.50000005960464478 
		0 ;
	setAttr ".c2v" yes;
createNode polySplit -n "pasted__pasted__polySplit20";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[1].f" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0 0.5 0.5 ;
	setAttr ".sps[0].sp[2].f" 2;
	setAttr ".sps[0].sp[2].t" 1;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.50000107288360596 0.49999785423278809 
		1.0728836059570313e-006 ;
	setAttr ".c2v" yes;
createNode polySplit -n "pasted__pasted__polySplit19";
	setAttr -s 3 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.50000005960464478 0.49999997019767761 
		-2.9802322387695313e-008 ;
	setAttr ".sps[0].sp[1].f" 1;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[2].f" 2;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".c2v" yes;
createNode polyCube -n "pasted__pasted__polyCube4";
	setAttr ".w" 1.3276314276496168;
	setAttr ".h" 0.35425740107863007;
	setAttr ".d" 0.970988991481323;
	setAttr ".cuv" 4;
createNode polyReduce -n "polyReduce11";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ver" 1;
	setAttr ".p" 50;
	setAttr ".vmp" -type "string" "";
	setAttr ".sym" -type "double4" 0 1 0 0 ;
	setAttr ".stl" 0.01;
	setAttr ".kqw" 1;
	setAttr ".cr" yes;
createNode polyReduce -n "polyReduce8";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ver" 1;
	setAttr ".p" 50;
	setAttr ".vmp" -type "string" "";
	setAttr ".sym" -type "double4" 0 1 0 0 ;
	setAttr ".stl" 0.01;
	setAttr ".kqw" 1;
	setAttr ".cr" yes;
createNode polyCylinder -n "polyCylinder1";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode materialInfo -n "materialInfo3";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode lambert -n "lambert2";
createNode polyReduce -n "polyReduce6";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ver" 1;
	setAttr ".p" 50;
	setAttr ".vmp" -type "string" "";
	setAttr ".sym" -type "double4" 0 1 0 0 ;
	setAttr ".stl" 0.01;
	setAttr ".kqw" 1;
	setAttr ".cr" yes;
createNode polyReduce -n "polyReduce5";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ver" 1;
	setAttr ".p" 50;
	setAttr ".vmp" -type "string" "";
	setAttr ".sym" -type "double4" 0 1 0 0 ;
	setAttr ".stl" 0.01;
	setAttr ".kqw" 1;
	setAttr ".cr" yes;
createNode polyCylinder -n "pasted__polyCylinder1";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyReduce -n "polyReduce10";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ver" 1;
	setAttr ".p" 50;
	setAttr ".vmp" -type "string" "";
	setAttr ".sym" -type "double4" 0 1 0 0 ;
	setAttr ".stl" 0.01;
	setAttr ".kqw" 1;
	setAttr ".cr" yes;
createNode polyReduce -n "polyReduce7";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ver" 1;
	setAttr ".p" 50;
	setAttr ".vmp" -type "string" "";
	setAttr ".sym" -type "double4" 0 1 0 0 ;
	setAttr ".stl" 0.01;
	setAttr ".kqw" 1;
	setAttr ".cr" yes;
createNode polyCylinder -n "pasted__polyCylinder2";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyReduce -n "polyReduce12";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ver" 1;
	setAttr ".p" 50;
	setAttr ".vmp" -type "string" "";
	setAttr ".sym" -type "double4" 0 1 0 0 ;
	setAttr ".stl" 0.01;
	setAttr ".kqw" 1;
	setAttr ".cr" yes;
createNode polyReduce -n "polyReduce9";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ver" 1;
	setAttr ".p" 50;
	setAttr ".vmp" -type "string" "";
	setAttr ".sym" -type "double4" 0 1 0 0 ;
	setAttr ".stl" 0.01;
	setAttr ".kqw" 1;
	setAttr ".cr" yes;
createNode polyCut -n "polyCut16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:79]";
	setAttr ".ix" -type "matrix" 0.040000000000000001 0 0 0 0 1.124396924178805 0 0 0 0 0.040000000000000001 0
		 -1.2892726722726853 0.94116712891024368 -0.55926083462119824 1;
	setAttr ".pc" -type "double3" -2.0583995725329109 1.4793949934650366 -2.611452469051263 ;
	setAttr ".ro" -type "double3" -180 0 0 ;
	setAttr ".ps" -type "double2" 1 2.2487939596176147 ;
createNode polyCut -n "polyCut15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:79]";
	setAttr ".ix" -type "matrix" 0.040000000000000001 0 0 0 0 1.124396924178805 0 0 0 0 0.040000000000000001 0
		 -1.2892726722726853 0.94116712891024368 -0.55926083462119824 1;
	setAttr ".pc" -type "double3" -2.0583995725329109 1.4793949934650366 -2.611452469051263 ;
	setAttr ".ro" -type "double3" -180 0 0 ;
	setAttr ".ps" -type "double2" 1 2.2487939596176147 ;
createNode polyCut -n "polyCut14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:79]";
	setAttr ".ix" -type "matrix" 0.040000000000000001 0 0 0 0 1.124396924178805 0 0 0 0 0.040000000000000001 0
		 -1.2892726722726853 0.94116712891024368 -0.55926083462119824 1;
	setAttr ".pc" -type "double3" -2.0656839203226642 1.4887934889895491 -2.6513819250028843 ;
	setAttr ".ro" -type "double3" -180 0 0 ;
	setAttr ".ps" -type "double2" 1 2.2487939596176147 ;
createNode polyCut -n "polyCut13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:59]";
	setAttr ".ix" -type "matrix" 0.040000000000000001 0 0 0 0 1.124396924178805 0 0 0 0 0.040000000000000001 0
		 -1.2892726722726853 0.94116712891024368 -0.55926083462119824 1;
	setAttr ".pc" -type "double3" -0.67375983133587103 1.5805789075477483 -0.69502390035936001 ;
	setAttr ".ro" -type "double3" -73.659819477209595 -5.1999999998763986 180 ;
	setAttr ".ps" -type "double2" 1 2.2487939596176147 ;
createNode polyCut -n "polyCut12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:59]";
	setAttr ".ix" -type "matrix" 0.040000000000000001 0 0 0 0 1.124396924178805 0 0 0 0 0.040000000000000001 0
		 -1.2892726722726853 0.94116712891024368 -0.55926083462119824 1;
	setAttr ".pc" -type "double3" -0.63084175444554169 1.6318023777757003 -0.72313329893375733 ;
	setAttr ".ro" -type "double3" -180 0 0 ;
	setAttr ".ps" -type "double2" 1 2.2487939596176147 ;
createNode polyCut -n "polyCut11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:59]";
	setAttr ".ix" -type "matrix" 0.040000000000000001 0 0 0 0 1.124396924178805 0 0 0 0 0.040000000000000001 0
		 -1.2892726722726853 0.94116712891024368 -0.55926083462119824 1;
	setAttr ".pc" -type "double3" -0.71125853356833924 1.5344777843425879 -0.6698280582752959 ;
	setAttr ".ro" -type "double3" -180 0 0 ;
	setAttr ".ps" -type "double2" 1 2.2487939596176147 ;
createNode polyCut -n "polyCut10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:59]";
	setAttr ".ix" -type "matrix" 0.040000000000000001 0 0 0 0 1.124396924178805 0 0 0 0 0.040000000000000001 0
		 -1.2892726722726853 0.94116712891024368 -0.55926083462119824 1;
	setAttr ".pc" -type "double3" -0.73813694667136398 1.5037437022058182 -0.65285980249779463 ;
	setAttr ".ro" -type "double3" -180 0 0 ;
	setAttr ".ps" -type "double2" 1 2.2487939596176147 ;
createNode polyCut -n "polyCut9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:59]";
	setAttr ".ix" -type "matrix" 0.040000000000000001 0 0 0 0 1.124396924178805 0 0 0 0 0.040000000000000001 0
		 -1.2892726722726853 0.94116712891024368 -0.55926083462119824 1;
	setAttr ".pc" -type "double3" -0.68958103493691036 1.5549671724337724 -0.68148228423661017 ;
	setAttr ".ro" -type "double3" -180 0 0 ;
	setAttr ".ps" -type "double2" 1 2.2487939596176147 ;
createNode polyCut -n "polyCut8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:59]";
	setAttr ".ix" -type "matrix" 0.040000000000000001 0 0 0 0 1.124396924178805 0 0 0 0 0.040000000000000001 0
		 -1.2892726722726853 0.94116712891024368 -0.55926083462119824 1;
	setAttr ".pc" -type "double3" -0.73315449238604014 1.519110743274211 -0.66057430563989672 ;
	setAttr ".ro" -type "double3" -180 0 0 ;
	setAttr ".ps" -type "double2" 1 2.2487939596176147 ;
createNode polyCut -n "polyCut7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:59]";
	setAttr ".ix" -type "matrix" 0.040000000000000001 0 0 0 0 1.124396924178805 0 0 0 0 0.040000000000000001 0
		 -1.2892726722726853 0.94116712891024368 -0.55926083462119824 1;
	setAttr ".pc" -type "double3" -0.76466269939945941 1.729126971208822 -0.75694137934373529 ;
	setAttr ".ro" -type "double3" -180 0 0 ;
	setAttr ".ps" -type "double2" 1 2.2487939596176147 ;
createNode polyCylinder -n "pasted__pasted__polyCylinder1";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySplit -n "polySplit12";
	setAttr -s 2 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 29;
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0 1 0 ;
	setAttr ".sps[0].sp[1].f" 33;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".c2v" yes;
createNode polySplit -n "polySplit11";
	setAttr -s 2 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 9;
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 1 0 0 ;
	setAttr ".sps[0].sp[1].f" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".c2v" yes;
createNode polySplit -n "polySplit10";
	setAttr -s 2 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 29;
	setAttr ".sps[0].sp[0].t" 2;
	setAttr ".sps[0].sp[0].bc" -type "double3" 1 0 0 ;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0 0.5 0.5 ;
	setAttr ".c2v" yes;
createNode polySplit -n "polySplit9";
	setAttr -s 2 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 31;
	setAttr ".sps[0].sp[0].t" 1;
	setAttr ".sps[0].sp[0].bc" -type "double3" 1 0 0 ;
	setAttr ".sps[0].sp[1].f" 9;
	setAttr ".sps[0].sp[1].t" 2;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0 0.5 0.5 ;
	setAttr ".c2v" yes;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[17:24]" -type "float3"  0 0.0064788321 0 0 0.014147012
		 0 0 0.0059125116 0 0 0.056934513 0 0 0.014147012 0 0 0.0064788321 0 0 0.0059125116
		 0 0 0.056934513 0;
createNode polySplit -n "polySplit8";
	setAttr ".e[0]"  0.5;
	setAttr ".d[0]"  -2147483601;
createNode polySplit -n "polySplit7";
	setAttr -s 11 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 10;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[1].f" 19;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.43473824858665466 0.5652618408203125 
		-1.1920928955078125e-007 ;
	setAttr ".sps[0].sp[2].f" 15;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.48727232217788696 1.491584498580778e-006 
		0.51272618770599365 ;
	setAttr ".sps[0].sp[3].f" 15;
	setAttr ".sps[0].sp[3].t" 1;
	setAttr ".sps[0].sp[3].bc" -type "double3" 0.42175310850143433 0.57824689149856567 
		0 ;
	setAttr ".sps[0].sp[4].f" 7;
	setAttr ".sps[0].sp[4].bc" -type "double3" 0.53309899568557739 0.466901034116745 
		-2.9802322387695313e-008 ;
	setAttr ".sps[0].sp[5].f" 6;
	setAttr ".sps[0].sp[5].bc" -type "double3" 1 0 0 ;
	setAttr ".sps[0].sp[6].f" 13;
	setAttr ".sps[0].sp[6].t" 1;
	setAttr ".sps[0].sp[6].bc" -type "double3" 4.1950875129259657e-007 0.52791464328765869 
		0.47208493947982788 ;
	setAttr ".sps[0].sp[7].f" 13;
	setAttr ".sps[0].sp[7].t" 1;
	setAttr ".sps[0].sp[7].bc" -type "double3" 0.38127169013023376 0.6187283992767334 
		-1.1920928955078125e-007 ;
	setAttr ".sps[0].sp[8].f" 17;
	setAttr ".sps[0].sp[8].t" 1;
	setAttr ".sps[0].sp[8].bc" -type "double3" 1.8351038022501598e-007 0.51073431968688965 
		0.48926550149917603 ;
	setAttr ".sps[0].sp[9].f" 17;
	setAttr ".sps[0].sp[9].t" 1;
	setAttr ".sps[0].sp[9].bc" -type "double3" 0.42326498031616211 0.57673501968383789 
		0 ;
	setAttr ".sps[0].sp[10].f" 9;
	setAttr ".sps[0].sp[10].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".c2v" yes;
createNode polySplit -n "polySplit6";
	setAttr -s 11 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 16;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[1].f" 16;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.5735163688659668 0.42648366093635559 
		-2.9802322387695313e-008 ;
	setAttr ".sps[0].sp[2].f" 12;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.50424689054489136 0.49575313925743103 
		-2.9802322387695313e-008 ;
	setAttr ".sps[0].sp[3].f" 12;
	setAttr ".sps[0].sp[3].bc" -type "double3" 9.322410932099956e-008 0.39263278245925903 
		0.60736709833145142 ;
	setAttr ".sps[0].sp[4].f" 12;
	setAttr ".sps[0].sp[4].t" 1;
	setAttr ".sps[0].sp[4].bc" -type "double3" 0.51104390621185303 0 0.48895609378814697 ;
	setAttr ".sps[0].sp[5].f" 3;
	setAttr ".sps[0].sp[5].bc" -type "double3" 0 0 1 ;
	setAttr ".sps[0].sp[6].f" 14;
	setAttr ".sps[0].sp[6].t" 1;
	setAttr ".sps[0].sp[6].bc" -type "double3" 0.48360550403594971 0 0.51639449596405029 ;
	setAttr ".sps[0].sp[7].f" 14;
	setAttr ".sps[0].sp[7].bc" -type "double3" 0 0.41083526611328125 0.58916473388671875 ;
	setAttr ".sps[0].sp[8].f" 18;
	setAttr ".sps[0].sp[8].t" 1;
	setAttr ".sps[0].sp[8].bc" -type "double3" 0.49369573593139648 1.8351036601416126e-007 
		0.50630408525466919 ;
	setAttr ".sps[0].sp[9].f" 18;
	setAttr ".sps[0].sp[9].t" 1;
	setAttr ".sps[0].sp[9].bc" -type "double3" 0.56835740804672241 0.43164262175559998 
		-2.9802322387695313e-008 ;
	setAttr ".sps[0].sp[10].f" 18;
	setAttr ".sps[0].sp[10].bc" -type "double3" 0.49999991059303284 0.5 1.1920928955078125e-007 ;
	setAttr ".c2v" yes;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk[12:24]" -type "float3"  0 -0.024345232 0 0 -0.024345232
		 0 0 0.14409183 0 0 -0.024345232 0 0 -0.024345232 0 0 0.018239459 0 0 0.018239459
		 0 0 0.018239459 0 0 0.018239459 0 0 -0.0062507959 0 0 -0.0062507959 0 0 -0.0062507959
		 0 0 -0.0062507959 0;
createNode polySplit -n "polySplit5";
	setAttr -s 17 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 6;
	setAttr ".sps[0].sp[0].bc" -type "double3" 1 0 0 ;
	setAttr ".sps[0].sp[1].f" 4;
	setAttr ".sps[0].sp[1].t" 3;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.60621410608291626 0.39378592371940613 
		-2.9802322387695313e-008 ;
	setAttr ".sps[0].sp[2].f" 4;
	setAttr ".sps[0].sp[2].t" 2;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.3937859833240509 0 0.60621404647827148 ;
	setAttr ".sps[0].sp[3].f" 4;
	setAttr ".sps[0].sp[3].bc" -type "double3" 0 0.39378583431243896 0.60621416568756104 ;
	setAttr ".sps[0].sp[4].f" 4;
	setAttr ".sps[0].sp[4].bc" -type "double3" 1 0 0 ;
	setAttr ".sps[0].sp[5].f" 5;
	setAttr ".sps[0].sp[5].t" 3;
	setAttr ".sps[0].sp[5].bc" -type "double3" 0.53244304656982422 0.46755698323249817 
		-2.9802322387695313e-008 ;
	setAttr ".sps[0].sp[6].f" 5;
	setAttr ".sps[0].sp[6].t" 2;
	setAttr ".sps[0].sp[6].bc" -type "double3" 0.46755686402320862 0 0.53244316577911377 ;
	setAttr ".sps[0].sp[7].f" 5;
	setAttr ".sps[0].sp[7].bc" -type "double3" 2.1228269986295345e-007 0.46755671501159668 
		0.53244304656982422 ;
	setAttr ".sps[0].sp[8].f" 5;
	setAttr ".sps[0].sp[8].bc" -type "double3" 1 0 0 ;
	setAttr ".sps[0].sp[9].f" 7;
	setAttr ".sps[0].sp[9].t" 3;
	setAttr ".sps[0].sp[9].bc" -type "double3" 0.66436558961868286 0.33563446998596191 
		-5.9604644775390625e-008 ;
	setAttr ".sps[0].sp[10].f" 7;
	setAttr ".sps[0].sp[10].t" 2;
	setAttr ".sps[0].sp[10].bc" -type "double3" 0.33563446998596191 0 0.66436553001403809 ;
	setAttr ".sps[0].sp[11].f" 7;
	setAttr ".sps[0].sp[11].bc" -type "double3" 0 0.33563420176506042 0.66436576843261719 ;
	setAttr ".sps[0].sp[12].f" 7;
	setAttr ".sps[0].sp[12].bc" -type "double3" 1 0 0 ;
	setAttr ".sps[0].sp[13].f" 6;
	setAttr ".sps[0].sp[13].t" 3;
	setAttr ".sps[0].sp[13].bc" -type "double3" 0.78330415487289429 0.21669566631317139 
		1.7881393432617188e-007 ;
	setAttr ".sps[0].sp[14].f" 6;
	setAttr ".sps[0].sp[14].t" 2;
	setAttr ".sps[0].sp[14].bc" -type "double3" 0.21669565141201019 5.0842754006907853e-008 
		0.78330427408218384 ;
	setAttr ".sps[0].sp[15].f" 6;
	setAttr ".sps[0].sp[15].bc" -type "double3" 7.9606017777678062e-008 0.21669553220272064 
		0.78330439329147339 ;
	setAttr ".sps[0].sp[16].f" 6;
	setAttr ".sps[0].sp[16].bc" -type "double3" 1 0 0 ;
	setAttr ".c2v" yes;
createNode polySplit -n "polySplit4";
	setAttr -s 17 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 4;
	setAttr ".sps[0].sp[0].t" 3;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.49999988079071045 5.8920277390751569e-024 
		0.50000011920928955 ;
	setAttr ".sps[0].sp[1].f" 4;
	setAttr ".sps[0].sp[1].t" 2;
	setAttr ".sps[0].sp[1].bc" -type "double3" 1.3941157561703221e-008 0.27785348892211914 
		0.72214651107788086 ;
	setAttr ".sps[0].sp[2].f" 4;
	setAttr ".sps[0].sp[2].t" 1;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0 0.27785348892211914 0.72214651107788086 ;
	setAttr ".sps[0].sp[3].f" 4;
	setAttr ".sps[0].sp[3].t" 1;
	setAttr ".sps[0].sp[3].bc" -type "double3" 0.27785345911979675 2.7882306241622246e-008 
		0.72214651107788086 ;
	setAttr ".sps[0].sp[4].f" 5;
	setAttr ".sps[0].sp[4].t" 3;
	setAttr ".sps[0].sp[4].bc" -type "double3" 0.50000005960464478 0 0.49999994039535522 ;
	setAttr ".sps[0].sp[5].f" 5;
	setAttr ".sps[0].sp[5].t" 2;
	setAttr ".sps[0].sp[5].bc" -type "double3" 2.7882318676120121e-008 0.31418457627296448 
		0.68581545352935791 ;
	setAttr ".sps[0].sp[6].f" 5;
	setAttr ".sps[0].sp[6].t" 2;
	setAttr ".sps[0].sp[6].bc" -type "double3" 0.3141845166683197 1.1152927470448049e-007 
		0.68581533432006836 ;
	setAttr ".sps[0].sp[7].f" 5;
	setAttr ".sps[0].sp[7].bc" -type "double3" 0 0.31418466567993164 0.68581533432006836 ;
	setAttr ".sps[0].sp[8].f" 7;
	setAttr ".sps[0].sp[8].t" 3;
	setAttr ".sps[0].sp[8].bc" -type "double3" 0.50000005960464478 5.8920305000883251e-024 
		0.49999994039535522 ;
	setAttr ".sps[0].sp[9].f" 7;
	setAttr ".sps[0].sp[9].t" 3;
	setAttr ".sps[0].sp[9].bc" -type "double3" 0.75345349311828613 0.24654653668403625 
		-2.9802322387695313e-008 ;
	setAttr ".sps[0].sp[10].f" 7;
	setAttr ".sps[0].sp[10].t" 1;
	setAttr ".sps[0].sp[10].bc" -type "double3" 2.788232400519064e-008 0.24654652178287506 
		0.75345349311828613 ;
	setAttr ".sps[0].sp[11].f" 7;
	setAttr ".sps[0].sp[11].bc" -type "double3" 1.6094318766590732e-007 0.24654644727706909 
		0.75345337390899658 ;
	setAttr ".sps[0].sp[12].f" 6;
	setAttr ".sps[0].sp[12].t" 3;
	setAttr ".sps[0].sp[12].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[13].f" 6;
	setAttr ".sps[0].sp[13].t" 2;
	setAttr ".sps[0].sp[13].bc" -type "double3" 0 0.17377258837223053 0.82622742652893066 ;
	setAttr ".sps[0].sp[14].f" 6;
	setAttr ".sps[0].sp[14].t" 1;
	setAttr ".sps[0].sp[14].bc" -type "double3" 0 0.17377264797687531 0.82622736692428589 ;
	setAttr ".sps[0].sp[15].f" 6;
	setAttr ".sps[0].sp[15].bc" -type "double3" 0 0.17377293109893799 0.82622706890106201 ;
	setAttr ".sps[0].sp[16].f" 4;
	setAttr ".sps[0].sp[16].t" 3;
	setAttr ".sps[0].sp[16].bc" -type "double3" 0.49999988079071045 5.8920277390751569e-024 
		0.50000011920928955 ;
	setAttr ".c2v" yes;
createNode polySplit -n "polySplit3";
	setAttr -s 5 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 6;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.50000011920928955 0.49999982118606567 
		5.9604644775390625e-008 ;
	setAttr ".sps[0].sp[1].f" 5;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.50000011920928955 0 0.49999988079071045 ;
	setAttr ".sps[0].sp[2].f" 5;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.50000011920928955 0.49999982118606567 
		5.9604644775390625e-008 ;
	setAttr ".sps[0].sp[3].f" 6;
	setAttr ".sps[0].sp[3].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[4].f" 6;
	setAttr ".sps[0].sp[4].bc" -type "double3" 0.50000011920928955 0.49999982118606567 
		5.9604644775390625e-008 ;
	setAttr ".c2v" yes;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[14]" -type "float3" 0 -0.43649763 0 ;
	setAttr ".tk[20]" -type "float3" 0 -3.7252903e-009 0 ;
	setAttr ".tk[21]" -type "float3" 0 -3.7252903e-009 0 ;
	setAttr ".tk[24]" -type "float3" 0 -3.7252903e-009 0 ;
	setAttr ".tk[25]" -type "float3" 0 -3.7252903e-009 0 ;
	setAttr ".tk[28]" -type "float3" 0 -3.7252903e-009 0 ;
	setAttr ".tk[29]" -type "float3" 0 -3.7252903e-009 0 ;
	setAttr ".tk[32]" -type "float3" 0 -3.7252903e-009 0 ;
	setAttr ".tk[33]" -type "float3" 0 -3.7252903e-009 0 ;
	setAttr ".tk[36]" -type "float3" 0 -3.7252903e-009 0 ;
	setAttr ".tk[37]" -type "float3" 0 -3.7252903e-009 0 ;
	setAttr ".tk[38]" -type "float3" 0 -3.7252903e-009 0 ;
	setAttr ".tk[39]" -type "float3" 0 -3.7252903e-009 0 ;
	setAttr ".tk[40]" -type "float3" 0 -3.7252903e-009 0 ;
	setAttr ".tk[41]" -type "float3" 0 -3.7252903e-009 0 ;
	setAttr ".tk[42]" -type "float3" 0 -3.7252903e-009 0 ;
	setAttr ".tk[43]" -type "float3" 0 -3.7252903e-009 0 ;
createNode polySplit -n "polySplit2";
	setAttr -s 9 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 4;
	setAttr ".sps[0].sp[0].t" 3;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0 0.5 0.5 ;
	setAttr ".sps[0].sp[1].f" 4;
	setAttr ".sps[0].sp[1].t" 3;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.33333295583724976 4.6719148372176278e-007 
		0.66666656732559204 ;
	setAttr ".sps[0].sp[2].f" 4;
	setAttr ".sps[0].sp[2].t" 2;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.3333333432674408 0 0.66666662693023682 ;
	setAttr ".sps[0].sp[3].f" 4;
	setAttr ".sps[0].sp[3].t" 1;
	setAttr ".sps[0].sp[3].bc" -type "double3" 0.49999991059303284 0.49999997019767761 
		1.4901161193847656e-007 ;
	setAttr ".sps[0].sp[4].f" 5;
	setAttr ".sps[0].sp[4].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[5].f" 5;
	setAttr ".sps[0].sp[5].bc" -type "double3" 0 0.5 0.5 ;
	setAttr ".sps[0].sp[6].f" 5;
	setAttr ".sps[0].sp[6].t" 1;
	setAttr ".sps[0].sp[6].bc" -type "double3" 0 0.33333331346511841 0.66666668653488159 ;
	setAttr ".sps[0].sp[7].f" 5;
	setAttr ".sps[0].sp[7].t" 3;
	setAttr ".sps[0].sp[7].bc" -type "double3" 0.33333295583724976 4.6719148372176278e-007 
		0.66666656732559204 ;
	setAttr ".sps[0].sp[8].f" 5;
	setAttr ".sps[0].sp[8].t" 3;
	setAttr ".sps[0].sp[8].bc" -type "double3" 0 0.5 0.5 ;
	setAttr ".c2v" yes;
createNode polySplit -n "polySplit1";
	setAttr -s 7 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 4;
	setAttr ".sps[0].sp[0].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[1].f" 4;
	setAttr ".sps[0].sp[1].t" 1;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0.33333337306976318 0 0.66666662693023682 ;
	setAttr ".sps[0].sp[2].f" 4;
	setAttr ".sps[0].sp[2].t" 2;
	setAttr ".sps[0].sp[2].bc" -type "double3" 0.66666674613952637 0.33333331346511841 
		-5.9604644775390625e-008 ;
	setAttr ".sps[0].sp[3].f" 4;
	setAttr ".sps[0].sp[3].t" 3;
	setAttr ".sps[0].sp[3].bc" -type "double3" 0.5 0.5 0 ;
	setAttr ".sps[0].sp[4].f" 4;
	setAttr ".sps[0].sp[4].t" 4;
	setAttr ".sps[0].sp[4].bc" -type "double3" 0.5 0 0.5 ;
	setAttr ".sps[0].sp[5].f" 4;
	setAttr ".sps[0].sp[5].t" 5;
	setAttr ".sps[0].sp[5].bc" -type "double3" 0.66666668653488159 0 0.33333331346511841 ;
	setAttr ".sps[0].sp[6].f" 4;
	setAttr ".sps[0].sp[6].t" 5;
	setAttr ".sps[0].sp[6].bc" -type "double3" 0.5000002384185791 0.4999997615814209 
		0 ;
	setAttr ".c2v" yes;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 0;
createNode polyExtrudeVertex -n "polyChamfer1";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.015429313864605332 2.0624763409503575 -1.7075317143597279 1;
	setAttr -l on ".l";
	setAttr ".w" 0.25;
	setAttr -l on ".d";
createNode polyPlane -n "polyPlane1";
	setAttr ".w" 2.9334746365799713;
	setAttr ".h" 2.7551479109520147;
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode materialInfo -n "materialInfo9";
createNode shadingEngine -n "lambert5SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "lambert5";
createNode animCurveTU -n "pCube1_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "pCube1_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.1929722918850697;
createNode animCurveTL -n "pCube1_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.747413654291879;
createNode animCurveTL -n "pCube1_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.035554970681041659;
createNode animCurveTA -n "pCube1_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pCube1_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -89.839272812677123;
createNode animCurveTA -n "pCube1_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "pCube1_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 2.1421695140184123;
createNode animCurveTU -n "pCube1_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.7626890849497641;
createNode animCurveTU -n "pCube1_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.4181665730427409;
createNode polyMergeVert -n "polyMergeVert26";
	setAttr ".ics" -type "componentList" 1 "vtx[0:7]";
	setAttr ".ix" -type "matrix" 1.6009638197930538 0 0 0 0 1.5164310411769732 0 0 0 0 1.2590514081505189 0
		 0.88967903411643701 0.43823104652325051 -5.7341416863401031 1;
	setAttr ".d" 5.069;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert24";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1.6009638197930538 0 0 0 0 1.5164310411769732 0 0 0 0 1.2590514081505189 0
		 0.88967903411643701 0.43823104652325051 -5.7341416863401031 1;
	setAttr ".d" 5.069;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0 0.015229154 0 0 0.015229154
		 0 0 0.0097813709 0 0 0.0097813709 0 0 0.0097813709 0 0 0.0097813709 0 0 0.015229154
		 0 0 0.015229154 0;
createNode polyMergeVert -n "polyMergeVert22";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1.6009638197930538 0 0 0 0 1.6009638197930538 0 0 0 0 1.2590514081505189 0
		 0.88967903411643801 0.41715346498804523 -5.7341416863401031 1;
	setAttr ".d" 5.069;
	setAttr ".am" yes;
createNode polyCube -n "polyCube1";
	setAttr ".w" 0.3224533630892874;
	setAttr ".h" 0.10317532648458839;
	setAttr ".d" 0.17518052970084597;
	setAttr ".cuv" 4;
createNode polyReduce -n "polyReduce4";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ver" 1;
	setAttr ".p" 50;
	setAttr ".vmp" -type "string" "";
	setAttr ".sym" -type "double4" 0 1 0 0 ;
	setAttr ".stl" 0.01;
	setAttr ".kqw" 1;
	setAttr ".cr" yes;
createNode polyReduce -n "polyReduce3";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ver" 1;
	setAttr ".p" 50;
	setAttr ".vmp" -type "string" "";
	setAttr ".sym" -type "double4" 0 1 0 0 ;
	setAttr ".stl" 0.01;
	setAttr ".kqw" 1;
	setAttr ".cr" yes;
createNode polyMergeVert -n "polyMergeVert27";
	setAttr ".ics" -type "componentList" 1 "vtx[0:41]";
	setAttr ".ix" -type "matrix" 1.1102230246251565e-016 -0.5 -0 0 0.94719882012886014 2.1032038780096854e-016 0 0
		 0 -0 0.5 0 1.2935975632049117 0.43436868651758664 -5.7240244203917685 1;
	setAttr ".d" 5.069;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert25";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1.1102230246251565e-016 -0.5 -0 0 0.94719882012886014 2.1032038780096854e-016 0 0
		 0 -0 0.5 0 1.2935975632049117 0.43436868651758664 -5.7240244203917685 1;
	setAttr ".d" 5.069;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 42 ".tk[0:41]" -type "float3"  -0.040041 -0.0032141947 0
		 -0.040041 -0.0032141947 0 -0.040041 -0.0032141947 0 -0.040041 -0.0032141947 0 -0.040041
		 -0.0032141947 0 -0.040041 -0.0032141947 0 -0.040041 -0.0032141947 0 -0.040041 -0.0032141947
		 0 -0.040041 -0.0032141947 0 -0.040041 -0.0032141947 0 -0.040041 -0.0032141947 0 -0.040041
		 -0.0032141947 0 -0.040041 -0.0032141947 0 -0.040041 -0.0032141947 0 -0.040041 -0.0032141947
		 0 -0.040041 -0.0032141947 0 -0.040041 -0.0032141947 0 -0.040041 -0.0032141947 0 -0.040041
		 -0.0032141947 0 -0.040041 -0.0032141947 0 -0.040041 -0.022688786 0 -0.040041 -0.022688786
		 0 -0.040041 -0.022688786 0 -0.040041 -0.022688786 0 -0.040041 -0.022688786 0 -0.040041
		 -0.022688786 0 -0.040041 -0.022688786 0 -0.040041 -0.022688786 0 -0.040041 -0.022688786
		 0 -0.040041 -0.022688786 0 -0.040041 -0.022688786 0 -0.040041 -0.022688786 0 -0.040041
		 -0.022688786 0 -0.040041 -0.022688786 0 -0.040041 -0.022688786 0 -0.040041 -0.022688786
		 0 -0.040041 -0.022688786 0 -0.040041 -0.022688786 0 -0.040041 -0.022688786 0 -0.040041
		 -0.022688786 0 -0.040041 -0.0032141947 0 -0.040041 -0.022688786 0;
createNode polyMergeVert -n "polyMergeVert23";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1.1102230246251565e-016 -0.5 -0 0 1 2.2204460492503131e-016 0 0
		 0 -0 0.5 0 1.3065490171596394 0.41434821009107919 -5.7240244203917685 1;
	setAttr ".d" 5.069;
	setAttr ".am" yes;
createNode polyCylinder -n "polyCylinder2";
	setAttr ".r" 0.044037903990050961;
	setAttr ".h" 0.36882727144760458;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyReduce -n "polyReduce2";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ver" 1;
	setAttr ".p" 50;
	setAttr ".vmp" -type "string" "";
	setAttr ".sym" -type "double4" 0 1 0 0 ;
	setAttr ".stl" 0.01;
	setAttr ".kqw" 1;
	setAttr ".cr" yes;
createNode polyReduce -n "polyReduce1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ver" 1;
	setAttr ".p" 50;
	setAttr ".vmp" -type "string" "";
	setAttr ".sym" -type "double4" 0 1 0 0 ;
	setAttr ".stl" 0.01;
	setAttr ".kqw" 1;
	setAttr ".cr" yes;
createNode polyCylinder -n "polyCylinder3";
	setAttr ".r" 0.013959067575555562;
	setAttr ".h" 0.25936827858090311;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyReduce -n "pasted__polyReduce2";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ver" 1;
	setAttr ".p" 50;
	setAttr ".vmp" -type "string" "";
	setAttr ".sym" -type "double4" 0 1 0 0 ;
	setAttr ".stl" 0.01;
	setAttr ".kqw" 1;
	setAttr ".cr" yes;
createNode polyReduce -n "pasted__polyReduce1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ver" 1;
	setAttr ".p" 50;
	setAttr ".vmp" -type "string" "";
	setAttr ".sym" -type "double4" 0 1 0 0 ;
	setAttr ".stl" 0.01;
	setAttr ".kqw" 1;
	setAttr ".cr" yes;
createNode polyCylinder -n "pasted__polyCylinder3";
	setAttr ".r" 0.013959067575555562;
	setAttr ".h" 0.25936827858090311;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 11 ".lnk";
	setAttr -s 11 ".slnk";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 11 ".st";
select -ne :initialShadingGroup;
	setAttr -s 9 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 11 ".s";
select -ne :lambert1;
	setAttr ".c" -type "float3" 0.5640955 0.5640955 0.5640955 ;
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "polyMergeVert21.out" "pasted__Sandsäcke.i";
connectAttr "polyMergeVert17.out" "|group1|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.i"
		;
connectAttr "polyCut6.out" "|group2|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.i"
		;
connectAttr "polyMergeVert18.out" "|group3|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.i"
		;
connectAttr "polyMergeVert19.out" "|group4|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.i"
		;
connectAttr "polyReduce11.out" "pCylinderShape1.i";
connectAttr "polyReduce6.out" "|group5|pasted__pCylinder1|pasted__pCylinderShape1.i"
		;
connectAttr "polyReduce10.out" "|group6|pasted__pCylinder1|pasted__pCylinderShape1.i"
		;
connectAttr "polyReduce12.out" "pasted__pasted__pCylinderShape1.i";
connectAttr "polySplit12.out" "pPlaneShape1.i";
connectAttr "pCube1_visibility.o" "pCube1.v";
connectAttr "pCube1_translateX.o" "pCube1.tx";
connectAttr "pCube1_translateY.o" "pCube1.ty";
connectAttr "pCube1_translateZ.o" "pCube1.tz";
connectAttr "pCube1_rotateX.o" "pCube1.rx";
connectAttr "pCube1_rotateY.o" "pCube1.ry";
connectAttr "pCube1_rotateZ.o" "pCube1.rz";
connectAttr "pCube1_scaleX.o" "pCube1.sx";
connectAttr "pCube1_scaleY.o" "pCube1.sy";
connectAttr "pCube1_scaleZ.o" "pCube1.sz";
connectAttr "polyMergeVert26.out" "pCubeShape1.i";
connectAttr "polyReduce4.out" "pCylinderShape2.i";
connectAttr "polyReduce2.out" "pCylinderShape3.i";
connectAttr "pasted__polyReduce2.out" "pasted__pCylinderShape3.i";
connectAttr "polyMergeVert11.out" "polyMergeVert21.ip";
connectAttr "pasted__Sandsäcke.wm" "polyMergeVert21.mp";
connectAttr "polyMergeVert6.out" "polyMergeVert11.ip";
connectAttr "pasted__Sandsäcke.wm" "polyMergeVert11.mp";
connectAttr "polyMergeVert2.out" "polyMergeVert6.ip";
connectAttr "pasted__Sandsäcke.wm" "polyMergeVert6.mp";
connectAttr "polyTweak2.out" "polyMergeVert2.ip";
connectAttr "pasted__Sandsäcke.wm" "polyMergeVert2.mp";
connectAttr "pasted__deleteComponent1.og" "polyTweak2.ip";
connectAttr "pasted__polyChamfer1.out" "pasted__deleteComponent1.ig";
connectAttr "pasted__polySplit6.out" "pasted__polyChamfer1.ip";
connectAttr "pasted__Sandsäcke.wm" "pasted__polyChamfer1.mp";
connectAttr "pasted__polySplit5.out" "pasted__polySplit6.ip";
connectAttr "pasted__polySplit4.out" "pasted__polySplit5.ip";
connectAttr "pasted__polySplit3.out" "pasted__polySplit4.ip";
connectAttr "pasted__polySplit2.out" "pasted__polySplit3.ip";
connectAttr "pasted__polySplit1.out" "pasted__polySplit2.ip";
connectAttr "pasted__polyCube1.out" "pasted__polySplit1.ip";
connectAttr "polyMergeVert13.out" "polyMergeVert17.ip";
connectAttr "|group1|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.wm" "polyMergeVert17.mp"
		;
connectAttr "polyMergeVert8.out" "polyMergeVert13.ip";
connectAttr "|group1|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.wm" "polyMergeVert13.mp"
		;
connectAttr "polyMergeVert1.out" "polyMergeVert8.ip";
connectAttr "|group1|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.wm" "polyMergeVert8.mp"
		;
connectAttr "polyTweak1.out" "polyMergeVert1.ip";
connectAttr "|group1|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.wm" "polyMergeVert1.mp"
		;
connectAttr "pasted__pasted__deleteComponent1.og" "polyTweak1.ip";
connectAttr "pasted__pasted__polyChamfer1.out" "pasted__pasted__deleteComponent1.ig"
		;
connectAttr "pasted__pasted__polySplit6.out" "pasted__pasted__polyChamfer1.ip";
connectAttr "|group1|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.wm" "pasted__pasted__polyChamfer1.mp"
		;
connectAttr "pasted__pasted__polySplit5.out" "pasted__pasted__polySplit6.ip";
connectAttr "pasted__pasted__polySplit4.out" "pasted__pasted__polySplit5.ip";
connectAttr "pasted__pasted__polySplit3.out" "pasted__pasted__polySplit4.ip";
connectAttr "pasted__pasted__polySplit2.out" "pasted__pasted__polySplit3.ip";
connectAttr "pasted__pasted__polySplit1.out" "pasted__pasted__polySplit2.ip";
connectAttr "pasted__pasted__polyCube1.out" "pasted__pasted__polySplit1.ip";
connectAttr "polyCut5.out" "polyCut6.ip";
connectAttr "|group2|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.wm" "polyCut6.mp"
		;
connectAttr "polyCut4.out" "polyCut5.ip";
connectAttr "|group2|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.wm" "polyCut5.mp"
		;
connectAttr "polyCut3.out" "polyCut4.ip";
connectAttr "|group2|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.wm" "polyCut4.mp"
		;
connectAttr "polyCut2.out" "polyCut3.ip";
connectAttr "|group2|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.wm" "polyCut3.mp"
		;
connectAttr "polyCut1.out" "polyCut2.ip";
connectAttr "|group2|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.wm" "polyCut2.mp"
		;
connectAttr "polyMergeVert20.out" "polyCut1.ip";
connectAttr "|group2|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.wm" "polyCut1.mp"
		;
connectAttr "polyMergeVert16.out" "polyMergeVert20.ip";
connectAttr "|group2|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.wm" "polyMergeVert20.mp"
		;
connectAttr "polyMergeVert12.out" "polyMergeVert16.ip";
connectAttr "|group2|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.wm" "polyMergeVert16.mp"
		;
connectAttr "polyMergeVert7.out" "polyMergeVert12.ip";
connectAttr "|group2|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.wm" "polyMergeVert12.mp"
		;
connectAttr "polyMergeVert3.out" "polyMergeVert7.ip";
connectAttr "|group2|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.wm" "polyMergeVert7.mp"
		;
connectAttr "polyTweak3.out" "polyMergeVert3.ip";
connectAttr "|group2|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.wm" "polyMergeVert3.mp"
		;
connectAttr "pasted__pasted__deleteComponent2.og" "polyTweak3.ip";
connectAttr "pasted__pasted__polyChamfer2.out" "pasted__pasted__deleteComponent2.ig"
		;
connectAttr "pasted__pasted__polySplit12.out" "pasted__pasted__polyChamfer2.ip";
connectAttr "|group2|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.wm" "pasted__pasted__polyChamfer2.mp"
		;
connectAttr "pasted__pasted__polySplit11.out" "pasted__pasted__polySplit12.ip";
connectAttr "pasted__pasted__polySplit10.out" "pasted__pasted__polySplit11.ip";
connectAttr "pasted__pasted__polySplit9.out" "pasted__pasted__polySplit10.ip";
connectAttr "pasted__pasted__polySplit8.out" "pasted__pasted__polySplit9.ip";
connectAttr "pasted__pasted__polySplit7.out" "pasted__pasted__polySplit8.ip";
connectAttr "pasted__pasted__polyCube2.out" "pasted__pasted__polySplit7.ip";
connectAttr "polyMergeVert14.out" "polyMergeVert18.ip";
connectAttr "|group3|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.wm" "polyMergeVert18.mp"
		;
connectAttr "polyMergeVert9.out" "polyMergeVert14.ip";
connectAttr "|group3|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.wm" "polyMergeVert14.mp"
		;
connectAttr "polyMergeVert4.out" "polyMergeVert9.ip";
connectAttr "|group3|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.wm" "polyMergeVert9.mp"
		;
connectAttr "polyTweak4.out" "polyMergeVert4.ip";
connectAttr "|group3|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.wm" "polyMergeVert4.mp"
		;
connectAttr "pasted__pasted__deleteComponent3.og" "polyTweak4.ip";
connectAttr "pasted__pasted__polyChamfer3.out" "pasted__pasted__deleteComponent3.ig"
		;
connectAttr "pasted__pasted__polySplit18.out" "pasted__pasted__polyChamfer3.ip";
connectAttr "|group3|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.wm" "pasted__pasted__polyChamfer3.mp"
		;
connectAttr "pasted__pasted__polySplit17.out" "pasted__pasted__polySplit18.ip";
connectAttr "pasted__pasted__polySplit16.out" "pasted__pasted__polySplit17.ip";
connectAttr "pasted__pasted__polySplit15.out" "pasted__pasted__polySplit16.ip";
connectAttr "pasted__pasted__polySplit14.out" "pasted__pasted__polySplit15.ip";
connectAttr "pasted__pasted__polySplit13.out" "pasted__pasted__polySplit14.ip";
connectAttr "pasted__pasted__polyCube3.out" "pasted__pasted__polySplit13.ip";
connectAttr "polyMergeVert15.out" "polyMergeVert19.ip";
connectAttr "|group4|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.wm" "polyMergeVert19.mp"
		;
connectAttr "polyMergeVert10.out" "polyMergeVert15.ip";
connectAttr "|group4|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.wm" "polyMergeVert15.mp"
		;
connectAttr "polyMergeVert5.out" "polyMergeVert10.ip";
connectAttr "|group4|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.wm" "polyMergeVert10.mp"
		;
connectAttr "polyTweak5.out" "polyMergeVert5.ip";
connectAttr "|group4|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.wm" "polyMergeVert5.mp"
		;
connectAttr "pasted__pasted__deleteComponent4.og" "polyTweak5.ip";
connectAttr "pasted__pasted__polyChamfer4.out" "pasted__pasted__deleteComponent4.ig"
		;
connectAttr "pasted__pasted__polySplit24.out" "pasted__pasted__polyChamfer4.ip";
connectAttr "|group4|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.wm" "pasted__pasted__polyChamfer4.mp"
		;
connectAttr "pasted__pasted__polySplit23.out" "pasted__pasted__polySplit24.ip";
connectAttr "pasted__pasted__polySplit22.out" "pasted__pasted__polySplit23.ip";
connectAttr "pasted__pasted__polySplit21.out" "pasted__pasted__polySplit22.ip";
connectAttr "pasted__pasted__polySplit20.out" "pasted__pasted__polySplit21.ip";
connectAttr "pasted__pasted__polySplit19.out" "pasted__pasted__polySplit20.ip";
connectAttr "pasted__pasted__polyCube4.out" "pasted__pasted__polySplit19.ip";
connectAttr "polyReduce8.out" "polyReduce11.ip";
connectAttr "polyCylinder1.out" "polyReduce8.ip";
connectAttr "lambert2SG.msg" "materialInfo3.sg";
connectAttr "lambert2.msg" "materialInfo3.m";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "|group6|pasted__pCylinder1|pasted__pCylinderShape1.iog" "lambert2SG.dsm"
		 -na;
connectAttr "pCylinderShape1.iog" "lambert2SG.dsm" -na;
connectAttr "|group5|pasted__pCylinder1|pasted__pCylinderShape1.iog" "lambert2SG.dsm"
		 -na;
connectAttr "pasted__pasted__pCylinderShape1.iog" "lambert2SG.dsm" -na;
connectAttr "polyReduce5.out" "polyReduce6.ip";
connectAttr "pasted__polyCylinder1.out" "polyReduce5.ip";
connectAttr "polyReduce7.out" "polyReduce10.ip";
connectAttr "pasted__polyCylinder2.out" "polyReduce7.ip";
connectAttr "polyReduce9.out" "polyReduce12.ip";
connectAttr "polyCut16.out" "polyReduce9.ip";
connectAttr "polyCut15.out" "polyCut16.ip";
connectAttr "pasted__pasted__pCylinderShape1.wm" "polyCut16.mp";
connectAttr "polyCut14.out" "polyCut15.ip";
connectAttr "pasted__pasted__pCylinderShape1.wm" "polyCut15.mp";
connectAttr "polyCut13.out" "polyCut14.ip";
connectAttr "pasted__pasted__pCylinderShape1.wm" "polyCut14.mp";
connectAttr "polyCut12.out" "polyCut13.ip";
connectAttr "pasted__pasted__pCylinderShape1.wm" "polyCut13.mp";
connectAttr "polyCut11.out" "polyCut12.ip";
connectAttr "pasted__pasted__pCylinderShape1.wm" "polyCut12.mp";
connectAttr "polyCut10.out" "polyCut11.ip";
connectAttr "pasted__pasted__pCylinderShape1.wm" "polyCut11.mp";
connectAttr "polyCut9.out" "polyCut10.ip";
connectAttr "pasted__pasted__pCylinderShape1.wm" "polyCut10.mp";
connectAttr "polyCut8.out" "polyCut9.ip";
connectAttr "pasted__pasted__pCylinderShape1.wm" "polyCut9.mp";
connectAttr "polyCut7.out" "polyCut8.ip";
connectAttr "pasted__pasted__pCylinderShape1.wm" "polyCut8.mp";
connectAttr "pasted__pasted__polyCylinder1.out" "polyCut7.ip";
connectAttr "pasted__pasted__pCylinderShape1.wm" "polyCut7.mp";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polyTweak10.out" "polySplit9.ip";
connectAttr "polySplit8.out" "polyTweak10.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polyTweak9.out" "polySplit6.ip";
connectAttr "polySplit5.out" "polyTweak9.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polyTweak8.out" "polySplit3.ip";
connectAttr "polySplit2.out" "polyTweak8.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "deleteComponent1.og" "polySplit1.ip";
connectAttr "polyChamfer1.out" "deleteComponent1.ig";
connectAttr "polyPlane1.out" "polyChamfer1.ip";
connectAttr "pPlaneShape1.wm" "polyChamfer1.mp";
connectAttr "lambert5SG.msg" "materialInfo9.sg";
connectAttr "lambert5.msg" "materialInfo9.m";
connectAttr "lambert5.oc" "lambert5SG.ss";
connectAttr "pPlaneShape1.iog" "lambert5SG.dsm" -na;
connectAttr "polyMergeVert24.out" "polyMergeVert26.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert26.mp";
connectAttr "polyTweak6.out" "polyMergeVert24.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert24.mp";
connectAttr "polyMergeVert22.out" "polyTweak6.ip";
connectAttr "polyCube1.out" "polyMergeVert22.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert22.mp";
connectAttr "polyReduce3.out" "polyReduce4.ip";
connectAttr "polyMergeVert27.out" "polyReduce3.ip";
connectAttr "polyMergeVert25.out" "polyMergeVert27.ip";
connectAttr "pCylinderShape2.wm" "polyMergeVert27.mp";
connectAttr "polyTweak7.out" "polyMergeVert25.ip";
connectAttr "pCylinderShape2.wm" "polyMergeVert25.mp";
connectAttr "polyMergeVert23.out" "polyTweak7.ip";
connectAttr "polyCylinder2.out" "polyMergeVert23.ip";
connectAttr "pCylinderShape2.wm" "polyMergeVert23.mp";
connectAttr "polyReduce1.out" "polyReduce2.ip";
connectAttr "polyCylinder3.out" "polyReduce1.ip";
connectAttr "pasted__polyReduce1.out" "pasted__polyReduce2.ip";
connectAttr "pasted__polyCylinder3.out" "pasted__polyReduce1.ip";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__Sandsäcke.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|group1|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group2|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group|pasted__pasted__pCube1|pasted__pasted__Sandsäcke.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__pCylinderShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert5.msg" ":defaultShaderList1.s" -na;
// End of test.ma
