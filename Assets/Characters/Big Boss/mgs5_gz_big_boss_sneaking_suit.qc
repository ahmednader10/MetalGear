// Created by Crowbar 0.29.0.0

$ModelName "ninja\MGS5GZ/MGS5_GZ_Big_Boss_sneaking_suit.mdl"

$Model "MGO_MAN_WHITE" "mgs5_gz_big_boss_sneaking_suit_reference.smd" {

	eyeball "eye_right" "ValveBiped.Bip01_Head1" -1.150000 -3.220000 66.620001 "eyeball_r_bb" 1 4 "iris_unused" 0.5
	eyeball "eye_left" "ValveBiped.Bip01_Head1" 1.260000 -3.300000 66.723997 "eyeball_l_bb" 1 -4 "iris_unused" 0.55

	mouth 0 "mouth" "ValveBiped.Bip01_Head1" 0 1 0

	flexfile "mgs5_gz_big_boss_sneaking_suit.vta" 
	{
		defaultflex frame 0
		flexpair "AU1" 1 frame 1
		flexpair "AU2" 1 frame 2
		flexpair "AU4" 1 frame 3
		flexpair "AU12" 1 frame 4
		flexpair "AU15" 1 frame 5
		flexpair "AU17" 1 frame 6
		flexpair "AU10" 1 frame 7
		flexpair "AU17D" 1 frame 8
		flexpair "AU16" 1 frame 9
		flexpair "AU6" 1 frame 10
		flexpair "AU9" 1 frame 11
		flexpair "AU25" 1 frame 12
		flexpair "AU22" 1 frame 13
		flexpair "AU20" 1 frame 14
		flex "AU32" frame 15
		flex "AU24" frame 16
		flexpair "AU18" 1 frame 17
		flex "AU38" frame 18
		flex "AU31" frame 19
		flexpair "AU26" 1 frame 20
		flexpair "AU27" 1 frame 21
		flexpair "AU26Z" 1 frame 22
		flexpair "AU27Z" 1 frame 23
		flex "AD30L" frame 24
		flex "AD30R" frame 25
		flexpair "AU1AU2" 1 frame 26
		flexpair "AU1AU4" 1 frame 27
		flexpair "AU2AU4" 1 frame 28
		flexpair "AU12AU25" 1 frame 29
		flexpair "AU6Z" 1 frame 30
		flexpair "AU18Z" 1 frame 31
		flexpair "AU22Z" 1 frame 32
		flexpair "AU13" 1 frame 33
		flex "AD96L" frame 34
		flex "AD96R" frame 35
		flex "relax" frame 36
		flex "derp" frame 37
		flex "sphere" frame 38
		flexpair "eyelid_droop" 1 frame 39
		flexpair "eyelid_raise" 1 frame 40
		flexpair "eyelid_squint" 1 frame 41
		flexpair "eyelid_wide" 1 frame 42
	}

	flexcontroller brow range 0 1 right_inner_raiser
	flexcontroller brow range 0 1 left_inner_raiser
	flexcontroller brow range 0 1 right_outer_raiser
	flexcontroller brow range 0 1 left_outer_raiser
	flexcontroller brow range 0 1 right_lowerer
	flexcontroller brow range 0 1 left_lowerer
	flexcontroller nose range 0 1 right_cheek_raiser
	flexcontroller nose range 0 1 left_cheek_raiser
	flexcontroller nose range 0 1 right_wrinkler
	flexcontroller nose range 0 1 left_wrinkler
	flexcontroller nose range 0 1 dilator
	flexcontroller mouth range 0 1 right_upper_raiser
	flexcontroller mouth range 0 1 left_upper_raiser
	flexcontroller mouth range 0 1 right_corner_puller
	flexcontroller mouth range 0 1 left_corner_puller
	flexcontroller mouth range 0 1 right_corner_depressor
	flexcontroller mouth range 0 1 left_corner_depressor
	flexcontroller mouth range 0 1 chin_raiser
	flexcontroller phoneme range 0 1 right_part
	flexcontroller phoneme range 0 1 left_part
	flexcontroller phoneme range 0 1 right_puckerer
	flexcontroller phoneme range 0 1 left_puckerer
	flexcontroller phoneme range 0 2 right_funneler
	flexcontroller phoneme range 0 2 left_funneler
	flexcontroller phoneme range 0 1 right_stretcher
	flexcontroller phoneme range 0 1 left_stretcher
	flexcontroller phoneme range 0 1 bite
	flexcontroller phoneme range 0 1 presser
	flexcontroller phoneme range 0 1 tightener
	flexcontroller phoneme range 0 1 jaw_clencher
	flexcontroller phoneme range 0 2 jaw_drop
	flexcontroller phoneme range 0 1 right_mouth_drop
	flexcontroller phoneme range 0 1 left_mouth_drop
	flexcontroller mouth range 0 1 right_cheek_puffer
	flexcontroller mouth range 0 1 left_cheek_puffer
	flexcontroller mouth range -1 1 mouth_sideways
	flexcontroller mouth range -1 1 jaw_sideways
	flexcontroller mouth range 0 1 lower_lip
	flexcontroller phoneme range 0 1 Eyelid_droop_Right
	flexcontroller phoneme range 0 1 eyelid_droop_Left
	flexcontroller phoneme range 0 1 Eyelid_raise_right
	flexcontroller phoneme range 0 1 eyelid_raise_left
	flexcontroller phoneme range 0 1 Eyelid_wide_Right
	flexcontroller phoneme range 0 1 eyelid_wide_Left
	flexcontroller phoneme range 0 1 Eyelid_squint_right
	flexcontroller phoneme range 0 1 eyelid_squint_left
	flexcontroller phoneme range 0 1 Relax
	flexcontroller phoneme range 0 1 Derp
	flexcontroller phoneme range 0 1 Sphere
	flexcontroller eyes range -45 45 eyes_updown
	flexcontroller eyes range -45 45 eyes_rightleft

	localvar biter
	localvar AU1AU2AU4R
	localvar AU1AU2AU4L
	localvar right_open
	localvar left_open
	localvar right_lip_suppressor
	localvar left_lip_suppressor
	localvar lower_lip_active
	localvar right_scaled_part
	localvar left_scaled_part
	localvar right_raiser_suppressor
	localvar left_raiser_suppressor
	localvar right_depressor_suppressor
	localvar left_depressor_suppressor
	localvar right_corner_suppressor
	localvar left_corner_suppressor
	localvar right_drop_suppressor
	localvar left_drop_suppressor
	localvar right_drop
	localvar left_drop
	localvar right_au_open
	localvar left_au_open
	localvar jaw_overage
	localvar jaw_underage
	localvar jaw_blend
	%biter = bite
	%AU1R = right_inner_raiser * (1 - right_outer_raiser) * (1 - right_lowerer)
	%AU1L = left_inner_raiser * (1 - left_outer_raiser) * (1 - left_lowerer)
	%AU2R = right_outer_raiser * (1 - right_inner_raiser) * (1 - right_lowerer)
	%AU2L = left_outer_raiser * (1 - left_inner_raiser) * (1 - left_lowerer)
	%AU4R = right_lowerer * (1 - right_inner_raiser) * (1 - right_outer_raiser)
	%AU4L = left_lowerer * (1 - left_inner_raiser) * (1 - left_outer_raiser)
	%AU1AU2AU4R = right_inner_raiser * right_outer_raiser * right_lowerer
	%AU1AU2AU4L = left_inner_raiser * left_outer_raiser * left_lowerer
	%AU1AU2R = right_inner_raiser * right_outer_raiser * (1 - right_lowerer) + %AU1AU2AU4R / 2
	%AU1AU2L = left_inner_raiser * left_outer_raiser * (1 - left_lowerer) + %AU1AU2AU4L / 2
	%AU1AU4R = right_inner_raiser * (1 - right_outer_raiser) * right_lowerer + %AU1AU2AU4R / 2
	%AU1AU4L = left_inner_raiser * (1 - left_outer_raiser) * left_lowerer + %AU1AU2AU4L / 2
	%AU2AU4R = right_outer_raiser * (1 - right_inner_raiser) * right_lowerer + %AU1AU2AU4R / 2
	%AU2AU4L = left_outer_raiser * (1 - left_inner_raiser) * left_lowerer + %AU1AU2AU4L / 2
	%AU38 = dilator
	%lower_lip_active = lower_lip * (1 -  min((jaw_drop / 2), 1))
	%right_open = right_part + right_puckerer + right_funneler + right_upper_raiser * 0.5 + %lower_lip_active
	%left_open = left_part + left_puckerer + left_funneler + left_upper_raiser * 0.5 + %lower_lip_active
	%right_lip_suppressor = (1 - presser) * (1 - %biter)
	%left_lip_suppressor = (1 - presser) * (1 - %biter)
	%AU6R = right_cheek_raiser
	%AU6L = left_cheek_raiser
	%right_scaled_part = right_part * (1 - right_puckerer * (1 / 2 - right_funneler * 1 / 6) - right_funneler * 1 / 4) * %right_lip_suppressor
	%left_scaled_part = left_part * (1 - left_puckerer * (1 / 2 - left_funneler * 1 / 6) - left_funneler * 1 / 4) * %left_lip_suppressor
	%AU25R = %right_scaled_part * (1 - right_corner_puller)
	%AU25L = %left_scaled_part * (1 - left_corner_puller)
	%AU12AU25R = %right_scaled_part * right_corner_puller
	%AU12AU25L = %left_scaled_part * left_corner_puller
	%AU18R = right_puckerer * (1 - right_part * (1 / 2 - right_funneler * 1 / 6) - right_funneler * 1 / 4) * %right_lip_suppressor
	%AU18L = left_puckerer * (1 - left_part * (1 / 2 - left_funneler * 1 / 6) - left_funneler * 1 / 4) * %left_lip_suppressor
	%AU22R = right_funneler * (1 - right_part * (1 / 2 - right_puckerer * 1 / 3) - right_puckerer * 1 / 2) * %right_lip_suppressor
	%AU22L = left_funneler * (1 - left_part * (1 / 2 - left_puckerer * 1 / 3) - left_puckerer * 1 / 2) * %left_lip_suppressor
	%right_raiser_suppressor = (1 - 0.3 * %AU22R) * (1 - 0.5 * %AU18R) * (1 - presser) * (1 - %biter) * (1 - right_corner_puller) * (1 - 0.5 * jaw_drop)
	%left_raiser_suppressor = (1 - 0.3 * %AU22L) * (1 - 0.5 * %AU18L) * (1 - presser) * (1 - %biter) * (1 - left_corner_puller) * (1 - 0.5 * jaw_drop)
	%AU9R = right_wrinkler * %right_raiser_suppressor * (1 - right_upper_raiser)
	%AU9L = left_wrinkler * %left_raiser_suppressor * (1 - left_upper_raiser)
	%AU10R = right_upper_raiser * %right_raiser_suppressor
	%AU10L = left_upper_raiser * %left_raiser_suppressor
	%AU25R = %AU25R * (1 - %AU10R) * (1 - %AU9R)
	%AU25L = %AU25L * (1 - %AU10L) * (1 - %AU9L)
	%AU17R = chin_raiser * (1 - jaw_drop * 0.5) * (1 - %biter) *  max(0, (1 - 2 * (%AU25R + %AU12AU25R + %AU18R + %AU22R + %AU10R)))
	%AU17L = chin_raiser * (1 - jaw_drop * 0.5) * (1 - %biter) *  max(0, (1 - 2 * (%AU25L + %AU12AU25L + %AU18L + %AU22L + %AU10L)))
	%right_depressor_suppressor = 1 / (%AU18R * 0.8 + %AU22R * 0.8 + %AU17R + %biter + right_corner_puller + right_stretcher + right_corner_depressor)
	%left_depressor_suppressor = 1 / (%AU18L * 0.8 + %AU22L * 0.8 + %AU17L + %biter + left_corner_puller + left_stretcher + left_corner_depressor)
	%AU15R = right_corner_depressor * right_corner_depressor * %right_depressor_suppressor
	%AU15L = left_corner_depressor * left_corner_depressor * %left_depressor_suppressor
	%right_corner_suppressor = 1 / (%AU18R * 0.8 + %AU22R * 0.8 + %AU17R + %biter + right_corner_puller + right_stretcher + right_corner_depressor) * (1 - jaw_drop * 0.25)
	%left_corner_suppressor = 1 / (%AU18L * 0.8 + %AU22L * 0.8 + %AU17L + %biter + left_corner_puller + left_stretcher + left_corner_depressor) * (1 - jaw_drop * 0.25)
	%AU12R = right_corner_puller * right_corner_puller * %right_corner_suppressor * (1 - right_part)
	%AU12L = left_corner_puller * left_corner_puller * %left_corner_suppressor * (1 - left_part)
	%AU20R = right_stretcher * right_stretcher * %right_corner_suppressor
	%AU20L = left_stretcher * left_stretcher * %left_corner_suppressor
	%right_drop_suppressor = 1 / (0.5 * %right_open + right_mouth_drop) * (1 - presser) * (1 - %biter)
	%left_drop_suppressor = 1 / (0.5 * %left_open + left_mouth_drop) * (1 - presser) * (1 - %biter)
	%right_drop = right_mouth_drop * right_mouth_drop * %right_drop_suppressor
	%left_drop = left_mouth_drop * left_mouth_drop * %left_drop_suppressor
	%right_au_open =  min((%AU18R + %AU25R + %AU12AU25R + 0.5 * %AU22R + %AU20R + %AU12R), 1)
	%left_au_open =  min((%AU18L + %AU25L + %AU12AU25L + 0.5 * %AU22L + %AU20L + %AU12L), 1)
	%AU32 = bite
	%AU24 = presser + (1 - presser) * tightener
	%AU31 = jaw_clencher * jaw_clencher / (jaw_clencher +  min(jaw_drop, 1))
	%AD96L =  max(-mouth_sideways, 0) * (1 - 0.5 * %right_au_open) * (1 - %right_drop * jaw_drop * 0.25) * (1 - 0.5 * %biter)
	%AD96R =  max(mouth_sideways, 0) * (1 - 0.5 * %left_au_open) * (1 - %right_drop * jaw_drop * 0.25) * (1 - 0.5 * %biter)
	%AD30L =  max(-jaw_sideways, 0)
	%AD30R =  max(jaw_sideways, 0)
	%jaw_overage =  max(0, ((jaw_drop - 1) * (1 - presser) * (1 - %biter) * (1 - 0.5 *  max(%right_au_open, %left_au_open))))
	%jaw_underage =  min(jaw_drop, 1) - %jaw_overage
	%jaw_blend = jaw_drop / (jaw_clencher + jaw_drop)
	%AU26R = %jaw_underage * (1 - %right_drop) * %jaw_blend
	%AU26L = %jaw_underage * (1 - %left_drop) * %jaw_blend
	%AU27R = %jaw_underage * %right_drop * %jaw_blend
	%AU27L = %jaw_underage * %left_drop * %jaw_blend
	%AU26ZR = %jaw_overage * (1 - %right_drop) * %jaw_blend
	%AU26ZL = %jaw_overage * (1 - %left_drop) * %jaw_blend
	%AU27ZR = %jaw_overage * %right_drop * %jaw_blend
	%AU27ZL = %jaw_overage * %left_drop * %jaw_blend
	%AU22ZR =  max(0, (%AU22R - 1))
	%AU22ZL =  max(0, (%AU22L - 1))
	%AU22R =  min(%AU22R, 1) - %AU22ZR
	%AU22L =  min(%AU22L, 1) - %AU22ZL
	%AU16L = %lower_lip_active * %left_lip_suppressor
	%AU16R = %lower_lip_active * %right_lip_suppressor
	%mouth = %AU27R * 0.5 + %AU27L * 0.5 + %AU27ZR * 0.5 + %AU27ZL * 0.5 + %AU26ZR * 0.35 + %AU26ZL * 0.35 + %AU22R * 0.35 + %AU22L * 0.35 + %AU18R * 0.25 + %AU18L * 0.25 + %AU25R * 0.35 + %AU25L * 0.35 + %AU32 * 0.5 + %AU12AU25R * 0.5 + %AU12AU25L * 0.5 + %AU16L * 0.3 + %AU16R * 0.3 + %AU10R * 0.5 + %AU10L * 0.5
	%AU13R = right_cheek_puffer *  max(0, (1 - %mouth * 3))
	%AU13L = left_cheek_puffer *  max(0, (1 - %mouth * 3))
	%eyelid_droopR = Eyelid_droop_Right
	%eyelid_droopL = eyelid_droop_Left
	%eyelid_raiseR = Eyelid_raise_right
	%eyelid_raiseL = eyelid_raise_left
	%eyelid_wideR = Eyelid_wide_Right
	%eyelid_wideL = eyelid_wide_Left
	%eyelid_squintR = Eyelid_squint_right
	%eyelid_squintL = eyelid_squint_left
	%relax = Relax
	%derp = Derp
	%sphere = Sphere
}

$BodyGroup "gear"
{
	studio "mgs5_gz_big_boss_sneaking_suit_bbsneakgear.smd"
	blank
}
$BodyGroup "gear"
{
	studio "mgs5_gz_big_boss_sneaking_suit_bbsneaktape.smd"
	blank
}
$BodyGroup "body"
{
	studio "mgs5_gz_big_boss_sneaking_suit_bbsneakcurl.smd"
}


$SurfaceProp "flesh"

$Contents "solid"

$EyePosition 0 0 70

$MaxEyeDeflection 90

$MostlyOpaque

$CDMaterials "models\ninja\Mgs5\BIGBOSS\"
$CDMaterials "models\ninja\Mgs5\Shared\"

$TextureGroup "skinfamilies"
{
	{
		"sna2_face0_def_bsm.vmt"
	}
	{
		"sna2_face0_def_bsm1.vmt"
	}
	{
		"sna2_face0_def_bsm2.vmt"
	}
}

$Attachment "eyes" "ValveBiped.Bip01_Head1" 3.67 -4.32 0 rotate 0 -80.1 -90
$Attachment "mouth" "ValveBiped.Bip01_Head1" 1 -6.5 0 rotate 0 -80 -90
$Attachment "chest" "ValveBiped.Bip01_Spine2" 5 4 0 rotate 0 90 90
$Attachment "forward" "ValveBiped.forward" 0 0 0 rotate 0 0 0
$Attachment "anim_attachment_RH" "ValveBiped.Anim_Attachment_RH" 0 0 0 rotate -90 -90 0
$Attachment "anim_attachment_LH" "ValveBiped.Anim_Attachment_LH" 0 0 0 rotate -90 -90 0
$Attachment "anim_attachment_head" "ValveBiped.Bip01_Head1" 0 0 0 rotate -90 -90 0

$CBox 0 0 0 0 0 0

$BBox -9.945 -33.553 -2.439 8.093 33.728 73.317

// $HBoxSet "default"
// $HBox 1 "ValveBiped.Bip01_Head1" -1.25 -6.5 -3.19 8.25 3.5 3.31
// $HBox 4 "ValveBiped.Bip01_L_UpperArm" 0 -2.75 -2.75 12.51 1.75 2.25
// $HBox 4 "ValveBiped.Bip01_L_Forearm" 0 -2.19 -2.38 13 1.81 1.62
// $HBox 4 "ValveBiped.Bip01_L_Hand" 0.06 -2 -1.5 4.06 1 2.5
// $HBox 5 "ValveBiped.Bip01_R_UpperArm" 0 -3 -2.25 12.39 2 2.75
// $HBox 5 "ValveBiped.Bip01_R_Forearm" -0.5 -2.2 -1.55 12.5 1.8 2.45
// $HBox 5 "ValveBiped.Bip01_R_Hand" 0.06 -2 -2.5 4.06 1 1.5
// $HBox 6 "ValveBiped.Bip01_L_Thigh" 0 -3.75 -3.25 17.85 3.75 3.25
// $HBox 6 "ValveBiped.Bip01_L_Calf" 0 -3.51 -3.28 15.64 3.49 2.72
// $HBox 6 "ValveBiped.Bip01_L_Foot" -1.07 -2 -2.84 5.04 5 2.16
// $HBox 6 "ValveBiped.Bip01_L_Toe0" -0.5 -3 -2.19 2.5 0 2.46
// $HBox 7 "ValveBiped.Bip01_R_Thigh" 0 -3.75 -3.25 17.85 3.75 3.25
// $HBox 7 "ValveBiped.Bip01_R_Calf" 0 -3.51 -2.82 15.64 3.49 3.18
// $HBox 7 "ValveBiped.Bip01_R_Foot" -1.06 -2.01 -2.28 5.05 4.99 2.72
// $HBox 7 "ValveBiped.Bip01_R_Toe0" -0.5 -3 -2.6 2.5 0 2.1
// $HBox 3 "ValveBiped.Bip01_Pelvis" -7.5 -5.5 -6 7.5 8.5 5
// $HBox 2 "ValveBiped.Bip01_Spine2" -2.5 -2.5 -7 14.5 7.5 7
// $SkipBoneInBBox

$ProceduralBones "mgs5_gz_big_boss_sneaking_suit.vrd"


$Sequence "ragdoll" {
	"mgs5_gz_big_boss_sneaking_suit_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$IncludeModel "m_anm.mdl"

$IKChain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$IKChain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$IKChain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$IKChain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

$CollisionJoints "mgs5_gz_big_boss_sneaking_suit_physics.smd"
{
	$mass 0
	$inertia 10
	$damping 0.01
	$rotdamping 1.5


	$jointconstrain "ValveBiped.Bip01_L_Thigh" x limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" y limit -55 90 0
	$jointconstrain "ValveBiped.Bip01_L_Thigh" z limit -140 140 0

	$jointconstrain "ValveBiped.Bip01_L_Calf" x limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" y limit -12 12 0
	$jointconstrain "ValveBiped.Bip01_L_Calf" z limit -12 145 0

	$jointconstrain "ValveBiped.Bip01_R_Thigh" x limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" y limit -90 55 0
	$jointconstrain "ValveBiped.Bip01_R_Thigh" z limit -140 140 0

	$jointconstrain "ValveBiped.Bip01_R_Calf" x limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" y limit -12 12 0
	$jointconstrain "ValveBiped.Bip01_R_Calf" z limit -12 145 0

	$jointconstrain "ValveBiped.Bip01_R_Foot" x limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" y limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_R_Foot" z limit -55 35 0

	$jointconstrain "ValveBiped.Bip01_Spine" x limit -15 15 0
	$jointconstrain "ValveBiped.Bip01_Spine" y limit -15 15 0
	$jointconstrain "ValveBiped.Bip01_Spine" z limit -15 15 0

	$jointconstrain "ValveBiped.Bip01_Spine2" x limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_Spine2" y limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_Spine2" z limit -45 45 0

	$jointconstrain "ValveBiped.Bip01_L_Clavicle" x limit -28 19 0
	$jointconstrain "ValveBiped.Bip01_L_Clavicle" y limit -16 26 0
	$jointconstrain "ValveBiped.Bip01_L_Clavicle" z limit -10 46 0

	$jointconstrain "ValveBiped.Bip01_L_UpperArm" x limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" y limit -115 150 0
	$jointconstrain "ValveBiped.Bip01_L_UpperArm" z limit -135 135 0

	$jointconstrain "ValveBiped.Bip01_R_Clavicle" x limit -28 19 0
	$jointconstrain "ValveBiped.Bip01_R_Clavicle" y limit -16 26 0
	$jointconstrain "ValveBiped.Bip01_R_Clavicle" z limit -10 46 0

	$jointconstrain "ValveBiped.Bip01_R_UpperArm" x limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" y limit -150 115 0
	$jointconstrain "ValveBiped.Bip01_R_UpperArm" z limit -135 135 0

	$jointconstrain "ValveBiped.Bip01_R_Forearm" x limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" y limit -60 60 0
	$jointconstrain "ValveBiped.Bip01_R_Forearm" z limit -165 30 0

	$jointconstrain "ValveBiped.Bip01_R_Hand" x limit -60 60 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" y limit -60 60 0
	$jointconstrain "ValveBiped.Bip01_R_Hand" z limit -70 70 0

	$jointconstrain "ValveBiped.Bip01_L_Forearm" x limit -30 30 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" y limit -60 60 0
	$jointconstrain "ValveBiped.Bip01_L_Forearm" z limit -165 30 0

	$jointconstrain "ValveBiped.Bip01_Neck1" x limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_Neck1" y limit 0 0 0
	$jointconstrain "ValveBiped.Bip01_Neck1" z limit 0 0 0

	$jointconstrain "ValveBiped.Bip01_Head1" x limit -70 70 0
	$jointconstrain "ValveBiped.Bip01_Head1" y limit -25 25 0
	$jointconstrain "ValveBiped.Bip01_Head1" z limit -65 40 0

	$jointconstrain "ValveBiped.Bip01_L_Hand" x limit -60 60 0
	$jointconstrain "ValveBiped.Bip01_L_Hand" y limit -60 60 0
	$jointconstrain "ValveBiped.Bip01_L_Hand" z limit -70 70 0

	$jointconstrain "ValveBiped.Bip01_L_Foot" x limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" y limit -40 40 0
	$jointconstrain "ValveBiped.Bip01_L_Foot" z limit -55 35 0
	$noselfcollisions
}

$CollisionText
{
	animatedfriction 
	{
		"animfrictionmin" "1.000000"
		"animfrictionmax" "400.000000"
		"animfrictiontimein" "0.500000"
		"animfrictiontimeout" "0.000000"
		"animfrictiontimehold" "0.300000"
	}
	editparams 
	{
		"rootname" "valvebiped.bip01_pelvis"
		"totalmass" "90.000000"
	}
}
