��
�'�&
9
Add
x"T
y"T
z"T"
Ttype:
2	
l
ArgMax

input"T
	dimension"Tidx

output	"
Ttype:
2	"
Tidxtype0:
2	
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
4
Fill
dims

value"T
output"T"	
Ttype
7
FloorMod
x"T
y"T
z"T"
Ttype:
2	
�
Gather
params"Tparams
indices"Tindices
output"Tparams"
validate_indicesbool("
Tparamstype"
Tindicestype:
2	
:
Greater
x"T
y"T
z
"
Ttype:
2		
?
GreaterEqual
x"T
y"T
z
"
Ttype:
2		
�
	HashTable
table_handle�"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�
.
Identity

input"T
output"T"	
Ttype
`
InitializeTable
table_handle�
keys"Tkey
values"Tval"
Tkeytype"
Tvaltype
\
ListDiff
x"T
y"T
out"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
+
Log
x"T
y"T"
Ttype:	
2
$

LogicalAnd
x

y

z
�
u
LookupTableFind
table_handle�
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype
b
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
:
Minimum
x"T
y"T
z"T"
Ttype:	
2	�
<
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
A
Placeholder
output"dtype"
dtypetype"
shapeshape: 
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
l
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
i
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
v

SegmentSum	
data"T
segment_ids"Tindices
output"T"
Ttype:
2	"
Tindicestype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
/
Sigmoid
x"T
y"T"
Ttype:	
2
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
8
Softmax
logits"T
softmax"T"
Ttype:
2
�
SparseReduceSum
input_indices	
input_values"T
input_shape	
reduction_axes
output"T"
	keep_dimsbool( "
Ttype:
2	
�
SparseReduceSumSparse
input_indices	
input_values"T
input_shape	
reduction_axes
output_indices	
output_values"T
output_shape	"
	keep_dimsbool( "
Ttype:
2	
y
SparseReorder
input_indices	
input_values"T
input_shape	
output_indices	
output_values"T"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	
�
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
K
StringSplit	
input
	delimiter
indices	

values	
shape	
5
Sub
x"T
y"T
z"T"
Ttype:
	2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �

Where	
input
	
index	
&
	ZerosLike
x"T
y"T"	
Ttype"serve*	1.0.0-rc22v1.0.0-rc1-102-g1536a84-dirty��

global_step/Initializer/ConstConst*
dtype0	*
_class
loc:@global_step*
value	B	 R *
_output_shapes
: 
�
global_step
VariableV2*
	container *
_output_shapes
: *
dtype0	*
shape: *
_class
loc:@global_step*
shared_name 
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/Const*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0	*
_output_shapes
: 
Y
PlaceholderPlaceholder*
dtype0*
shape: *#
_output_shapes
:���������
[
Placeholder_1Placeholder*
dtype0	*
shape: *#
_output_shapes
:���������
��
transform/ConstConst*
dtype0*��
value��B���NBtheBaBandBtoBofBinBthisBisBwithBforB/Bwash;BthatByourBfromBteeBcottonBtumbleBitBanBlongBasB=BpointBhighBcotton</li><li>MachineBshoulderBoneBbutBitsBUSA</li></ul>"BonBlittleBfilmBitemBtopBgraphicBupBThisBhangBmovieBdry</li><li>MadeByouBit'sBrayonBUSA</li></ul>B	polyesterB	note:</b>BbeBtimeBfabricBnotB|B5%BPrintedBstyleBmadeBlookBbyBcomfortBdry</li><li>ImportedB</p><p>&nbsp;</p><ul><li>100%BhasBâ€“BS:BxBsizeBspandex</li><li>HandBallBareBatBrunsBsoftBsmallBorB!</p><p>&nbsp;</p><ul><li>IncludesBhisBmoreBextraBfindBwillBcomfyBspecialBlikeBpolyester</li><li>MachineBaboutBcasualBfitBwhileBAllowBdry</li><li>Imported</li></ul>BhaveBthanBspandex</li><li>MachineBshipBsoB"B</p><p>&nbsp;</p><ul><li>SizeB40%BcanB--Bdry</li><li>Imported</li></ul>"B-B</p><p>&nbsp;</p><p><b>SizeBfunBrecommendedBOrderingBcomfortableBsetBtheirBfeaturesBintoBhem</li><li>95%BifBWBoutB5''BjustBclassicBorderBmakeBtooBstoryB<p>ThisBiBwhatBdesignBnoBwhoB	featuringBevenBmostBmakesB<p>ABtouchB"<p>ThisBsomeB
breathableBsleevesBmuchBoffBwardrobeBloveBplayfulBwash</li><li>MadeBgoodBdryB</b>ThisBcotton-blendB</p>BwhenBcomedyBdayBcoolBherB"<p>AB4%BwayBtwoBlightweightBblendBringspunBcozyBcombedB
charactersBnote:B25%BHB0BaddsBensembleBbestBthat'sB	supersoftB:BcutB3BonlyBoffersBsweetBanyB1X:BtheseByearsBboldBtheyBappealBstretchBenoughBagesBbeenB30''BkeepsBkeepBSB100%BneverBfunnyBABworkBrelaxedBlifeBboastsBLBMBveryB</p>"Bwash</li><li>Imported</li></ul>BthereBmayBthroughB</p><p>&nbsp;</p><ul><li>60%B8BthemBheB</p><ul><li>100%BruchedBeye-catchingBwhichBhowBfavoriteBcharmBdoesn'tB2BcharmingB12Brayon</li><li>MachineBXLB5BbackBnewBTheB4BgetBcraftedB</p><ul><li>SizeBusB10BdirectorBwithoutBozBflat</li><li>MadeBbadB1B6BwellBboastingBweB(USA</li></ul><p>&nbsp;</p><p><b>ShippingBaddBeveryBwasBfeelBall-dayBoverBXSBwouldBraglanB35%BprintBownBhemBcouldBnecklineBreallyBmoviesBhueBzulilyB wash</li><li>Imported</li></ul>"BtunicBthere'sBgreatB50%BsolidB	somethingBperformancesB	laid-backBthoseBpureBotherBdoesB2XBone'sBcolorBprovidesBfeminineB	characterB3XBshouldBbigB7BbetterBbothBsureBseeBmanyBhumorBstillBfilmsBdramaBplotBfrontBensuresB25''Bisn'tB
silhouetteBsportyBsideBpromisesBeverydayBbeingB9Bpolyester</li><li>HandBeasyBpieceBhimBperformanceBonesBmightBrayon</li><li>HandBvibrantB
flatteringBpeopleBnothingBmessageBflairBdoBactionBUSA</li></ul><p><b>ShippingB13BcastB28''BsenseBlendsBdownBalsoBfirstBtakeBconstructionBawayBshowB</p><p><b>SizeByetBstretch-blendBsimpleB	essentialB!</p><p>&nbsp;</p><ul><li>NecklaceBthoughBaudienceB</p><p>&nbsp;</p><ul><li>50%B27''BworldBgivesBfarBthanksBfeelsB</p><ul><li>IncludesBstapleBeverB'BpersonalityBdon'tBafterBcreateBagainB11BthingBgoB9dry</li><li>Imported</li></ul><p>&nbsp;</p><p><b>ShippingB31''B26''BmaterialBkindBfewBcolorfulBbetweenBanotherB</p><p>&nbsp;</p><ul><li>SideBsuchB<p>YourBplayBlookingBskinBscoopBoilBcotton</li><li>HandBchartBtaleBlessBbumpB29''BreferBbecauseBPleaseB</p><p>&nbsp;</p><ul><li>95%BscriptBrealBoftenBromanticBgiveBwearingBhereBfullBcan'tBartBrightBpictureBorganicBlooksBhardBgetsBfilm'sB;B	versatileBpaintBincluded</li><li>SizeBensureBcleverByou'reBwearBthreeBneckBhintBseemsBbringBcomeB
all-cottonBhem</li><li>100%BfourBcomesBbrightBquiteBminutesBknowB</p><ul><li>60%B75''B60%BthingsBhi-lowBdocumentaryBchicBalmostBratherBgrowingBfamilyBmarkersBinterestingBhem</li><li>Knit;BwhereBwatchingBthrillerBhomeBcolorsB3%B16WByoungBtakesBheartB18WBscreenBmyBbeforeBM:BfeelingBaroundBstretchyBpowerBoldBbreezyBbitBseenBperfectBmomentsBentertainingB	ensemblesBendBdeliversB20WB10%BreadyBmanBitselfBdarlingBworksB	hollywoodBhadBdespiteBpopBplentyBdetail</li><li>50%BamericanB
ultimatelyBtimesBthenBsameBlendBfloralBcurvesBbringsBscenesBmeBlotBstripesBgo-toB<p>KeepB<p>AddB00BwereBstretch-kissedBpartBmodernBhem</li><li>Knit</li><li>95%BdeBalongB14WBup</li><li>Imported</li></ul>"B
experienceBactingB2X=BsixBprettyBmakingBhumanBhem</li><li>65%BalwaysBwantBtogetherBneedBjourneyBhoursB!</p><p>&nbsp;</p><ul><li>Juniors:B"<p>WithBshortsBroomBourBonceBeasilyB32''B14Btall;BruchingBmusicB</p><p>&nbsp;</p><ul><li>1XBwatchBwaist;BoriginalBlastingBhem</li><li>96%B
everythingBanythingBoh-soBenjoyBdurableB7''B18W-20WB	whimsicalBsillyBkidsBhelpBgoingBdialogueBdetailBdaysB14W-16WBtankBplaceBnextBworthBtrueBstayBlaughsBfansBfaceBanyoneB
compellingB22W-24W</li><li>SizeB	ultrasoftBthinkBstarBsidesBon-trendBlightB	cinematicBwholeBoutfitB
completelyB22WByou'llBsayBadorableBsimplyBshortBflowingBdetail</li><li>100%BcareBbodyB15</li><li>Women:ByearBwhyBthree-quarterBleastBincludedBdullB
collectionBbecomeB6%B3X=B"<p>CraftedBwash</li><li>ImportedBlastBentertainmentBeachB	sometimesBsharpBpickBpatternBfreshBfinishBfineB9''BseriesBdesignedB	beautifulBbasicBviscoseBuniqueBtrendyBseemBpairBorderingBfascinatingBaccentsB3''BwaterBofferBlayeredBideaBhe'sBfeatureBactorsB45%B14</li><li>SizeBtee'sB
technologyBshowsBgentleBcaseBvisualB	statementB	note</b>:BmanagesBgoesBenergyB	emotionalBduringBaccentBDisneyB</li><li>MadeB20BunderBsportsBrichBhistoryBflickBdetailsBdaylongBcompleteBcinemaBadditionBwarmBsinceBpredictableBmovingBlaceBdeepBbabyB	adventureB</p><ul><li>NecklaceB16Bwon'tBtwistBturnsBsubjectBinsteadBfiveBdolmanBcreativeB
casualwearB24''BwhoseBtitleBstylingBnearlyBmindBlong-sleeveBidealBhemlineBfashionBstylishBstretch</li><li>95%BnaturalBmatchingBcrewneckBchest;BallowsBactuallyB5'B4XB"<p>AddBup</li><li>Imported</li></ul>BtryingB
screenplayBnowBmrBincluded</li><li>1X=BdoneBdarkB	<p>LittleBsmartBmatterBhumorousBeffectsB6''B33%BvideoB
v-necklineBstretch-enhancedBsleeveBprojectsB	narrativeBlacksBfigure-flatteringB,dry</li><li>Imported</li></ul><p><b>ShippingB	directionBcomicBboringB8''B8%B24WB18BwritingBwallsBspiritBletsBleaveBfigureBwashBv-neckBtrend-rightB
throughoutBsheerBsheBpremiseBhorrorB
effortlessBamusingB"<p>FeaturingBsmoothBsizingBprojectBprobablyBplaysBpantsBmovie'sBmessBfanBbecomesBItsB</p><p>&nbsp;</p><ul><li>65%B"<p>SoftBwarBschoolBrockB
recommendsBlovelyBideasB	hilariousBhalfBgenreBcreatesBbeyondBwomenBwittyBstandoutBportraitBmenB	maternityBlayerB
intriguingBfamiliarBendingBalthoughBGBB27BworstBshippingBrunBproblemBpowerfulBmatchBlevelBintelligentBflauntsB	enjoyableBengagingBdebutBcontrastBUSA</li></ul>"""B4''B1''BwhetherBwhat'sBturnBtoneBtime:BtheaterBsortBromanceBpocketBpersonalBpastBlackB
especiallyBenlivensBeffortB	differentBanimatedB
adventuresB26WBversionBstrongBsleekBquirkyBputBjohnBinterestBguyB
filmmakersBeveryoneBblackBSoftB/</p><p>&nbsp;</p><ul><li>Prewashed</li><li>100%BwitBshotBsceneBobviousBmostlyBlivesBlineBinsideBformulaBendlessBcheerfulBcheekyBwarmthBsoftnessBsafeBpaperBleavesBgettingBgameB
delightfulBcultureBH</li><li>Vinyl</li><li>MadeByou'veBwhiteBwallBusesBup</li><li>MadeBstudyBprovideBnotesBlivelyBleftBknitBgentlyBfrenchBexerciseBeitherBdramaticBdirectedBdeeplyBairBactorBMPB36''B2''BversatilityBuseBultimateBsubtleBshorts</li><li>100%BreusableBprovesBpiecesBofferingBmeansBincludesBhem</li><li>ModelBhem</li><li>63%BfriendsBformBcutoutsBcontrastingBartistsB<p>ShowB45''B38%BviewersBtouchingBsurprisinglyBstretch-infusedBslowB	recommendBpassionBpaintsBneedsB	melodramaBlikelyBiPhoneBheadB
filmmakingBendsBelseBeffectBcuteBcartoonB	brilliantB<p>TheB&ndash;BwhimsyBsummerBskirtB	removableBrareBniceBmovementBjokesBinternationallyBhandBfutureBdumbBcloseBbelieveBbeautifullyBacrossBWeB30%B30B"<p>TheBusingBtrimBsuppleBstuffBsadBrecentBreasonBoperaBneitherBlayeringBi'mBhairBgraphicsBexactlyBedgeBdeathBchildrenB	certainlyBcasual-coolBcameraBbuttonsBbehindB<p>AnB28BwildBtrulyB	shouldersBremoteBoccasionallyBimagesBhuesBholdBhimselfBfactBduoBdidn'tBcontrolBbrushB26B"<p>MakeB"<p>KeepBtalentBstripeBsoapBsmilesBskimsBqualityBpromiseB
productionBprintedBmagicBlimitedBleggingsB	importantBhem;Bgr-alertBflatBfittedBfailsBeyeBelegantBcutoutBcasual-chicBbookBbasicsB	audiencesBacrylicB<p>BringB<gB24B"<p>BoastingBwinningBvisuallyBtvBthey'reBtellBteesBsuspenseBstandBroleBrideBjeansBhourBhandyBguysBgirlBfestiveB	excellentBeaseBdrapingBdisplayBcrimeBcomplexBclean</li><li>MadeBblockB	attentionBactiveBterrificBstoriesBspaceBseriousBrealityBquickBpsychologicalBpretentiousBmustBliveBimaginationBhelpsBcraftB	button-upBartisticBAnB34''ByourselfBwashableBviolenceBtextureBstartsBsitBrunningBnoneBnightBmmBmichaelBmemoryBmeetsBgotBdressingBdressBdecalsBcontemporaryB
class=\gr_BblueBwrongBusedBtriesBtop'sBtoldBtasteBstaysBsoundBsocialBshirtBseeingBremainsBquicklyB	politicalBpleasureB	patrioticB
impossibleBheatBgivingBgagsBdecalBcleanBchoiceBcallBbarelyBbandBaloneB25BvisionBtruthBtreatB
thoughtfulBstyledB	showcasesB	sensitiveB
satisfyingBpure-cottonBpossibleBpleaseBplaytimeBparentsBnovelBnorB	must-haveBmixBlooseBletBleadBknowsBkeepingBjuniorsBhavingB	flauntingB
emblazonedBdrapeBdigitalB	difficultBcreepyBcoldBclosetBbreezeBartistBagainstBaboveBUSA</li></ul><p>&nbsp;</p>"B</p><ul><li>1XB33''BwrittenBwideBvibeBsurfaceBstarsBsecondBroundedBprocessBponchoBparticularlyB	otherwiseBlogoBlinesBinnerBiPadBhitBhips</li><li>Knit;BhighlyBhandsBgoneBfringeBfoundBfinalB	filmmakerBeightBearnestBdidBdelicateBday-longBcoming-of-ageBchangeBbottlesB<p>LetB95%B20%B15BworkingBuntilB
thoroughlyBsuperBstorytellingBsingleBsidetailBshort-sleeveBsatireBquietBprideB	potentialBoptionsBmoralB	memorableBlowBlargeBhonestBheroBhem</li><li>Mannequin:BgorgeousBgirlsBflattersBfitsBfastBfallsBedgyBdoseBdoingBdashBcoordinatingBcomfortablyBcollegeBclichesBcarBbutterB	animationBamountBallureBallowBaddingBL:B–BweatherBvividBtoughBtimelessBtakingBstripedBsoundsBsophisticatedBsexBsci-fiBrotationBroomyBrarelyBpolishedBpagesBnatureBmysteryBmerelyBlotsBlaughBjerseyBintelligenceBinsightBgr_run_animBfinallyBfilledBeyesBelementsBeffortlesslyBdepthBdeadB	contrivedBcomediesBcenterBbeautyBattemptBamongBBabyB63''BwordsB	wonderfulBwonderBviewBthoughtBstraightBspyB	sparklingBsoothingBsequelBsassyBroutineBremakeB
refreshingBredBputsBprincessBpointsBperhapsB	perfectlyBothersBmomentBmoisture-wickingBmaybeBmarkBholidayBfocusBepicBentirelyB
engrossingBdetailedB
creativityBclearBclassBboyBbeginsBbasedBapproachBalreadyBalluringBworthyBworseBwaysButterlyBuponB
unexpectedBtouchesBtiredB
themselvesB
surprisingBsuggestBstrangeBstorageBspeedBseveralBqueBpicturesBpairingBoverallBopenBmoodBjobB
impressiveBgivenBfree-spiritedBflexibleBexpectBentireBenlivenBearlyBdeliverB
definitelyBdavidBcurve-skimmingBcourtesyBconceptBbagB	appealingB
adaptationBUSBB1XB12%BwelcomeBwantsBusualBtragedyBtediousBsurpriseBslightlyBsentimentalBresultBpreciousBperiodBneededBmoveBmodalBmessagesBmachineBlostBlivingBlatestBjokeBinspiredBimagineBimaginativeBi'veBhopeBhem</li><li>60%Bhem</li><li>50%BhealthyBhappyBgreenBgr_spellBgenuineBflirtyB flat</li><li>Imported</li></ul>"BexcitingBdisneyBdeservesBday'sBcreatingBcreamB
convenientBcombinationBbathBaddedBactBableBRetinaBItB</p><p>&nbsp;</p>B*B	"<p>TheseByou'dByear'sByBviewerBvibesBuglyBtryB	tri-blendBthinBtensionBteenBstickyBsportingBsplashBspandex</li><li>DryBsomeoneBshineBplayingBmonsterBmasterpieceBmajorBloudBinkBhouseBhem</li><li>94%BglitterBforgetBflat</li><li>Imported</li></ul>BfireBfairlyB	extremelyBextractB
excitementBeventsBdecentBcourseB	completesB	chemistryBcertainBcableBbeachBactedB<p>He'llB</p><p>&nbsp;</p><ul><li>2B</li><li>RecommendedB58%B100B10''B	"<p>BringB"<p>AnBwasteBvestBthrillsBtalentedBtakenBstageBspandex</li><li>Contrast:BsomewhatBsmileBsexualBrequiresBrememberB
remarkableBrelationshipBquestionBprovocativeBpolyester</li><li>Leggings:BplusBoBmurderBmoistureBmelodramaticBmeanBmagicalB	intricateBheavyB	heartfeltBgraceB	geometricBgenericBfriendlyBfeltBfantasyBexceptBemotionsBemotionallyBelasticB	effectiveBdesignsBdazzlingBcountryBcheckBcareerBcapBcamisoleBadultsBWi-FiBUSA</li></ul><p>&nbsp;</p>BSizeBMouseB	FeaturingB<p>GetB<b>SizeB</p><p>&nbsp;</p><ul><li>90%B</p><p>&nbsp;</p></p><p><b>SizeB7%B48%B31B11''B
"<p>LittleB"<p>LightweightBwornBweddingBwarm-weatherB	waistbandBupdateBunfortunatelyBtwistsBthemeBsustainB	surprisesBsurfacesBsupposedBsuffersBstartBstandardBspandexBslightBsizesBseasonBscaryBsBrufflesBruffleBrobertB	realisticBpullsB	providingBpoolBpoloBpocketsBpartyB	on-the-goBnylonBnursingBnewsBmildlyBmarkerBlaBkidBintrigueBimpactBimageBiiBhitsBhardlyBframeB	executionB	energeticBdryerBdrawBdealBdamagingBdamageBculturalBcomingBcityBcheeryBaren'tBappearsBXXLBIt'sB</p><ul><li>SideB</p><ul><li>50%B"<p>FromByesB$warranty</li><li>Imported</li></ul>"BvehicleBvarietyBtriumphBtripB	treatmentBstylesBstunningBsoulBsetsBsentimentalityBrollBroadBrevealsBreadBreachBpolyester</li><li>Pants:BplayedB
play-readyBpinkBpairsBpaceBoodlesBold-fashionedB	obviouslyBnumberBmissBminorBminiBmiddleBmasterBlotionBlevelsBleavingBlackingBinvitesBinspireBhoweverBhours</li><li>60BhellBgrippingBgamesB	fuss-freeBflawsBflawedB	finishingBfemaleBfashion-forwardBextremeBexpressBexaminationBequallyBepisodeBdynamicBdelightBdanceB
convincingBconstructedBcollarBcleaningBcaptivatingBbusinessBbump-friendlyBbondBbatteryBbadlyBawfulBattitudeBathleticBamazingBaliveBairyB	absorbingB
absolutelyBabilityBAmericanB<p>LendB
<p>EnlivenB46''B1XL:B15%BwomanB	virtuallyBunfunnyBunevenBtubBtreasureBtravelBtotallyBtermsBtees</li><li>100%BsuccessBsucceedsB	substanceBstoreB	slapstickB
situationsB	situationBshowcaseBsheaBshareBshadeBservesB	sequencesB	sentimentBseaB	refreshesBpresentsBpolyester</li><li>Shorts:BpoignantB
playgroundBpackBoutdoorBontoBnecklaceBmonthsBmissingBmetallicBleadsBkiddoBjoyB	inventiveBindeedB
historicalBhenleyBgoofyBgiantBgeorgeB
friendshipBfriendBfreeBforgettableBfareBdogB
disturbingBcurvedBcrowdBcraftsBcoordinatedBconvenienceBcontentBcombineBchestBchargerBcapturesBcalledBburnoutBbuilt-inBboysBblandBbizarreB	batteriesB	ambitiousBagoBageBadornedBactressBLEDB<aB"</p><ul><li>Prewashed</li><li>100%B</p><p>&nbsp;</p><ul><li>8B</p><p>&nbsp;</p><ul><li>6B</p><p>B38''B37%B32B22</li><li>SizeB"<p>YourB"<p>MadeB"<p>GiveB	youngsterBwithinBwho'sBweirdB
unsettlingBtoolBtomBteamBtalkingBstupidBstrapsBsnugBshe'sBsexyB	seriouslyBscentB)rear-facing</li><li>Wi-Fi</li><li>Output:BpositiveBpleasantBplainBpersonBpartsBpants</li><li>100%B	painfullyBpackedBpacingBnameBmotionBmoneyBmediocreBman'sBmachine-washableBlossBlongerB	lifestyleBkissBinvolvedB	inspiringBinspirationBhotBhoodieBholesBholdsBhempBheavenBhauntingBhappensBgrantBfullyB	formulaicBdreamBdapperBcuddlyBcrispBcreatedBcoverBcoupleBcouldn'tBconventionalBcheapBcharismaBcardBcannotBbreakBbottomBblowBattemptsBadornsBPureBD</li><li>PlasticB</p><p>&nbsp;</p><ul><li>92%B40''B35''B28W</li><li>55%B22W</li><li>SizeB2%B"<p>ShowBwriter-directorBwriterBwilliamsB
well-actedBurbanBunderstatedB
understandBtroubleBterribleB
televisionBtabletBsurpliceB	superheroBsuperficialBstyle=\font-size:B	structureB	strangelyBstevenBstandsBspookyBspectacularBsincereBsheetsBseason-spanningBsawBsaveB	remindersBrefreshinglyBpurposeBpoliticsBpoetryBoscarBorangeBopportunityBoddBnotebookBnontoxicBneutralBlaughterBintimateBintendedBinstantBinspiresBimaxBhugsBhoodBhomageBhem</li><li>97%BharmfulBgriefB	generallyBflowyBflicksBexudesBexploreBessentiallyB
equivalentBelastane</li><li>MachineBdragB
depressingBcowlBconsiderableBchild'sBchargingBchangingBcentralBcastingBcampBbust;BbuddingBbreathabilityBawesomeBaverageB
atmosphereBMinnieB
<p>RefreshB</p><p>&nbsp;</p><ul><li>3B</p><p>&nbsp;</p><ul><li>1X=B</p><p>&nbsp;</p><ul><li>0B*</p><p>&nbsp;</p><p>&nbsp;</p><ul><li>SizeB*</p><p>&nbsp;</p><p>&nbsp;</p><ul><li>100%B</p><p>&nbsp;</p>"B3X-B39%B24W</li><li>SizeB23ByorkBwhateverBwater-basedBvintageBunusualBunlikeBunaBtowardBthinkingBtemperatureBsweetieBsweatBsporty-chicB	spielbergB
soundtrackB	somewhereBslipBside-ruchedBseatBseamsB
ridiculousBrelationshipsBpriceBpolishBplasticBpayB
particularBpanelBpainfulBoutsideBoriginalityBnumbersBmixtureBmesmerizingBmannerBlovedBlightsBkeyholeBjapaneseB
irritatingB	involvingBintenseB	includingBiconicBhours</li><li>UsageBhem</li><li>Self:Bheavy-handedBhateBhasn'tBgrowsB	gross-outBgodBgiftB	genuinelyBgayBfurtherBforcedBforceBflashBfindsBfictionBfashionableBfallBeraBenhancedBeleganceB	easy-pairBeBdevelopmentB	detailingBdeeperBdateBdaringBcreditsBconflictBcatchBbroadBbritishBbrainBbohoBboastBbearsBasymmetricalBasideB
appreciateBamericaB	affectionB	affectingBaffairB
adjustableBaccommodateBaccessoriesBXL=14</li><li>SizeBUSA</li></ul></p>"B<p>TheseB<p>LightweightB<p>GiveB<p>EnjoyB	<p>CreateB<p><b>ShippingB*</p><p>&nbsp;</p><ul><li>Knit</li><li>100%B</p><p>&nbsp;</p><ul><li>96%B</p>"""B55%B"<p>WhetherB"<p>StayB
worthwhileBwordBwinBwifeBweakBwe'reB	watchableBwaistBunlessBtributeBtragicBtoyBtotalBtellsBsupportBsuperiorBstuntsBstrikingB	stretchesBstretch</li><li>96%BstickBstepBspiritedBsomehowBsliceBsilkyBshapeBsettingBservedBsecretBresultsBrestBrequiredBrawBrangeB	questionsB
protectionB	promisingBpreviousBpreventBpossiblyBplacesBpainBoverlyBnonsenseBmeshBmediaBlosesBlearnBlazyBlargelyBissuesBingredientsB
incrediblyBincluded</li><li>1XBiceBhugeBhoodedBhem</li><li>Plus:BheartwarmingBfollowBflatterBfilmedB	feel-goodBfearB	fantasticB	endearingBemptyBelementB	eccentricBdrearyB	directorsBdeftlyBdecorateBdarlingsBdailyBcrushBcrazyBcoverageB	connectedBcombinesBclichésBclearlyBchucklesBcauseBbringingBbooksBbattleBbalanceBaspiringBappliquÃ©BapartBacidBabstractB[a]BWithBStreetBSesameBOilB	<p>UpdateB<p>HelpB</p><p>&nbsp;</p><ul><li>97%B</p><p>&nbsp;</p><ul><li>1B29B22B&ByellowByarnBwouldn'tBwildlyBwicksBweekendBwearsBwe'veBviewingBtrackBtopsBtargetB
successfulBsprayBspendBsparkleBsourceBslickB
simplisticBsightBshorts</li><li>60%BshameBscreenwriterBsaltBrootBrevengeBreportB
repetitiveBremoveB
remarkablyBpunchBpullBproblemsBpoorB	pleasuresB
performersBpeelBpaysBparkBpanacheBnicelyBnearBmsBmovesBmindlessBmembersB
meditationBmasterpiecesBmaskBloversBlengthBleadingBlayersBlameBjersey</li><li>MachineBjacksonB
interestedBinstructionsB
insightfulBindieBhookBhipBguiltyBglassBgeneralB
frequentlyB
formulatedBfatBfaithBexhilaratingBexampleBevilBesBentertainedBenhanceBelBeffortsB
efficiencyBeditingBdÃ©corBdreamsBdisappointingB
director'sBdevicesBdeviceBcoreBclumsyBclothingBchannelBchalkB
celebratesBbuttonBbrownBbrothersBbrightlyBbowBboatBboardBbitsB
believableBbaseBawkwardBapplyBallenB	afternoonBactivityB
accessibleBTheseBCraftedBContextualSpelling\""B<p>MakeB41%B39''B22''B18''B13%B"<p>SportingB"<p>PureB"<p>Laid-backB"<p>ForBwishBwinnerBwindsBwindowBwasn'tBwantedBwaitBvisualsBvinylB	universalBumBtypicalBturnedBtoo-coolBtinyBtieBthought-provokingBthemesB	sweetnessBswathedBsurelyBsturdyBstopBstickersBstayingBstateBsportBsodiumBsnapBshotsBshorts</li><li>Tee:BshallowBscoreBscenarioBrivetingBringBribbedB
rhinestoneB	revealingBretroB
representsBreminderBreignBregularBpulloverBpublicBproveBprotectBproducedBpresentBpredecessorBpossibilitiesBplaidB
peppermintBpeel-and-stickBpatternsBordinaryBnowhereBniroB	necessaryBmoviemakingBmotifBmotherBmeaningBmarksBkevinBjamesBjack</li><li>ChargeBimageryBhuedBhere'sBhem</li><li>Knit</li><li>100%Bhem</li><li>90%Bhem</li><li>55%Bhaven'tBgroupBglowBglimpseBglidesB
generationB	franchiseBfootageBfolksBflowersBfillBfaithfulBfabulousBexpectedB
eventuallyBenhancesBdueBdrapedBdoubtBdisguiseB	directingBdiffuserB
determinedB
derivativeBdemandsB	deliveredBcurve-huggingBcurrentBcrimesBcountB	confidentB
complexityBcompanyB	communityB
commercialBcoloredBcleanerBchoicesBchillingBchildBchangesB	celebrateBcaperBbusyBbunchBbuildBboatneckBboardsBbloodBbirthdayBbackyardBarnoldBIsrael</li></ul>BClassicsBAAB	<p>DefineB<p>BreathableB<p>B</p><p>&nbsp;</p><ul><li>Self:B</p><p>&nbsp;</p><ul><li>4B</li><li>Scent:B</li><li>Imported</li></ul>"B90B64B42''B2002B16-18B"<p>EnlivenB—ByoutubeByouthfulByoungster'sBwryBworkoutBwonderfullyBwentB:wash</li><li>Imported</li></ul><p>&nbsp;</p><p><b>ShippingBwaitingBvsBviolentBvaluesBvalueButterB+up</li><li>Imported</li></ul><p>&nbsp;</p>"BunitBtypeBtropicalBtrimester-spanningBtrifleBtonesB	thrillingBthickBtellingBtastyBtalentsBtableBswingBsweetlyBsweepingBsubjectsBstretch</li><li>94%Bstretch</li><li>100%Bstory'sBstaticBstaleB	spiritualB	speciallyBsparkBsongsBsocietyBsittingBsignBshowingB
showcasingBshakeBsevenBsettingsBsequenceBsearchBscienceBsaysBsaidBrompBrolesBrepositionedBrenderedBrelaxed-fitB
reflectiveB
reasonablyBready-to-goBreadingBraysBraceBpromotesBprofoundBpopcornBpassBpacedBoverwroughtBopeningBoddlyB
nourishingBmurphyBmorningBmoralityBmontyB
meanderingBmaudlinBmarthaBmanageBlistBlinedBlikedBlightheartedBleggings</li><li>Top:BleafBladyBkitBkingBidentityBhumanityBhipsB
highlightsBhem</li><li>Model:BheartsBgrowBgreekBgreatestBgrandBgracefulBghostBgemBgangsterBfunnierB
fun-lovingBfridayB	followingBfluidBfavorBfatherBfarceBextraordinaryBexplorationBexcuseB
essentialsBemotionB	efficientB!dry</li><li>Imported</li></ul>"""BdressedB
distressedBdistinctiveBdevoidBdesireB	depictionBdeliveryBdelightfullyBdelBcourageBcomputerBcompositionBcoloringBcinematographyBchillyB
children'sBchaseBcharacters'BchanceBchallengingBcasuallyBcaptureBcable</li><li>6BbullockB	boho-chicBblockingBbelowBbellyBbehaviorB	beginningBbearingBavoidB	authenticB
attractionBartsB
appearanceBannoyingB
adventurerBadultB	admirableBaction-packedBachievesBEuropeanBBestB<p>SheB<p>BuildB/</p><p>&nbsp;</p><ul><li>Preshrunk</li><li>100%B</p><p>&nbsp;</p><ul><li>30''B42%B28W</li><li>100%B27\B23''B13''B
"<p>SimplyBzoneBxxxBwrappedBwoman'sBwhereverBwalkBvividlyBvacuumB	upliftingBultraBtwistedBtrioBtoss-in-the-washBtodayBtiresomeBtipsBtie-dyeBthree-pieceBthinksB	territoryBtalkBsystemBswimmingBsumBsuitsBsugarB
subversiveBsubtlyBstudioBstrokeB	storylineBstopsBstomachBstartedB	standardsB	spectacleBspeakingBsongBsmile-worthyBsleepBskillBsequinsBsavvyBsassBsandlerBsadeBryanBruggedBroughBrootsB
revolutionBreturnBretreadB
repeatedlyBrelyingBqueenBproudBprotagonistBpreposterousBpowersBportableBpolyester</li><li>Contrast:B	pointlessBpoeticB	playfullyBpizzazzB	pinocchioBphraseBpeterBperspectiveBpanelsBpadB
outrageousBoilsB	offensiveBodorBnastyBnailBmultiReplace\""B
moviegoersBmodal</li><li>MachineBmileBmediumBmattersBmartinBmanipulativeBloopB	literallyBlikableBlettingBkeyB
just-rightBitalianBironBinspirationalBinsightsBinformationB
individualB	hydratingBhref=\http://mcdnBhorribleBheart'sBharvardBharmlessBhappilyBhappenBhandkerchiefB	hackneyedB
guaranteedBgroundBfrustratingBfrontedBframesBflashyBfinishesBfightBfibersBfestivalBfearsBfairBfabricsBeventB	enlivenedBenjoyingBenjoyedB	endeavorsB
enchantingB
empoweringB	emergencyBembellishmentsBembellishedBdoubleBdisasterBdirtyBdirectsBdirectorialBdesperatelyBdesiredBdecadesBdamnedBcutsBcrewBcraftingBcoversBcoveredB
convictionBcontactBcomplicatedBcoconutBclosureBclicheBchrisB	chemicalsBchanBceramicB
cautionaryBcarryingBcarriesBcardiganBcandyBbroughtBbottomsBboredBbiteBbecomingBbalancesBattachedBassortedBaromatherapyB
apparentlyBantibacterialBanimalB
adolescentBaccentedBMadeBLightweightBH</li><li>PlasticB%D</li><li>Plastic</li><li>RecommendedBD</li><li>9BD</li><li>4B<p>CompleteB
<li>Women:B<li>Juniors:B</p><p><ul><li>SizeB</p><p>&nbsp;</p><ul><li>Missy:B</p><p>&nbsp;</p><ul><li>94%B</p><p>&nbsp;</p><p><b>StylingB9%B41''B16â€“18B14''B12px;\"">ShippingB12''B
"<p>OutfitB	"<p>GreatB"<p>CutBwriter/directorBwoodyBwitchBwiseBwetB	well-madeBwackyBvisceralBvintage-inspiredBusuallyBultra-modernBuB
trimestersBtrickBtookBtimelyBthat'llBtestBterryBtenderB	technicalBteacherBtalesBsympathyBsweetiesBsurrealBsuggestsBstylusBstylizedBstruggleBstrengthBstrapBstockBstereotypesBsplitBspinBspentBspareBsonBsnowBsnapsBsloppyBslimB
sleevelessBskillsBsketchB	sidetailsBshorts</li><li>Top:BserumBsavingBsappyBruffledBrogerBrichlyBrhythmsBresonantB	resonanceB	repellentBreliesBrecycledBrapBrainBpurpleBprofileB
pretensionBpresenceBpredictablyBpolyester</li><li>Skirt:BphotographyBpatienceBpatchesBparkerBparentBpants:BpaidBoversizeBovercomeBover-the-topBoff-shoulderBobservationsBnylon</li><li>MachineB	naturallyBmusclesBmugBmixedBmistakeBmilitaryBmikeBmetaphorBmentionB
mainstreamBmadBlow-keyB
low-budgetBlogicBlocksBlendingBlavenderBlateBlandBlacyBknownBkillerBkids'BjusticeBjunkBjasonBjacketBjBitemsBissueBinternal</li><li>Resolution:B
intentionsB	intensityBingredients:BinfusesBincreasinglyBillustrationsBhybridBhonestyBheyBheldBheightsBheadsBharryBhappenedBhandsomeBgunsBgrabBgr_grammBglossyBfront-facing/BfridaBfrankBformatBfootballBfoodBflawlessBfisherBfishB
first-timeBfingerBfindingBfiguresBfightingBfierceBfamiliesBfableBextendedB
expressionBexperiencesB	evocativeBenvironmentBempathyBemergesBeffectivelyBeasy-to-wearBeasierBdreamyBdreamerBdrawsB	divertingBdisplay</li><li>Storage:BdelightsB	decoratedB	dangerousBdamnBdaintyBcuttingBcuffsBcube</li><li>WorksBcruelB
crisscrossBcreationBcotton</li><li>Pants:Bcool-weatherB	continuesBcontainsBconstantBconsiderBconnectB	confusingB
confidenceB	conditionB	concernedBclothesBcloserBclichéB	christmasBchooseBchineseBchillsBcharmsBcenturyBcelebrationBcapeBbudgetBbrilliantlyBbrandBbottoms</li><li>100%BboostBboho-inspiredBblendsBblastBblairBbladeBbeneathBbelongsBbaseballBbalancedB
backgroundBb-movieBanswersBangstB	americansBadult'sBadoreBadapterBadamBactsBaccomplishedB	SupersoftB
Street</i>BPlusBMickeyBBrightB<p>TreatB<p>TopB
<p>ElevateB<p>CelebrateB	<i>SesameB<i>Frozen</i>B.</p><p>&nbsp;</p><ul><li>Prewashed</li><li>90%B</p><p>&nbsp;</p><ul><li>FitsB</p><p>&nbsp;</p><ul><li>5B.</p><p>&nbsp;</p><p>&nbsp;</p><ul><li>IncludesB</li><li>Ingredients:B80B65%B57%B3XLB3DB2XLB'theB"<p>WhenB"<p>WeB
"<p>CreateB"<p>BoldByokeBwowBworld'sBworkedBwoodBwomen'sBwindBwillingBwheneverBwell-meaningBweightBwastedBvoiceBviscose</li><li>MachineBverveBvariousB
unpleasantBunfoldsB
undeniablyBtwiceBturningBtriteBtressesB
transcendsBtraditionalBthey'llB	techniqueBtearsBtBsuspensefulBsuperbB	sunscreenB	stylisticBstuckBstrictlyB	stitchingBstealingBsqueezeBsquareBspoofBsouthernBsouthBsolondzBsmugBslouchyBsitcomBsinkB	sillinessBside-ruchingBsickBshort-sleevedBshockBshapesBserviceBserveBself-consciousB	selectionB	seeminglyBseedBsecretsBseasideBsaturdayBrusticBrulesB	rewardingB
revelatoryBrevealBresponseBrespectBrentBrenoBremindsB
relentlessBreleasedBreleaseBrelaxB
relativelyB	recognizeBrecipeBreceiveB	real-lifeBradiantBquietlyBpumpkinBprintsBprimeBpreppyBpoorlyB	polyamideBpoemBplottingBpityBphilosophicalBpersonaBpensBpeaceBpaulBpants</li><li>Tee:BpaletteBpairedBonscreenBofficeBnurseryBnuancedBnotionBnauticalBnature-inspiredBnationalBmusicalBmoisturizingBmodestBmockBmineralsBmildBmereBmenaceBmayhemBmatchedBmaleBmakersBmainBlovableBlong-lastingBlockBlivedBliteraryBlifelessBlessonBlargerBlanguageBkungBknowingBjonesBjealousyBinternal</li><li>Camera:B	instantlyBinoffensiveBineptBimproveBi'llBi'dB	holocaustBhillBhighlightedBhearB	happinessBhandleBgrittyB
gracefullyBgelBgangBfunniestBfront-facingB	forgottenBflowBfishingBfinestBfilmmaker'sBfalseBfailureBfacesBexoticBexcessBescapismBescapeBequalBendeavorBembarrassmentB	elegantlyB	elaborateBdudeB+dry</li><li>Imported</li></ul><p>&nbsp;</p>BdrugsBdrawnBdramaticallyBdotsBdotBdocumentB	diversionBdistanceBdiscreetB	disbeliefB	desperateBdegreeB	decoratesBdecal:BdealingBdarklyBdancingBcynicalBcutiesB	curiosityBcreditBcredibilityB	creationsBcotton;BcostumesBcorrespondsBcontrivancesBconquerBconBcomplementsB
compassionBcompactBcommonBclassicallyBclass=\""video-text-linkBcheesyBcheerBcharlieBchargeBcharacterizationsBchaoticBcasual-wearBcapableBbuildingBbuffsBbubbleBbrutalBbrushesBbrotherBbrokenBboreBboldlyBbittersweetBbiggerBbelovedB
barbershopBbBaskB
amateurishB	alongsideB
all-in-oneBalabamaB
adult-sizeBacrylic</li><li>MachineBacrylic</li><li>HandBaccountBXS=00-0BXS=0-1BXL=15</li><li>Women:B'USA</li></ul><p>&nbsp;</p><p>&nbsp;</p>BSimplyBSelectBS=3-5BS=2-4BNote:BM=7-9BM=6-8BLilyBLifeBL=11-13BL=10-12BIrishBCurvyBContextualSpellingBConstructedBCitiB	<p>OutfitB<p>GearB<p>DressB</p><ul><li>96%B</p><ul><li>95%B</p><ul><li>1X=B</p><p>&nbsp;</p><ul><li>63%B</p><p>&nbsp;</p><ul><li>27''B5\B59%B51B5'7''B5'10''B43%B2048B16</li><li>SizeB1536</li><li>Storage:B'70sB"<p>ShowcasingB"<p>PutB"<p>OfferingB	"<p>IdealBwroteBwhomB
waterproofB
watercolorB-wash</li><li>Imported</li></ul><p>&nbsp;</p>"BwarsBvulgarBvitalBvirtuesBvictimsBvampireBunsentimentalBunnecessaryBunlikelyBunintentionalB
uninspiredBunderstandsBunB
ultralightBtrimmedB	trimesterBtrend-savvyB	trappingsBtrappedB	traditionB	traceableB
tourmalineBtourBthrowingB	throwbackBthirdB
theatricalBtheatersB
terrifyingBterriblyB	teenagersBteenageBswimB
supportingBsuperblyBsuitedBstyle=\""font-size:BstringBstretch</li><li>97%BstreetBstirringB	startlingBstand-upBspotBspiteBspellBspeaksBspeakBsparklyBspandex</li><li>Knit;BsororityBsoggyBsoftlyBslowlyBslip-onBslasherBskipBsimple-to-matchBsignificantB	shouldn'tB
shimmeringBsheenBsensualBsendBsecureBsecondsBseamlessBscoresBscaleBsayingBruleBroundBrisesBrip-offBrhythmB
rememberedBregalBreducesBreduceBrecordBrealizeBrealismB
protectiveBproceedingsB
princessesBpreventsB	pregnancyB	precisionBpowBpotentiallyB
positivelyBpopularBpopsBpolyester</li><li>Bottoms:BpolkaBplastic</li><li>RecommendedBpetiteB	permanentBpenBpatheticBpastelBpartiesBpalsBpalB pages</li><li>Imported</li></ul>BoverlongBoutstandingBoptimalBoffbeatB	obnoxiousBnoteBnotchBnoiseBnight-lightBmuscleBmovedBmodelBmodal-video-link\"">SeeBmissesBminuteB
microfiberB	materialsB	marvelousBmarriageBmadonnaBlyricalBlovingBlistenBliesBlemonBleeBlawrenceBlaughingB	landscapeB	knowledgeBkitchenB	kissingerBins-delBinherentB	ingeniousBindustryBimpostorBimbuesBimbueB	hydrationBhusbandBhunterBhopkinsBhonestlyBhoffmanBhip-hopBhidingBheroesBhemsBhealthBhe'llBhandheldBhalfwayBguessingBgood-naturedBgoblinsBglamBgirlyBgiftedBgenresBgagBfruitBfrontalBfreedomBfrailtyBforeignBforcesBfollowsBfoamBflyB
flutteringBflowerBflauntBfinaleBfightsBfieldBfewerBfeetBfeastBfatalBfailBfactorBextractsB	exploringBexploitationBexpertlyBexpectationsB	existenceBexecutedBexceptionalBeraseB
enthusiastB
enthusiasmB	entertainB
enterpriseBenglishBengagedB	endlesslyB	emboldensBearthBearlierBdustB	dry-eraseBdropBdrollBdriveBdrawingBdragsBdivineBdisplay</li><li>Resolution:B
disappointBdieBdevastatingBdeserveBdeftBdefineBdeceptivelyBdavisBdashingBdamagedBcropBcredibleBcrapBcostumeBcontextB
constantlyB
collateralBcloyingBclichedB clean</li><li>Imported</li></ul>BclassicsBclarityBcgiBcatBcartoonsB	carefullyBcarefreeB
capabilityBcanvasBbuyBbustlingBbreathBbraceletBboxBbourneBbottoms</li><li>Top:BbottleBbitterBbiggestBbeatB	basicallyBbanalBbambooB	ballisticBballBautoBastonishingBassuredBartworkBarrivesBarmBapparentBanywhereBanswerBanneBalloverB	advantageBactualB	actressesB
activewearBachievementB[theBXL:BUSABProBNon-OEMBL</li><li>Plastic</li><li>WipeB%H</li><li>Plastic</li><li>RecommendedBH</li><li>PaperBGrammarBDVOBBox</li><li>IncludesBAirB<p>WhimsicalB
<p>UpgradeB<p>Stretch-enhancedB<p>SlipB<p>ShowcaseB<p>SendB<p>BoldB</p><ul><li>FitsB</p><ul><li>90%B)</p><p>&nbsp;</p><ul><li>Knit</li><li>95%B</p><p>&nbsp;</p><ul>B</li><li>ActiveB97%B50B40B18-20B17''B14-16B128B12-14B"<p>PerfectB"<p>LetB"<p>InB"<p>HelpB	"<p>EnjoyB"<p>EnhanceB"<p>DesignedBâ€”BwrapsBwoodenBwitlessBwinsBwindtalkersBwindowsBweren'tBweirdlyBweekBwatchedB
washingtonB"wash</li><li>Imported</li></ul>"""B	wardrobesBviscose</li><li>HandBvanBupperB	unnervingBunintentionallyB	unfocusedBunderstandingB	uncertainBtypesBtrendBtrekBtreatsBtrayBtrashyBtrashB	transformBtoysBtownBtouchedBtonsBtongue-in-cheekBtimingBticketBthrowsB	thrillersBthrillBthematicB	testamentBtendsBteethBteensBtaskBsweaterBsurefireBsunnyBsubtletyBstrikesBstrainBstiffBstatusBstarringBstagedBspiritsBsourBsoothesBsoonBsomberBsoderbergh'sBslyBslimmingBslapBsimultaneouslyB
simplicityBsilenceBshowtimeBshorts:BshootingBshootBshockingBshakersBsettlesBservingBsequelsBsensitivityBself-indulgentBselfBseemedBseagalBscreenwritingBscratchBscorseseBsatisfyBsandraBsafelyBsadlyBrushBrun-of-the-millBrousingBroteBroseBrobinBrhinestonesBresidue</li><li>MadeB	resemblesBreplaceWithoutSep\""BreliefBrefusesBrecoveryBrealizedBreactionBrandomBputtingBpushesB
punctuatedBprofessionalBproductB	presentedBprepBpredecessorsB	practicalBpotentBportraysB	ponderousBponderBpoliceBploddingBpleasingBplaytime-spanningBplanetBpianistBphysicalBperverseBperBpencilsBpathosBpathBpatBpartialBparableBparaBpants</li><li>Top:Bpaint</li><li>RecommendedBoutingB	outdoorsyBone-of-a-kindBolderB	obsessionBobservationBnonethelessBnon-stretchBnightsB	nightmareBneverthelessBnecessarilyBneatBnarcB	mysteriesBmyselfBmultipleBmuddledB	movementsBmouthBmouseBmonstersBmomentumBmod-chicBmixingBmissedB	miserableBmindsBmillerB
metropolisBmetalBmeritBmemoriesBmeasuredBmeasureBmeantBmasterfullyB	masterfulB	manhattanBmanagedBmajesticB	maintainsBmainlyBmagneticBmadnessB	luxuriousBlusciousB	ludicrousBlovesBloungingBlookedBlocalBlipsBleggings</li><li>100%BlaterBlaneBkickBkeptBkaufmanBjumpBjackBiranianB	intuitiveBinstallmentB
innovativeB	indulgentB
incoherentBinaneB
impressionBimplausibleBhuntingB	humorlessBhughB	householdBhips</li><li>Woven;Bhips</li><li>96%BherselfBhem</li><li>48%BheardBhandmadeB	halloweenBhBguessBgrown-upBgrimBgreyBgrandeurB	graduallyBgoslingBgoryBglowingBgenerousBgatheredBgardenBfunctionB	full-termBfrighteningBfree-flowingB	fragranceBfocusedBflaredBfeature-lengthBfateBfasterBfancifulBfamousBexceptionallyBeuropeanBensuringBemBelevateBelbow-skimmingBelbowBelastic-backB	easygoingB
easy-goingB	easy-careBdysfunctionalBdudBdropsBdragonB	downrightBdomesticB
disjointedBdisappointedBdinosaurB
differenceBdestinedBdestinationBdemonstratesB	deliciousBdebrisBdeadpanBcustomizationBcurlingBcupsBcultBcubeBcrochetBcrayonsBcraftersBcradleBcouchBcotton</li><li>Shorts:BcoordinationBconveysBconveyBconversationB	conundrumBconsistentlyBconsideringBconsciousnessBconfiguringB	competentBcompatibilityB	committedB
comfy-coolBcomfy-casualBcomfortsBcomedicB	collectedB	co-writerBclumsilyBclooneyBclipBchuckleBchoppyB
child-sizeBchelseaBcharismaticBchannelsBcategoryBcarryBcarefulBcameBcalmingBcBburnsBbuiltBbotherBbohemianBbodysuitBbodiceB
blossomingBbloodyBblankBbeltBbeastBbaby'sBavoidsBathleteBasksBartsyBarmsBappearBapparelBanywayBamusedBamountsBambitionBalasBaidBaheadBafraidBadventuringBadornBadmireBadamsBabuseBabsurdBVBSpandexBS/M:BLycraB8H</li><li>Vinyl</li><li>Self-adhesive</li><li>RepositionBForBD</li><li>RecommendedBBarbieBBaby'sBApparelB
<p>StripesB	<p>SpreadB
<p>PlayfulB	<p>FlauntB
<p>ChannelB<p>BrightenB<p>AdornB</p><ul><li>Juniors:B.</p><p>&nbsp;</p><ul><li>Prewashed</li><li>60%B'</p><p>&nbsp;</p><ul><li>FastDryâ„¢B</p><p>&nbsp;</p><ul><li>70%B</p><p>&nbsp;</p><ul><li>26''B%</li><li>Nontoxic</li><li>RecommendedB</li><li>AcrylicB88''B6sB61%B36B33B32GBB20-22</li><li>SizeB17%B15</li>B'60sB	"<p>UsingB"<p>StripesB"<p>RefreshB
"<p>GhoulsB
"<p>ExpandByuBwriteBworkoutsBwishingBwilsonBwilde'sBwickedlyBwhollyBwhaleBwestBweeksBweather-resistantBwarningBwantingB	wallpaperBvolumeBvoicesBvisibleBvelocityBvagueBurgencyBunimaginativeB	uniformlyBunforgettableBunflinchingBuneasyBundoubtedlyB
undercoverBunconvincingBuncompromisingB
ultracomfyBtwo-toneBtuxedoBtsaiBtruckBtroopersBtriedBtricksB	tragediesB	trademarkBtopicBtoolsBtipBtheatreBtepidBtemptingBtee:BtautBtapeBsweptBsweetestBswayingBswallowBsustainsBsuspectBsupplyBsuppliesBsupernaturalBsun'sBsunB	sumptuousB	sufferingBsuccumbsBstuntBstuartB
structuredBstretch</li><li>MachineBstretch</li><li>92%BstrandsBstraightforwardBstiltedBsticksBstephenBsteelBstealsBspunkyB
spider-manBspiceBsoulsB	solid-hueBsolarisBsoftenBsoberingBsmilingBsmellBslitsBslackBskirtedBsitsB
sisterhoodBsilentBsignsB	signatureBshowerBshadowsBsensibilityBseesBsecuresB	secretaryBscreenwritersB	screamingBscopeBschwarzeneggerBsceneryBsavedBsaraBsantaBsaluteBsafetyBsadnessBrussianBromanBrollsBritchieBriseBripeBriceBreturnsB
resolutelyBresistB	representB
repositionBremainB	religiousBrelentlesslyBrelaxingB
relaxationB
referencesBreachingBraunchyBrateBranksBqBpurelyBpulledB	protectedBprogramB	producersBproduceBprivateBpressureB	preshrunkBpreachyBpracticeBpracticallyBpotterB
positionedBpolyester</li><li>Tee:BpokemonBpointedB	poignancyBplottedBplanBpitchBpicBpianoBphoneBpepperBpeekBpayoffBpayingBpatientBpartlyBparodyBparaben-free</li><li>MadeBpal'sBpaintedBpacksB	overblownBoutlineBoutdoorsB	organizedBoptionBopportunitiesB	operationBonly-insBon-the-moveBoils</li><li>MadeBodeBoccasionB	objectiveB	notoriousBnoticeBnosesBnon-stopBnoirBnobleBnicholasBnetBnautical-inspiredBnamedB	murderousB
moviegoingBmoore'sBmoodyB
monotonousBmodal</li><li>HandBmistBmiracleB
minimalistBmiddle-agedBmessyBmessesBmedicineBmeaninglessBmealBmatthewBmatineeBmarvelBmarketBmarkers</li><li>Packaged:BmBloverBlousyBlive-actionBlistsBlistlessB	lightningBlightlyBlifetimeBlife'sBleatherBleadenBlayer-readyB	laughableBlady'sB
lacklusterBlabelBknotBknewBkilledBkapurBk-19BjoeBjimBislandBis]BironyBironicBirishBinvitingBinsomniaB	innocenceB
infectiousBindoorsB
incredibleBincludeBincisiveB
improbableB
importanceB
impeccableB	imitationBill-conceivedBhumourB
horrifyingBhopingBhopedBhollowBholeBhilarityBhigherB	high-techBhigh-performanceBhideBhiddenBherzogBhem</li><li>UPFBhem</li><li>Knit</li><li>60%Bhem</li><li>85%BheavilyB	heatheredBheartbreakingB
headphonesBhauntedBharshB	happeningBhandfulBhallmarkBgumBgreaterBgrayBgratingBgoreBgodardBgloryBglibBgigglesBgenerateBfuzzyBfull-lengthBfringedBfreaksB
foundationBform-flatteringBfluffBfloorBfloatingBflavorBfinishedBfingersBfilmeBfellowBfeatherlightBfancyBfameBfallingBfakeBfabric</li><li>100%BexquisitelyB
expressiveB
expositionBexplorerBexploitativeBexpenseBevokesBevidenceB
everywhereBentryB	enjoyablyBengageBenB	emptinessBempowermentB
emphasizesBemergeBembroideredBembraceBelevatesBelephantB
electronicBedgesBeddieBecksBeasy-to-pairBdvdBdudesBdualBdrugBdreamersBdownerBdoodleBdongBdonBdocumentariesBdisney'sB	dimensionBdigBdidacticBdiameter</li><li>PlasticBdesperationBdespairBderridaBdepthsBdenyingB	demandingB
deliveringB
delicatelyBdecidedBdecals</li><li>Sheet:BcutenessBcurve-flatteringBcupBcryBcrudeBcriticalBcraftyBcotton</li><li>Contrast:B	convincedBconductBconcentratorBcompressionB
commentaryBcomedianBcomBcoherentBcoffeeBclunkyBclosetsBcloselyBclingBcleansB	christianBchosenBchillerBchickBchevronBcheeseBchargedBcharacter'sBchancesB
challengesBcatchesBcarriers</li><li>2BcaresB	capturingB
can't-missBcamoBcallsBcaineBburstBburiedBbuoyantBbrushedBbruceBbriefBbottle</li><li>MadeBborrowsBbitingBbiopicBbenigniBbenefitsBbedroomBbeachyBaustinB
attractiveBastonishinglyBaspectsBasianBartistryBartificeBartfullyBartfulBarrayBareaBaquaticBappropriateBanticsBanthonyB	america'sB	ambiguityBamBaloeBallegoryBalcoholBain'tBaimsBaimedBagingBadventure-readyBadhesiveB
additionalB
activitiesBaccommodatesB	accessoryBaccentuatesB	absurdistBabandonBUV-BUVBUSA</li></ul><p><bBUSA</li></ul></p>BTsumsBTsumBTheyBTVBStBSideBShippingBLittleBItaly</li></ul>B#H</li><li>Vinyl</li><li>RecommendedBGeneration</li><li>IncludesBDisney-PixarBDayB"D</li><li>Plastic</li><li>RequiresB,D</li><li>Plastic</li><li>Imported</li></ul>BD</li><li>Imported</li></ul>"BCozyBACB<p>SoftB
<p>EnhanceB<p>EmbellishB
<p>DelightB!</p><ul><li>Prewashed</li><li>60%B</p><ul><li>65%B</p><ul><li>55%B</p><p>&nbsp;</p><ul><li>SB</p><p>&nbsp;</p><ul><li>OneB%</p><p>&nbsp;</p><ul><li>MeasurementsB</p><p>&nbsp;</p><ul><li>55%B</p><p>&nbsp;</p><ul><li>28B</p><p>&nbsp;</p><ul><li>25B</p><p>&nbsp;</p><ul><li>15B$</p><p>&nbsp;</p><ul></ul><p><b>SizeB.</p><p>&nbsp;</p><p>&nbsp;</p><ul><li>Juniors:B
</li><li>5B
</li></ul>B98%B90%B62''B56%B3X:B32%B2ndB27%B26\B17</li><li>Women:B160B12â€“14B12WB000B'emB"<p>VibrantB
"<p>UnlockB"<p>SupersoftB	"<p>SheerB	"<p>RelaxB"<p>GetB
"<p>GentlyB"<p>EmbraceB"<p>CoordinatingB"<p>AnyB"<p>Bâ€¢BzhangByoursByearningBya-yaBwritersBwrapBworryBwooB	wonderingBwilcoBwhisper-softBwhat-to-wearBwell-writtenBwell-intentionedBwell-craftedBwelcomesB
weaknessesBwatercolorsB,wash</li><li>Imported</li></ul><p>&nbsp;</p>B*warranty</a></li><li>Imported</li></ul>"""BwannabeBwandBwallaceBvitalityBveinBveersBvapidBvaluableBupsBupdatesBunsatisfyingB
unoriginalB	unlikableBuniquelyB
unfamiliarB
unfaithfulBundoneB
underlyingB
undeniableB	undefinedBuncomfortablyBunableBunabashedlyBtunic'sBtuckB
tremendousBtransporterBtransitionsB
transformsBtrainBtraceBtoxicBtoscaBtorturedB	top-notchB	too-sweetBtonyBtoddBtightBtiesBthumbsBthomasBtextBterrorBtermBtenseBtechiesBtasselBtapBtadpoleBtacklesB	sweetie'sB
sweetheartBsweat-wickingBsurroundingBsupervisionB	superstarB
super-softB	sunflowerBsuitBsuctionBsuckB
substituteBsubstantialB	submarineBsublimationBstyle-savvyB	stupidityBstripBstrikeB	stretchedBstretch</li><li>Self:BstrainsBstrainedBstoneBsteveBstationBstartingBstaplesB	stainlessBspringBspontaneityBsplashedBspiderBspecificallyBspacesBsourcesBsoulfulBsorryB
sophomoricBsophisticationBsootheBsomebodyB
soderberghBsnugglyBsnapshotBsmoochyBslumberBslenderBsleepingBskullBskirt</li><li>100%BskimBsketchyBsinksBsinglesBsingingBsinBsimilarBsilverB	shyamalanBshutBshinyBshiningBshinesB	shapelessBshamelesslyBshaggyBshadowBseverBserviceableBserialBsequinBsensorBsensationalBseemingBseatsBseasBscrapeBscoobyBschemeB	scatteredBscaresBsardonicBsarandonBsaneB	sandler'sBsandBsamBsaltsBsailorBsagaB	sacrificeB
saccharineBrowdyBrougeBroomsBrollingB	rodriguezBrobertoBricherBrichardBrevelationsBretro-inspiredBretinaBresponsibleBrespectableB
reputationBrepositionableBrepleteBrepeatedBrentalBrelieveBreliableBreleasesBrel=0\""BrefugeesB	redeemingBreachesBrange:BramblingBradiatesBracialBquick-dryingBquestBquarter-sleeveB	qualitiesBpulseBpullingBpsychologicallyBprotectsB5protection</li><li>Thermo-regulation</li><li>MoistureBprisonB	primarilyBpretensionsBpresentationBpreparedBprehistoricBpraiseBpotB	portrayalBporousBporBponyBpolymerBpolyester</li><li>TeeBpoliticallyBpolanskiBpoisedBplayersBphotographedB
philosophyBphilipBperformBpeakBpatchBpassagesBparanoiaBparadeBparaben-freeBpaintingB#paint</li><li>Nontoxic</li><li>MadeBpageBpacinoBoughtBoptimizeBopsBoliveBohBoffendBoff-dutyB
occasionalB	observantBobjectBnuanceB	nostalgiaBnineBnicklebyBnairBmutedBmust-seeBmooreB	moonlightBmodal</li><li>DryBmixesBmix-and-matchBmirrorsB	metaphorsBmermaidBmenuB
mediocrityBmedicalB	mechanicsBmatureBmarkers</li><li>6Bmanagement</li><li>PartialBmaintainBloyaltyBlosingBlongingB
lonelinessBloftyB	locationsBlived-inBlionB	lingeringBlinenBlimpBlightingBliftBlieBliberalBlettersBletterBlessonsBleighBleggedB	legendaryBlee'sBleanBlastsBlakeBladiesBlBkoreanBkicksBkBjustifyBjoylessBjournalBjewishBjewelryBjersey</li><li>SILVERION+BjackieBjack</li><li>UsageBit'llBirwinBirresistiblyB
invincibleB
introducesBintoxicatingBintimacyBintermittentlyB	interfaceBintentBintellectualB	integrityBinnocentBinitialBinfusedBindependentBinconsistentBinconsequentialBincidentBimprovedBimpliesBimaginationsBillusionBiconBhypeBhydratesBhuppertBhorseBhopesBhopefulBhootBhonorBholmB	hoffman'sBheroineBhem</li><li>Woven;Bhem</li><li>92%Bhem</li><li>78%BhealingBhastilyB	harrowingBharrisBhangingBgraspBglycerinBglueBgloriousB
glitteringBgirls'BgirlishBgimmickBgeekBgathersBgBfuneralBfrillyB	freshnessBfreelyBfranticB
fragrance-BfourthBformerBfordBflowsBfleetingBfirmlyBfinesseBfilterBfilmmakers'BfillingBfiberBfeedingBfeatBfast-dryingBfamiliarityBfairyBfadedBfacialBexposesBexploresBexploitBexceedinglyB	evaporateB
eucalyptusBericBenormousBendureBempireB
embroideryBellingB	elizabethBeducationalB	educationBeditedBeatBeastwoodBearnestnessBearBeagerBdriesBdreamingBdrapesBdramasBdragonsBdrabBdownbeatBdoubleReplaceBdosesBdoorBdoodlesBdonovanB
disposableBdisplaysB
displayingBdishwasher-safeB	discoveryBdiscoverBdisappointmentBdieselBdevelopsB	developedBdeucesBdetail</li><li>MachineBdeskB	describedB	depressedBdependsBdenimBdemonsBdemandB
definitionBdefiningBdeedsB	decidedlyBdecideBdealsBdeadlyBdaytimeBdarkerBdarkenBdareBdahmerBdBcynicismB	curiouslyBculturesB
crossroadsBcrossBcroppedBcriticsBcriminalBcrassBcrackedBcouplesB	countlessBcornyBcornerBcopB
convolutedBconvenientlyB
controlledB	contrast:BcontoursB
consistentB
consideredBconsequencesB
connectionBconfusedBconfirmsBconfigurableBconcertB	computingBcompression</li><li>72%BcomposedBcomplicationsB
complexionBcombinedBcolor-poppingBcollarbone-baringB	collapsesBcobbledBclunkerBclubBclockstoppersB	climacticBclichédBcleverlyBcletisBclaustrophobicBclassyBcitrusB
citronellaBcinema-themedBcinema'sBcinchBcho'sBchicagoB
cheerfullyBchateauB	charmlessBcharacterizationB	certifiedBcellBcaughtBcastroB
cartoonishBcaringBcapturedB
cap-sleeveBcannesBcalmBcageBcabinetBby-the-numbersBburstingBbugsBbuddyBbrutallyB
broomfieldBbroad-spectrumBbritneyB
brillianceBbrideBbrianBbreaksBbreakingBbowsBboundBboogieB
boisterousBbogusBblinkBblindB	benigni'sBbenefitB	believingB	beguilingBbeginBbearBbeach-inspiredBbasisBbafflingBawareB	availableB	audaciousBattalBatopBathletesBassassinBaspirationsB
artificialBarrivalBappleBantwoneBanimeBangryBamy'sBamuseBamidB	ambitionsB	ambiguousB	amazinglyBalmondBallowedBalikeBalbumBaggressivelyBagentBafter-schoolBaffleckBadviceBachieveBaccurateBaccessory-lovingBaccessorizingBaccessorizeB
acceptableBacademyBWi-FI</li><li>IncludesBVerizonBStrongBStretch-kissedBSlipB
SILVERION+B	Patrick'sBOh-soBMachineB	LightningBIsrael</li></ul>"BIncBElmo'sBDesignedBD</li><li>PaperBD</li><li>Imported</li></ul>BCotton-blendBCottonB
CompletelyBColorBCDMAB<p>StayB<p>PutB
<p>EmbraceB<p>CozyB<li>Imported</li></ul>B</ul>B!</p><ul><li>Prewashed</li><li>90%B</p><ul></li><li>SizeB$</p><p>&nbsp;</p><ul><li>Side-ruchedB</p><p>&nbsp;</p><ul><li>80%B</p><p>&nbsp;</p><ul><li>52%B</p><p>&nbsp;</p><ul><li>28''B</p><p>&nbsp;</p><ul><li>1XLB</p><p>&nbsp;</p><ul><li>12B*</p><p>&nbsp;</p><p>&nbsp;</p><ul><li>SideB</li><li>SPFB</li><li>Imported</li></ul>B</li><li>HandB</b>B96%B93%B8-pinB640B63%B60B49%B46%B44''B4-ozB37''B30</li><li>Fragrance-B3-ozB2X:B28W</li><li>90%B250B21-23</li><li>SizeB21B20â€“22B20''B1970sB17-19B17B16''B13-15B1136</li><li>Camera:B101B1%B%B"<p>TakeB	"<p>SolveB"<p>SlipB"<p>PrintedB"<p>It'sB"<p>EmblazonedB
"<p>DefineB"<p>BrightenBéBzip-upBz-boysByouthByoungerByardByaBwould-beBwould'veBwisdomBwilliamBwilderB	wholesomeBwendigoB	weirdnessBweddingsBweavesBwaveB	wash</li>Bwarmed-overBwalletBwalkedBwBvolatileB
visibilityBvincentBversusBverbalBvastB	variationBunwatchableBunicornBunfortunateBunconventionalBuncomfortableB
unbearableBumaB
turtleneckBturkeyBtubesBtruthsBtriangleBtravelerBtranslationB	transcendBtrailerBtrafficBtoutBtossedBtoiletBtoesBtoday'sBtoastyBto-doBtitularBtitlesBtimerBthrownBthroatsBthreadsB	thousandsBthoughtsB
thankfullyB	terroristB
tendernessBtendBtenBtechnicallyBtearB	tarantinoBtanksBsympatheticBswingingB
sweatshirtBsweat</li><li>StainBswashbucklingBsuspendBsusanBsupremeBsuperheroesB
super-coolBsundanceBsulfate-BsucceedBsublimeB
subcultureBstudentsB
strugglingBstronglyBstretch-fitB	strengthsBstreetsBstreamlinedBstreaksBstickerBstevenson'sBstellarBsteersBsteepedBstealBstatement-makingBstainsBstaggeringlyBstagesBspunkBspotsBsplashesBspendsBspectacularlyBspa-likeBsoundlyBsoullessBsordidB	solutionsBsoloBsoldiersBsnipesBsnappyBsmoothlyBsmootherBsmarty-pantsBsmartlyBsmarterBsmallerBsmacksBslubBslogBskirt</li><li>Top:B
skillfullyBskillfulBsizzleB	sincerityBsimoneBsilky-smoothBshoulder-baringBshortcomingsBshiftingBsheridanBshelfBsharingBsharesBshakyBshakers</li><li>2B	sexualityBsensibilitiesBsellBself:BseeksBseekingB	seductiveBseasonalBseamB	scrapbookBscottBscotlandBscoredB	schneiderB	schaefferBscentedBscareBsavesBsaucyB	satiricalBrussellBrumorBrufflyBroutinesBrootingB
rollerballBroll-tabBrockingBrobBriverBriskBringsBrewardedB
revelationBrevelB
restrainedBresidueB	repressedBremotelyBremindedBremindBrelateBrejuvenatingBrejectedBrehashBregardB
reflectionBreflectB	redundantB
redemptionB	recordingB(recommended</p><p>&nbsp;</p><ul><li>100%BreasonsBreadiesB	ravishingBramsayBraiseBrageBradicalBrBquittingBquirksBquentinBquarterBqualifyB
quadcopterBpuzzlingB
psychologyBproperlyBproofB	prominentB
profoundlyBprobeBprintingBprincess-themedBprimingB	preciselyBpoweredBpostBpossibilityB
positivityBport</li><li>UsageBpornBpolyester</li><li>Top:BplymptonBplushBplot'sBplightBpleasurableBplayfulnessB	playdatesB#plastic</li><li>Imported</li></ul>"BpitfallsBpipeBpinchBpileBphthalate-free</li><li>MadeBphotoBphonyBpetBpersonalitiesB
perfectionB
perceptiveBpercentB
pedestrianBpeculiarBpdf\"">Plus"BpayneB	patternedBpatchingBpasticheBpassionsB
passionateBpassingBpassesBparadisoB
paper-thinBpalmaBpaisleyBpaintersBoverheadB	overcomesB	outfittedBoutfitsB	ourselvesBornateBopensBopennessBopaqueBones'Bone-coatBoliverBoctopusBobservedBobjectsBnumerousBnuancesBnoyceBnottingBnotableB	nostalgicB
nominationBnobodyBno-fussBnewcomerBnervousBneonBneighborhoodBnaturalisticB
mysteriousB	musiciansBmotivationsB	motivatedBmothmanBmorvernBmoresBmorallyBmonsoonBmoldBmoisturizerB
moisturizeB	modernizeBmobilityBml</li><li>MadeBmiredBminionsBmineral-richBmindsetBmillionBmetaphoricalBmendesB
melancholyBmckayBmartialBmarsBmarquisBmanufacturedBmannersBmannBmajorityBmaidBmagnificentBmachismoBmacabreBlyricismBlushBluridBlunchBlunacyBluckyBluckBlucasBlowerBlow-heatBlovinglyBlove'sBlosB loop</li><li>Imported</li></ul>"BlongestBlocalesBloadBlivenBliterateBliteralBlimitsBlilyB	lightnessBlight-heartedBlife-affirmingBlet'sBlesserBlegacyBlavishBlaughedBlapsesBlandmarkBlanBlaidBlacedBlabuteBlaboredBknockoutBkindaBkidmanBkiddieB	kaufman'sBjuvenileBjungleBjoyousB
journalismBjotBjonahBjollyBjerryBjeanBjarBjaneB	isolationBirresistibleBinvigoratingBinvestBintroductionB	interviewBinternationalB	intenselyBink</li><li>RecommendedBinhalerBinhabitBinfuseBinformativeBinfomercialB	influenceB
infidelityBinexplicablyB
inevitableBindividualsBindianB	incessantBin-your-faceB	impressesB	impressedBimpressB	immenselyBimmediatelyBimaginedBignoreBhypnoticB
humidifierBhugelyBhugBhref=\http://wwwBhowardBhotelBhorriblyB
hopelesslyBhongBhomespunBhokumBhittingBhintsB	highlightBhibiscusBheroicBhenryBhem</li><li>93%Bhem</li><li>70%Bhem</li><li>62%BhelpedBhealBhe'dBhawnBhatBharderB	haphazardBhanekeBhandledBhandcraftedBhamperedBhalf-heartedBhairsBgutsBgrossBgrin-generatingB
gratuitousB
grapefruitBgracesBgottenB
goodfellasBgongBgoldBglucoseB
gloriouslyBgingerBgiggle-worthyBghostsBgentsBgeniusBgenderB	geek-chicBgearBgarbageBgangsBfundamentalsB	functionsBfreemanBfreddyBfranceBframedBfoulBfortuneBforteBforgiveBforeverBfoolBfoiblesBfoam</li><li>RecommendedB
flourishesBflourishBfloridBflimsyBflashesB
flashbacksB
flamboyantBfitfullyBfingeredBfillsBfighterBfiercelyB	fictionalBfenceBfeathersB
feardotcomB
fast-pacedBfashionablyBfashion-inspiredBfascinationBfarrellyBfarmBfan-favoriteBfailingBfailedBfadeBfacileBextraordinarilyBexteriorB	exquisiteB
explosionsB	explosionBexploredB
experimentBexperiencedBexpectationBexistentialBexistB
exhaustingBexcitedBexcessesB	exceptionBexaggeratedBeverlastingBeveningBevaporationBetcBessenceBequilibriumBepisodicBenvironmentalBenthusiasticBenthrallingBentertaininglyBenterB	enigmaticBenigmaB	enhancingBengineerBenergizeBenemyBenduringBencouragingB
encouragesB	encounterBenchantmentBemploysBembracesBembellishmentBelusiveB	elongatedBegoyanBeggBeerieBeccentricityBeasy-fittingBeaselBearsBdyingBdyeBdutyB
durabilityBdumbed-downBdubiousB<dry</li><li>Imported</li></ul><p>&nbsp;</p><p><b><b>ShippingB1dry</li><li>Imported</li></ul><p>&nbsp;</p><p><b>BdrivesBdrivenBdrivelBdressesBdreadfulBdonningBdogtownBdogsBdiverseBdivaBdistinguishedBdistantB
disgustingBdisappointinglyBdirtBdirectBdinnerBdestructionBdescribeBdepictsB	dependingBdependB	departureBdenisBdemonstrateBdementedBdefinesB
decorativeBdecorationsBdecadeBdazzlesBdaughterBdannyBdangerBdadBdaBcurve-complimentingBcuriousBcrisisBcreditedB	creaturesBcoveringB	courtroomBcostnerBcoolestBcookingBconvinceBconvictionsB	conveyingBconversationsBcontemplativeBcontaminatingB
conflictedBconfessionsBcondescendingB
concoctionB
conclusionBconcernBconceitBcomputer-generatedBcomprehensiveB
complimentB
complementB
comparisonB	companionBcomoBcoastal-coolBclueBclipsBclingsB
clevernessBcleaner</li><li>16BciaB	chronicleBchoBchinaBchillB	childhoodBchewBcharmerBcharlesBchampionBchalkboardsB
chafe-freeBcenteredB	celluloidB	celebrityBcelebratoryBcarriedBcarpenter'sBcardsB	cardboardBcapsBcapacityBcampsBcampingB
camp-readyB
camouflageB
calculatedB	button-onB	butterflyBburstsB
bump-readyB	bullock'sBbuildsBbucksBbristlesBbriskB
brightnessBbrendanBbreathtakingB	breathingBbreathesB	brainlessBboxingBbouquetBborrowedBborrowBbootBbonesB	bollywoodBbogsBbogdanovichBboatsBblownBblack-and-whiteB	biographyB biodegradable</li><li>RecyclableBbindingBbillBbikeB
big-budgetBbetrayalBbetBbesidesBbenBbelievabilityBbeholdBbeatsB	basicwearBbarryBbarrelBbarkBbarBbandsB#bandages</li><li>Imported</li></ul>BbalmBballsBbagsBbag</li><li>12''BbabiesBawfullyBaweBawardBautomaticallyBauthorBattractBattention-seekingBassemblyBaspiresBartyBartist'sB
articulateBappropriatelyBappreciationB
applicatorB	appallingBanybodyBanimatesBangleBangerBangelsBangelBand/orBanchoredBanalyzeBanachronisticBampleB
altogetherBallowingBallen'sBall-naturalBaliensBalertBalBairflowBaimlessBafricanBafloatBaffectionateBadventurousBadmitBadequateBadaptationsBactionsB
accuratelyBaccuracyB	absurdityBWonderB
V-necklineBUseBStretch-blendBStockBSouthern-inspiredBSouthBSidetailBSide-ruchingBRuchingBOrganicBMcQueenBItaly</li></ul>"BH</li><li>RecommendedBEachBDurableBDisney'sBDeckedBDIYBChoiceBBreakerâ„¢BAwardB	<p>You'llB<p>ThinkB<p>SupersoftB	<p>SmoothB	<p>She'llB<p>PowerB<p>LayerB
<p>InspireB	<p>InfuseB	<p>DivertB<p>DecorateB
<p>ConquerB	<p>BrightB	<p>BestowB<p>AmpB
<p><p>ThisB<i>gameB</p><ul><li>Body:B</p><ul><li>1B</p><ul><li>B.</p><p>&nbsp;</p><ul><li>Prewashed</li><li>50%B</p><p>&nbsp;</p><ul><li>9''B</p><p>&nbsp;</p><ul><li>8''B</p><p>&nbsp;</p><ul><li>58%B</p><p>&nbsp;</p><ul><li>32B </p><p>&nbsp;</p><p><b>Note:</b>B(</p><p>&nbsp;</p><p>&nbsp;</p><p><b>SizeB</li><li>95%B</li><li>100%B%</li></ul><p>&nbsp;</p><p><b>ShippingB</i>withB94%B81''B76''B76B54%B500B50+</li><li>93%B48B47%B3XL:B300B3-DB25\B22%B20â€“22</li><li>SizeB19''B19%B15''B14</li><li>100%B14%B11%B06''B'n'B'iB"<p>WrapB
"<p>ToppedB"<p>TopB"<p>There'sB"<p>Stretch-kissedB"<p>SplashedB"<p>SpeciallyB"<p>ShoulderB"<p>SaturatedB"<p>Rub-a-dub-dubB
"<p>PamperB"<p>LongB	"<p>LightB	"<p>He'llB
"<p>EnsureB"<p>EnlivenedB"<p>ElevateB	"<p>DressB
"<p>DolmanB
"<p>DeckedB
"<p>DazzleB	"<p>ComfyB"<p>ComfortableB"<p>CelebrateB
"<p>CasualB
"<p>BrightB"<p>BeB"<p>AsB"<p><p>AB…BzipperBzhang'sBzealB
year-roundBxanthanBwriter'sBwreckBwrappingBwowedBworryingB
worry-freeB*works</a></p><p>&nbsp;</p><ul><li>IncludesBworkout-enhancingBwoo'sBwollterBwitnessBwitherspoonBwillisBwildeBwhistleBwhinyBwesternBwells'BweepBweek'sBweb-slingerBwearabilityBwealthBwaydowntownBwavesBwastesBwarfareBwalterBwakeBwahlbergBvitaminBvisitBvirtueBvillainBviewedBvictimBviaBvezBveteranBversionsBveraBventureBvelvetBvanityBvaguelyButilizesBuselessBusefulBurgeB up</li><li>Imported</li></ul>"""BunwieldyB	unusuallyBunpredictableBuniverseBuniversallyBuninvolvingBunforcedBunexpectedlyB
undisputedBunderwrittenBunderscoresBundercutB
uncommonlyB
unassumingB	two-pieceBtwinsBtwine</li><li>160BtuneBtruthfulBtrustyBtrustBtripsBtrilogyBtreeBtreadsBtransformationBtransferBtradeBtowardsBtoutsBtoutingBtossBtoppedBtitledBtieredBtiempoBthousandBthirstyBthey'dBthermometerBthermalBtherapyBtheoriesBthematicallyBthatâ€™sBtexturedB	terrorismB
terminallyBtelegraphedBtees</li><li>60%BteemingBtee</li><li>Necklace:Btee</li><li>Button-up:BtediumB
tearjerkerBteaBtaylorBtastefulBtangledBtallÍ¾BtalkyBtailoredBtag-freeBsymbolicBswingsBsweepBsurfingB	supremelyB
supposedlyB	sunny-dayBsunlightBsunkB
sun-lovingBsummer'sBsufferedBsufferBsuddenBsucksBsuckingBsuccessfullyB	subtitlesBsubplotsBsuBstumblesBstudsBstudentBstrongerBstrokesBstripsBstretch</li><li>75%Bstretch</li><li>70%BstorytellerBstoppedBstolidBstitchBstingB	stillbornBstearateBsteamBstatesBstarterBstarkBsquirtB	squandersBspunB	sprightlyBspreadBspot-onBspongeBsplendidBsplashyBspitBspiral-boundBspillsBspikeBspellbindingBspeed:BspeculationBspecificBspearsBsparksB	spaghettiBspaciousBsoybeanBsoreBson'sBsolutionBsolid-coloredBsolemnBsoftensBsoft</g>BsoccerBsoberBso-soBsnakeBsluggishBsloganB	slightestBslideBslapdashBskyBskirtsBsistersBsisterBsinisterBsingularBsingBsignificanceBsicklyBshrillBshrewdBshownB	showcasedBshoulder-exposingBshorts'BshorterB	shortallsBshootsBshoddyBshocksBshimmerBshiftsBshenanigansBsharkBshapedB	shamelessBshamBshadowyBshadesBsewnBsevereBsetupBsettledB$settings</li><li>Imported</li></ul>"Bsettings</li><li>HangingBsessionsBsessionBseriousnessBserBsentenceBsentBsensesB	sensationBsellingBself-deprecatingBseldomBseldahlBseinfeldBsectionBseasonsBsearingBsealBseBscrubBscript'sBscreensBscreamsB
scratchingBscottishBscience-fictionBschmidtB	schmaltzyBscathingBscarfBscarcelyBsaylesBsavageB	satisfiesBsatinB
sanctimonyBsalon-qualityBsalmaBsakeBsailingBsadisticBsaddledBrunnerBruinsBrugBrosemaryBromanekBrohmer'sBrohmerBrocksBroamB	road-tripBrisingBrigidBridiculousnessBrichnessBrewardsBreviewBrevealedBresurrectionB	restraintBrestfulBresponsibilityBresourcefulB	resortingBresonateBresistsBresinBresidentB
resemblingB
resealableBrequireBreplacedBrepetitionsBremovedBreminiscentB	remindingB	reluctantB
regardlessBrefreshBreflectsBrefinedBreelBrecommendationBreceivesBrecallsB	reappliedBreadableBratingBramBralphBraisesBrainyBraglan-styleBracesBracersBquiltersBquieterBqueensBqueen'sBpyrotechnicsBpushBpurposefullyBpuppyBpunkB
punishmentBpunchyBpumpBpulpyBpulpB	pull-awayBpryorBprurientBprovidedBprovedBproportionsB
propheciesBproperB
propagandaBprofessionalismBproductionsBproducesBproceedsBpristineBprimaryBpretendBpressBprepareBpregnantBpreferBpredictabilityBpreciseBprayB	pratfallsBpotencyBpostcardBpositionBposingBposhB
portrayingBportrayBpompousBpolyester</li><li>Button-upB
polyester;Bpoly</li><li>MachineBpolicyBpoleB
polanski'sBpokesBplungingBplotsBplotlineBplodsBpleatingBplatesB0plastic</li><li>Spiral-bound</li><li>RecommendedBplastic</li><li>MadeBplacedBpiquantB	pineappleBpilotBpigmentsBpiffleBpicture-readyBpiccoliBphthalate-freeBphotosBphonesB
phenomenalBpeskyBperoBpenaBpedigreeBpearlBpeacefulBpaxtonB	pathologyBpastelsBpartnerBparker'sBpants</li><li>Vest:Bpants</li><li>Shirt:BpanBpalpableBpaleBpages</li><li>RecommendedB!pages</li><li>Imported</li></ul>"BpaddedBpaBpBozpetekBoverwrittenBoverwhelmingBovershadowedBoutrightBoutfit-pairingBouterBoutdoorsmanBoutageBosBopinionBoperatesBopeningsB
one-linersB
old-schoolBol'BokayBodysseyBodorsBoddsBoceanB	obstaclesB
obsessionsBobscureB
obligatoryBnãoBnylon</li><li>HandB	numbinglyBnumbingB	nourishesB	notebooksBnote:</b>&nbsp;ThisBnortonBnormallyBnormalBnontoxic</li><li>RecommendedBnonstopBnonsensicalBnijinskyBnicksBnewbornsBnervyBnervesBnerveBnerdyBnemesisB
needlesslyBneatlyBnaughtyBnationBnarratorBnakedBnailsBnachtweyBmythicBmyersBmustyBmustardBmundaneB	multiplexBmudBmuccinoBmtvB
motivationBmotionsBmosaicBmortonBmoodsBmonteBmonochromaticBmonitorBmomBmodestlyB
modern-dayBmodeBmobBmisogynyBmishmashBmisfireBmischievousBmisanthropicBminorityBminimalBmineralBmind-numbinglyBmillionsBmilieuBmightyBmibB	mess-freeBmeritsBmentallyBmemoirBmemberBmelBmeetB
mechanicalBmeatB
meaningfulB	mcgrath'sBmaximumBmaxBmawkishBmavenBmatteBmassiveB	masculineBmasBmaryBmarryBmarriedBmarkers</li><li>WaterBmarkers</li><li>RecommendedBmarigoldBmapBmanipulationBmanicB
managementB	malkovichBmalcolmBmakeoverBmaintainingB	maelstromBmL</li><li>Ingredients:BlyingBlustBlumpBlowbrowBlow-voltageB	low-lightBlopezBlooselyB	loose-fitBlong-windedBlitBlistingsBlining:BlimitBlimanBlikingBlikeableBlighterBliftsBlicenseB
liberatingBliarBlewisBlensBlengthyBlearningBleaksBlbsB	laughablyBlaugh-out-loudBlast-minuteBlarkBlapBlanesBladylikeBlaborB	kosminskyBkongBkissingBkillsBkiddosBkickingBketchupBjuniorBjumbleBjuddBjoysBjoyfulBjordanBjoltingBjewsBjessicaBjayBjarringBjapanBjaggerBjacquotB	irregularB
ironicallyBinvolveBinviteB	invisibleB	inventionBintermittentBinteractiveBintellectuallyB	insuranceB	insultingBinsultB	instinctsBinsipidBinsectBinsanityBinnuendoBinlineBinjectB
inflatableB	infantileBinexplicableBinertB
improvisedBimpressivelyBimportantlyB
impersonalBimpenetrableBimpartB
imaginableBilluminatingBillBignoredBidiotsBidiosyncraticBidiocyBianBiPodBhustonBhurtBhurleyBhumidityB
humanizingBhudlinBhref=\https://wwwB!hours</li><li>Imported</li></ul>"BhostBhospitalBhorsesBhornB	hopefullyBhomesBholyBholderBhokeyBhippie-chicBhighestBheritageBhemlinesBhem</li><li>Knit</li><li>92%Bhem</li><li>High-performanceBhem</li><li>98%Bhem</li><li>75%Bhem</li><li>64%Bhem</li><li>58%BhelmerBheatherBheatedB
heartbreakBheadbandBhaynesBhartleyBhardwoodBhardwareBhannibalBhangersBhaneke'sBhandlingBhand-paintedB
half-bakedB
gyllenhaalBgunBguideBguestBguardBgrowthBgroupsBgroovyBgrislyBgreene'sB	greatnessBgreaseBgraveB	gratitudeBgradeBgothicB
gorgeouslyBgoofballBgoodwillBgoodnessBgood-heartedBgoalsBgoalBglycolBglycerylBgloveBglossBgloomyBglamourBgiftsBgermanBgeniesB	generatesBgearsBgearedBgarmentBgalsB
futuristicBfutileBfunctionalityBfun-graphicB
fun-filledBftBfrighteninglyBfriendshipsBfreneticBfreakyBfratBfraserBfranklyBfragileBfosterBforwardBforestBforcefulBfootBfollyBfollowedBfolkBfocusingB foam</li><li>Imported</li></ul>"Bfoam</li><li>Imported</li></ul>BflutteryBflutterB	floundersBflipBfleshB
flatulenceBflailingBflaccidBfizzBfishyBfish-out-of-waterB
first-rateB
fine-pointBfiennesBfestBfemmeBfeministBfelineBfeelingsBfeedingsBfeatherweightBfeather-lightBfavorsBfaveBfauxBfathersBfataleBfashionistaB	fashionedBfar-infraredB	fantasiesBfacingB
fabulouslyBeyreB	exuberantB	extensiveBextendsB	expressesBexploitsBexperimentalBexpectsBexpandsBexistsB	exhaustedBexcruciatingB	exclusiveBexcelsBexamineBevidentB
everyone'sBethnicBetherealBestrogenBestherBestablishedBescapistBeraserBepisodesBepicsB
entertainsBensuesBenrichedB
enormouslyBenlighteningBenjoysBenglish-languageBengagesB	enduranceBendedB	encourageB	emperor'sBemergingBembodiesB	elsewhereB
eloquentlyBeloquentB
eliminatesB	eliminateBelectricBegoBeditsBedBeccentricitiesBeasy-onB
easy-matchB	easy-liftBeasy-as-pieBearthenwareBearnsBeach</li><li>RecommendedBdynamicsBdusterBdumasBdukeBdryer:B8dry</li><li>Imported</li></ul><p>&nbsp;</p><p>&nbsp;</p>B,dry</li><li>Imported</li></ul><p>&nbsp;</p>"BdrownsBdrivingBdriverBdrewBdreckB	dragonflyBdrB	down-homeBdouglasBdoublesBdopeyBdoldrumsBdivideBdisturbinglyB
distinctlyBdistastefulBdishesB	disguisedB
discussionB	disarmingBdignityBdickensBdiaryBdianeBdevelopmentsBdevelopBdeterminationBdetachedBdestinyB
despicablyBdesk-to-dinnerBdescriptionB
depressionBdenzelBdenialBdemographicB
delectableBdejaBdegreesB
definitiveBdefiesBdeepestBdeckedB	deceptionBdecencyBdecals</li><li>Assembled:BdebateBdearBdazzleB	daydreamsBdassBdarnedBdarknessBdaresBdanielBdanaBdamonBcustom-likeBcustomB
curved-hemBcurve-lovingBcurve-complementingB
curmudgeonBcureB
cumbersomeBculkinBcrystalB	crochetedBcristoB
creepinessBcreatureBcreamyBcraneBcraigBcraftsmanshipBcrackB	cozy-chicBcourtBcountyBcounterpartsBcottonyB!cotton</li><li>Imported</li></ul>BcostBcorrectnessBcordBcopyBcopsBcoppolaBcontroversyBcontrollingBcontrivanceB	contrastsBcontradictoryBcontainB
conspiracyBconservativeBconnectionsBconjuredBconfrontBconditionerB
conceptionBcompulsivelyB
compromiseB
compatibleBcommerceBcomicsBcomedy-dramaBcomboBcombatBcombB	columbineBcollectivelyB
collectiveBcollarbonesBcollageBcohesiveBcogentBcodeBcluelessBclownBcloudsBclinicalBclimaxBcliche-riddenB
clear-eyedBcleanupBcleanedB!clean</li><li>Imported</li></ul>"BclauseBclaudeB	classroomBclassic-fittingBclaimsBcircleBcipherBcinematographerB
cinderellaBchurchBchuckle-inducingB
chroniclesBchristopherBchoreographedBchopsBchokesB	chocolateBchill-chasingBchiefB	chestÍ¾BcherishB	checklistBcheatedBchasesB
charitableBchan'sBchamberB	challengeBchafingBchabrolBcerebralB	centuriesBcellsB
celebratedBcatholicBcastsBcarvey'sBcarveyBcarolBcarmenBcapriBcanonBcannyBcampyB
campgroundBcallowBcallingBcallarBbustBburningBburnBbumpsBbump-lovingBbullBbuddiesBbudBbuckmarkBbrosnanBbrimsBbreathtakinglyBbreatheBbreastBbreadthBbraveBbrashBbrainyBbrainsBbracingBbouncyBbossBbornBbordersBborderBboneBbondingBbombBboggedBbodilyBbodiesBbluesBblockbustersBblessedBbleakBblatantBblameBbladesB
big-screenBbettyBbettanyBbestieBbenzotriazoleBbellBbelievesBbelievedBbeingsBbeijingBbehan'sB
beforehandBbedtimeBbedBbecameBbeach-lovingBbayBbathtubB
basketballBbartlebyBbarrelsBbardBbankBballotBbackedB	backdropsBawkwardnessB	awkwardlyBavaryB	authorityBauthenticityB
australianB
audience'sBaudacityB	athlete'sBat-homeB	assembledBasleepBartisticallyBarriveB	arrestingB	argumentsBargueBarchivalBararatBappreciatedB	appliquesBappetiteBappealsBantidoteBangularBangst-riddenBanemicBamiableBamateurishlyBamalgamBaluminum</li><li>RecommendedBalternativeBalternatelyBall-timeBall-inclusiveB
alienationBalienBaliceBalbeitBalarmBalanBakinBaimBahBafterschoolBaficionadosB	admissionB	admirablyB
adequatelyB	addressesBadapter</li><li>5BadaptedBadBactor'sBactive-readyBacrylic</li><li>LEDBacknowledgesB	acid-freeBachingB	accordingBaccompanyingBaccessory-friendlyBaccessB	abundanceBabsurdlyBabsurditiesBabsorbsBabsoluteB[it's]BXL=15</li><li>Womenâ€™s:BWhenBW</li><li>ThreeBV-neckB USA</li></ul><p>&nbsp;</p><p><b>BTheirBStretch-blendedBSpillingB
Spider-ManBSeaBScreenBSPFBPicassoBPeteBPersonalBPatrolBParisianBPairBOrangeBNaturalBNationalBLED-backlitBLCDBHerbalBHelpB*H</li><li>Paper</li><li>Imported</li></ul>B"H</li><li>Earthenware</li><li>HandBGuestsBGreatBFrenchBElsaBEasyBEasterBEBDoraBDisney-themedBD</li><li>Scale:BD</li><li>CottonBD</li><li>ABSB
CymbopogonBCitrusBCatBCare</li><li>Ingredients:B
CaliforniaB
BreathableBBrandBBoastingBArmorBAddBAAAB<p>SweetB<p>Star-spangledB<p>PureB
<p>ImproveB	<p>FrillyB<p>FlutteryB	<p>FloralB
<p>FlatterB
<p>FashionB<p>EncourageB<p>DonB
<p>CravingB
<p>ComfortB<p>ColorB
<p>ClassicB<p><bB<b>ShippingB</p><ul><li>Self:B</p><ul><li>Knit</li><li>100%B</p><ul><li>30''B&</p><ul></ul><p>&nbsp;</p><ul><li>100%B</p><ul></li><li>95%B</p><p><b>StylingB</p><p><b>S<b>izeB</p><p>&nbsp;</p><ul><li>UPFB</p><p>&nbsp;</p><ul><li>9B</p><p>&nbsp;</p><ul><li>85%B</p><p>&nbsp;</p><ul><li>6''B</p><p>&nbsp;</p><ul><li>4''B</p><p>&nbsp;</p><ul><li>16B</p><p>&nbsp;</p><ul><li>10''B&</p><p>&nbsp;</p><ul></ul><ul><li>100%B</p><p>&nbsp;</p><p>B</p></p>B</li><li>WinnerB</li><li>TransmitterB</li><li>SizeB</i>bandagesB98B95B	90-minuteB88%B85%B84B80%B8-ozB75%B75B69''B64''B600B5XB53%B5-ozB4everB450ÂºB45B42B3dB38B37B32\""B28W</li><li>SizeB28WB26%B256B24â€“26</li><li>SizeB23%B22</li><li>Knit;B22-24B20thB2002'sB1960sB19B18;B17</li>B16GBB150B14</li><li>Imported</li></ul>"B14;B12px;\"">SizeB10\B	100-sheetB05''B'whatB'aB
"<p>UpdateB
"<p>StyledB	"<p>StyleB
"<p>She'llB"<p>SendB	"<p>LivenB	"<p>LayerB"<p>LaceB
"<p>InvokeB"<p>InspiringB"<p>InspiredB
"<p>InfuseB"<p>DelicateB"<p>DashingB"<p>Cotton-blendB"<p>ContrastB	"<p>ColorB"<p>ClassicB"<p>ChannelB"<p>CasuallyB"<p>BreathableB	"<p>BittyB"<p>BeautifulB"<p>BabyB"<p>AmpB"<p>AllBzippyBzipBzigzagBzhaoBzeroByummyByouthful-lookingB
youngstersByiddishBxtcBwwiiBwrists</li><li>MediumBwristsB	wrenchingBwovenBwoundsBworshipBwormsB	workspaceBworking-classBwool</li><li>HandBwoodsyBwoodlandBwondersBwoefullyB	withstandBwishy-washyBwiserBwisemanBwiselyBwipingBwipeBwintryBwillowBwildlifeB
wildernessBwhodunitBwho'veBwhineBwhimperBwhereasBwheelsBwhat-ifBwerewolfB	well-wornBwell-directedBweightyBweighsBweepyBwebsiteBweavingBwaxBwatersBwater-resistantBwatchesBwashesBwashedBwartimeBwarriorsBwarriorBwarm;BwanesBwanderB	wallowingBwallopBwalksBwakingB	vulgarityBvuBvonB
voluminousBvolumesB
voice-overB
virtuosityBvintage-chicB	vincent'sBvillainsB	vignettesBviewsB
vietnameseBvietnamBvideosBviceB	vibrantlyBvibranceBvergeBverBventsBveniceBveneerBvendorBveinsB
vaudevilleBvastlyBvaryingB	variancesBvaleBuserBurgentBupgradesBupgradeBupcycledBupbeatB8up</li><li>Imported</li></ul><p>&nbsp;</p><p>&nbsp;</p>"B*up</li><li>Imported</li></ul><p>&nbsp;</p>BunwantedBunsurprisingBunrelentingBunpretentiousBunmemorableB	unmatchedBunlocksB
unknowableBunits</li><li>LowBunitedBuniteBuninterestingBuninitiatedB	unhurriedBunfulfillingBunfulfilledBunfoldB
uneventfulBuneaseB
underwaterB
underneathB
underminesB
underlinesBunderdogB
underbellyBundeadBuncannyBunbelievableB	unabashedB	ultracoolB	typicallyBtwistyB	twirlableBtwirl-readyBtwentyBtv'sBturtleBturgidBtunesB
tumultuousBtumultB
tulip-backBtugBtuckerBtubularB	troublingBtroubledBtropesBtroopsBtrickyBtrialsBtrialBtremorsBtreatiseBtreatedB	treasuresBtraysBtravelsB
travelogueBtravailsBtrapsBtrapBtransportingBtransparentlyB
transitionBtransgressiveBtransformedBtrailB
traditionsBtrackingBtowelBtouristsBtoteBtossesBtortureBtorporBtornBtopperBtopicalBtoo-cuteBtonightBtonalBtolerateBtoeBtissuesBtissueB
tiresomelyBtime-savingBtimBtileBtie-dyedBtickingBticketsBthrustB	throwawayBthrowB
three-hourBthree-dimensionalBthreatB
threadbareBthirtyBthirstBthinlyBthing'sBthey'veBthesisBthermolon</li><li>HeatsBtherapeuticBthemedBthankB	texturingBtexturesBtextbookBtensionsBtenorBtendencyBtemperaBtee</li><li>100%Btee'llB	tediouslyBtechnoBteasingBteachersBtatteredBtastelessnessBtartBtargetsBtarget=\""_blank\"">Six-monthBtarget=\""_blank\"">SeeBtapsBtappingBtamborBtallBtalksBtailor-madeBtailBtacticsBtackyBtabletopBtabbingBt-shirtBsymmetryBswipeBswimsBswimfanBswiftlyBsweetenBswedishBsweat</li><li>100%BswearB
swaggeringB	suspectedB	survivorsBsurviveBsurvivalBsurroundingsBsurroundB	surprisedBsurgesBsurface</li><li>SeamlessBsurface:B
sure-to-beBsuperficiallyBsuper-comfyBsunsetBsundayBsuitablyB
suggestionB
suggestingBsudsyBsuckedB	succeededBsubtextBsubstitutesBsubstandardB
subsequentB
sublimatedBsubconsciousBstylistBstylingsBstyle=\display:BstumbleBstultifyinglyBstudB	strugglesB	strongestB
striped-upBstringsBstrictBstretch-knitBstretch-cottonBstreakB
storylinesBstonesBstockedBstinkerBstimulatingBstickingBstewBstevensBstereotypicalBstereoB steel</li><li>Imported</li></ul>BstearicBsteadyBstasisBstarryBstarredBstaringBstandingB	stand-outBstalkerBstakeBstains</li><li>100%BstainedBstainBstagyBstableB	squirtersBsquarelyBsquaredBsqBsprecherB	sprawlingBspousalBsporadicallyBspoonB
spookinessBspontaneousBsplicedBspiralBspinsBspinningBspineBspikedBspicedBspeedyBspeculativeBspecimenBspecial-effectsBsparklesBspanishBspandex</li><li>Lace:Bsoul-searchingBsorvinoBsortsBsorelyBsomething'sB	solondz'sBsolidlyBsoleBsolaceBsoaringBsnazzyBsmoothsBsmith'sBsmithBsmile-inducingBsmashBsmartestBsmackBslouchy-chicBslitBslipsBslippingBslipperyBslimmerBsleepersBsleeperBslackersBskirt</li><li>60%BskinsBskin-baringBskiesB
skateboardBsizes</li><li>Packaged:Bsize:BsixthBsimple-mindedB	similarlyBsillierB	silk-likeBsightsBsidewalkBsicknessBshtickBshredBshorts</li><li>Polo:Bshorts</li><li>Button-up:BshoreBshopB
shockinglyBshockedBshiversBshirt:BshipsBsheets</li><li>10''BsheetBshe'llB
shatteringBshatnerBsharperBsharedBshapingBshanghaiBshakingBshakespeareBshakesBshakerB	shainbergBshadyacBseverelyBset-upBset'sBsequin-studdedB	septemberB	separatesBseparateB
sentimentsB
sensualityBsensor</li><li>AccelerometerB	semisheerB
self-stickBself-importantBself-consciouslyBself-congratulatoryBself-awarenessB
self-awareBself-absorptionBself-absorbedBseekB
secondhandBseasonedBscroogeBscriptsB	scriptingBscriptedBscrewdriverB	screwballB	screeningBscreen</li><li>Storage:BscreamB
scorsese'sBscorpionB	scientistBschemesBscentsBscenicBscattershotBscariestBscantBscamsBsatisfactoryBsatiricBsanctimoniousBsailorsB
sacrificesB	sabotagedBruthlessBrutBrushedBruralBruledBruinedB
ruggednessBrudeBrubberBrubBrough-and-tumbleBrottenBrotatingBromancesBrockstarBrocketBrobotsBroadsBrivetedBrivalBriskyBripsBrippingBringuBrifeBrice'sB	reworkingB	revulsionB	reverenceBreunionB
retro-coolBrestsBrestoreBrespectsB
respectfulBresolutionsB
resistanceBrescueBrepresentedB
repetitionB	renderingB	remembersBrememberingBremediesB	relevanceB	releasingB	relativesBrelativeBrelatingBregretBregisterBreginaldBreggio'sBreggioB	regardingBrefuseBrefillBreeseBrecyclesBrecordsBrecognizableBreceivedB	rebellionB
reassuringB
reasonableB
rearrangedBreapBrealmBrealizationBreadilyBreachedBrazorBrayon</li><li>Pants:Brayon</li><li>Contrast:BratedBrashesBrapidBrankBrakeBraisingBraisedBrah-rahBradarBracyBracistBracingB	racerbackBrabbit-proofB
quirkinessBquickly</li><li>BreathabilityBquickieBquestionableBquaintBquaidBpuzzleBput-togetherBpushingBpushedBpurposelessBpurportsBpungentB
punctuatesBpunchingBpunch-drunkBpuffBpuerileBpsychoBpsychicBprowessBprovokeBprovingBprotagonistsBprospectBproseBpromoteBpromisinglyB
profundityBprofessionalsBprofaneBproducerBproblematicBproBprizeBprismBprints</li><li>57%B
principalsB	primitiveBprevailsBpretendsBpreteenBpreserveB
presentingBpredicamentBpranksB	powerpuffBpowderBpovertyB	potboilerB
postmodernBpostingBpostersBposterBpost-productionBpost-pregnancyBposeBporesB
popularityBponcho'sB(polypropylene</li><li>Imported</li></ul>BpolyethyleneBpolyester</li><li>TopBpolyester</li><li>Lining:Bpolyester</li><li>Jeans:B
poeticallyBplummerBpleatedB
pleasantlyB
playwrightBplaytime-readyBplayground-readyBplayerBplantBplannerBplainlyBpitifulBpitchedB
pint-sizedBpineBpillBpiece'sBpicture-perfectBpickedB
phthalatesBphotographsBphenoxyethanolB
petrolatumBpet'sB	pervasiveB	pertinentB
persuasiveBperryB	perpetualBperpetratedBperkyBperilsB
performingB	performedBpeploe'sBpeople'sBpenetratingBpendantB	pdf\"">60Bpdf\""BpauseBpaulineB
patterningBpastimeBpassableBpartnersBparisBparanoidBparabensBparBpaper</li><li>RecommendedBpants</li><li>60%B	panoramicB	panderingB	paintingsB	painterlyB
paintbrushB*paint</li><li>Nontoxic</li><li>RecommendedBpaint-by-numbersBpainsBpaeanBpadsBpadreBpackageBowesBoweB
overwhelmsBoverviewBovertlyBoverstuffedB
overstatedBoverrunBoverproducedB
overlookedBoverlappingBoverbearingBouttakesBoutshineBoutrageB"outlets</li><li>Imported</li></ul>BoutletsB
outlandishBoutdatedBoutcomeB	outburstsBotherworldlyBoscar-winningBorwellBoriginsBorgasmB
organizingBorganizationBordersBoptionalBoptimumB
optimisticB
oppressiveBoperaticBoperatedB	opera-ishBopenedBopen-mindedBoopsBongoingB	one-trickBolivierBoleanderBokBoil</li><li>Paraben-BoffsetBofficinalisBoff-puttingBoedekerkBoddestBocean-themedBocean-inspiredBobscuredBo'fallonBnuclearBnoveltyBnovakBnotificationsB	nothing'sB
noteworthyBnotes:BnotablyBnoseBnonexistentB	non-toxicBnoisyB	no-frillsBninetyB	nighttimeBniftyBnicolasBnickB	nicholsonBnicheBnicestBnewtonB
newfangledB	newcomersB	neverlandBneuroticB
nettelbeckBneilB	neglectedBnegativeBnecklace</li><li>Necklace:B
naturalismBnativeB
nationwideBnaryBnarrativelyB
narcissismBnapoleonBnamesBnaiveBnair'sBmásB	mythologyBmuseumBmurphy'sBmulticoloredBmullBmuddyBmovie-goingBmoves-with-youBmountingBmountedBmountainBmotownBmotorsB	motoristsB
motorcycleBmotorBmoto-inspiredBmotivesBmothersBmoroseBmonumentBmomsBmollyBmoldyBmodestyB
moderatelyBmodeledBmodal-video-link\""Bmodal-blendBmobileBmiyazakiB	mistakingBmisogynisticB	misguidedBmiseryBmiramaxBminionBminimumB	minimizesBmiller'sBmillBmilkBmiikeBmidnightBmichellBmichelBmexicanBmethodBmetaphysicalB	messengerBmesh</li><li>MachineBmerryBmercyBmerchantBmeowB	mentalityBmcdowellBmatteiBmatBmassesBmassagerB	masochismBmasalaBmarvelouslyBmarshallBmarkers</li><li>PlasticBmarkers</li><li>Box:Bmarkers</li><li>5BmarginalBmarcusBmarchingBmanneredB	manifestoB	maneuversBmanagingBmanagement</li><li>ReflectiveBmametBmalaiseBmakerBmajidiBmaidsBmade-for-tvBmaddeninglyB	maddeningBmadcapB	macdowellBlyocellBluxuriouslyBlusterBlurkingBlunaticBluminousBlucy'sBlow-rentBlover'sBlouisBloseBlordBloose-fittingBlong-sleevedBlondonBlolitaBlogBloadsBloadedBloBlivensBlittle-knownBliquidBliottaBlingersBlinensBlinen</li><li>MachineBliltBliloBlillardBlilBlightestBlightenB.light</li><li>Imported</li></ul><p>&nbsp;</p>"B light</li><li>Imported</li></ul>Blife-enhancingB
liberationBlevyBletdownBless-damagedBlesBleonardBleonB	leisurelyBleisure-chicBleigh'sB	leguizamoBleggings</li><li>TunicBleggings</li><li>60%BlegalBledBleavenedBlearnedBleapingBleBlayBlawsBlavishlyBlatterBlatinBlathanB
late-nightBlasB
landscapesBlampBlambsBladBlace-upBkwanBknockaroundBknit</li><li>100%B	knee-jerkBklineBkitschBkinnearBkingdomBkindsBkimBkillingBkillersBkillBkieslowski'sBkiddo'sBkid-friendlyBkid'sBkhouriBkennethBkennedyBkeenlyBkathyBkarenBkangarooBkaneBkahlo'sBkahloBjuwannaBjumpsBjumboBjulieBjuliaBjuicyBjuiceBjovialBjottingBjosephBjoltBjolie'sBjoelBjoan'sBjiffyB
jet-setterBjesseBjerkingBjeong-hyangBjenniferBjellB	jelinek'sBjeffreyBjeans</li><li>100%BjazzyBjaw-droppinglyBjanuaryB	jacquot'sB	jackson'sBiwai'sBivansBisleB
irrelevantBiron:BiranBinvigoratesBinventivenessB
invaluableBintricatelyBinto<i>B
interviewsBinterpretationB&internal</li><li>Wi-Fi</li><li>Output:B
interludesBinteractionBintentionallyB	intellectBintactBinsultinglyBinsufferableBinstructions</li><li>Completed:BinstanceBinsiderBinsecureBinsanelyBinsaneB
innovationB	innocuousB
inner-cityBinks</li><li>50%B*ink</li><li>Machine-washable</li><li>AdultB
inherentlyBinfraredB
influencesB
infinitelyB
inexorablyBinescapableB
indulgenceB
indictmentB	indicatesBindexB	indelibleBinconsistenciesBincompetentBincoherenceBincluded</li><li>100%BinclinationB
incendiaryBincarnationB	incapableBinarticulateB	inabilityBimpulseBimprovisationBimpressionsB
impossiblyBimplicitBimplicationsBimaginativelyBilluminationBiiiBignitesBidioticBidiotB
id=\""8\""BhypedBhydratedB	huppert'sBhungryBhref=\https://youtuBhoward'sBhours</li><li><aBhour-and-a-halfB
hot-buttonBhorrorsB
horizontalBhopsBhopelessBhoopBhomemadeBhollywood'sBhollyBholidaysB
hodgepodgeBho-humBho-ho-hilariousB	hitchcockBhistoricallyBhistoricBhips</li><li>95%Bhips</li><li>65%Bhips</li><li>63%Bhips</li><li>50%BhipnessBhingesBhill'sBhilariouslyBhighlightersBhigh-intensityBhigh-conceptBhidesBhicksBhewittBhero'sBhem</li><li>Woven</li><li>95%B.hem</li><li>Thermo-regulation</li><li>MoistureBhem</li><li>RelaxedBhem</li><li>Knit</li><li>96%Bhem</li><li>83%Bhem</li><li>51%Bhem</li><li>33%BheftyBheelsB
hedonisticBheatsB	heartbeatBhearstBheadedBhead-turningB
head-startBhayekBhawke'sBhawkeB
hashiguchiBhart'sBhardyBhardworkingB	hard-rockBhanksB
handsomelyB
hands-freeBhandedBhammerB
ham-fistedBhallB	half-hourBhadn'tB*gyroscope</li><li>Bluetooth</li><li>Usage:Bguy'sBgut-wrenchingB	guaranteeBgrownupsB	grown-upsBgrownBgroundsBgroundedBgroundbreakingB	grotesqueBgrinningBgrindBgrinBgrimlyBgrewB
greengrassBgreedyBgreatlyBgreat-grandsonBgravityBgrandiosityBgrainB	gracelessBgr_8BgooseBgood-lookingBgondryBgoldieBgoldenBgodzillaBgodard'sBglumB	glucosideBglow-in-the-darkBgloverBglobeBglitzBglitter-touchedBglimpsesBglimmerB	gleefullyBgleeBgleanedBglass</li><li>MadeBglaringB	glamorousBgirl'sBgibsonBghettoBgereB	gentilityB
generatingB	generatedBgauzyBgaryBgarmentsBgarciaBgantzBgamesmanshipBgalloBgalleryBgalacticBgal'sBfussBfusedBfurryBfuriousB
functionalBfull-bodiedBfuBfrustratinglyBfrothyBfrolicBfrizzBfriskyBfrielBfridgeBformalBforkBforgivenBforcingB
forcefullyBfootnoteBfootieBfootball-styleBfoolishBfoodsB
fontaine'sBfondnessB	follow-upBflyingBfluteBfluffyBflouncyBfloralsBflirtsBflightBfleur-de-lisBfleeceB
flawlesslyB:flat</li><li>Imported</li></ul><p>&nbsp;</p><p>&nbsp;</p>"BflashingBfirst-classBfiringBfilmingBfiguringBfiguredBfigure-skimmingBfieldsBfetchingBfessenden'sB	ferventlyBfellaBfeature</li><li>AdjustableBfearlessnessBfearlessBfavourB	favoritesBfaultsBfaultBfast-movingB
fascinatesB
fascinatedB	fascinateBfartsBfartBfarcicalBfannyBfanaticBfamilialBfaltersBfallenBfactsBfactoryBfacetBfacedBface-framingBeye-poppingBeye-pleasingBexudeBextremesB
extra-softBextentB	extensionBexposureB	explorersB
exploitingBexplanationBexplainBexpertBexperimentationBexpandedBexistingBexistedB	excessiveBexceedsBexaminesBevokeB	everybodyBeventualBethosBethicsBetherBethanBestablishesBescapesBescapedBerrorsBeroticBerBequalsBepinephrineBenvelopeB	enjoymentBenglandBengineB
engaginglyBendingsBenchantsBemphasisBemissionB	embracingBembarrassedBegoyan'sBeditionB
economicalBeconomicBeco-friendlyBeclecticBeatingBeasy-to-gripB
easy-peasyB
eastwood'sBeastB
earnhart'sBearnedBdÃ©colletageBdvBduvallBdutifulBdurationBdude'sBducksBduckBdryingBdry</li><li>Imported</li>BdrunkenBdrumlineBdrownedBdrownBdroneBdrinkBdreamsâ€”allBdreamedBdramatizationB	dramaticsBdrainedBdozenBdozeBdownwardBdownsBdoverBdougBdopeBdoorsBdooBdollarBdogmaBdoggedB	documentsBdoctorsBdocBdizzyingBdividersB	divertidaB	diversityBdivasB
distractedBdistinctB	distancedBdisquietingBdisplay</li><li>HeartB	dispenserBdismissB	dishonestBdishBdisgustBdiseaseB
discomfortBdiscernibleBdirectlyBdirect-to-videoBdireBdimmerBdiminishingBdimBdiggsBdifferencesBdiedBdie-hardB
dickensianBdickens'BdickBdiazBdiaperB4diameter</li><li>Plastic</li><li>Imported</li></ul>"B
diabolicalBdevotionBdevolvesBdeviousB	determineBdetectsB	detectiveBdestructiveBdestroyB
desiccatedB	deservingBdeservedBderivedBdepressinglyBdepravedB	depictingB
departmentBdenyBdenselyBdenseBdeniroBdeniedBdemonstratingBdemme'sBdeluxeB	delusionsB	delightedBdeliciouslyBdeliberatelyBdefinedBdefeatsBdefeatedB
decorationBdecidesBdecibelB
deceptionsBdecals</li><li>SmallestBdecadentBdeanBdead-endB
day-to-dayBdaviesBdangerouslyBdanangBdaisyBdaftB
cymbopogonBcutterBcurve-accommodatingBcurveBcurseBcurlsBcruellyBcrucialBcrowd-pleaserB	crossoverBcrossesBcrossedBcross-culturalB	crocodileBcriticBcrisscrossingBcrippledBcrimenBcriesB	cremasterBcreepsBcreatorsB
creativelyBcrave-worthyBcrashingBcrashBcradlesBcoxB
courageousBcoupledBcountingBcotton</li><li>Vest:Bcotton</li><li>Button-up:Bcotton/Bcotton-stretchBcotton-modalB
corruptionBcorrectionsBcorrectBcornersBcoordinatesBcooperBcoolnessBcontroversialBcontributionBcontestB
contendersB	consumingBconstraintsBconsistsB	considersBconsiderablyB	consciousB
conscienceBconnoisseursBconnectsBconnect-the-dotsBconjuresBconfinesBconfinedB
confectionB
conditionsB	condensedB
conceptualBconcentratesBcompromisedBcomprehensionBcomplimentsB	complaintB
compensateB
compendiumBcompellinglyBcompareB	company'sBcommunalB
commitmentB	comicallyBcomicalB	combiningBcombinationsB"com/media/content/copy/dyson220728B#com/media/content/copy/Rapid%20TechB=com/media/content/copy/CitySkylineDioramaColoringPage_crayolaB
colorblockB
collinwoodBcollectBcoincidenceB	coherenceBcoenBcodesBcocoaBcockyBcoarseBcoalBco-wroteB
co-writtenBcm</li><li>Storage:BclothBclosingBclosedB	close-upsB
cling-freeBcleanserB	clayburghBclayBclawB
classifiedB	classicalBclass=\video-text-linkBclass=\""gr_BclashingBclashBclareBclaptrapBclaimBcivilBcircusBcircumstancesBcircuitBcirclesBchoreographyBchordBchompBchimpsB	childlikeBchiffonBcherryBchenBchekhovBcheckingBcheatB
charminglyBcharmersB	charlotteBcharacterizedBchapterBchaosB
chalkboardBchainBchaikenBchaiBcetearylBceramic</li><li>HeatsBcelebratingBcedarBcausticB	catharticBcatchingBcat'sB	cascadingBcascadeBcarsBcarpetsBcarnageB	carabinerB
captivatesBcaptainBcapraBcappedBcape-sleeveB	capacity:BcannibalB	candidateBcandidBcancerB
campanellaBcameosB
californiaB	calendulaBcalculatingBcaesarBbylerBbyattBbuttons</li><li>NylonBbuttons</li><li>4''Bbutton-frontBbust</li><li>50%Bbust</li><li>100%BbusBburns'B
burgeoningBbumblingBbulletsBbulbBbuildupsBbuild-upBbugBbuffBbrushstrokeBbruckheimerBbrosBbroomfield'sBbrooklynBbroodingBbroadwayBbritsB	britney'sBbrightly-huedBbridgetBbridgeBbreezesBbreakthroughB	breakdownBbrayBbravuraBbranaghBbrainstormingBboy'sBbowlingBboutsB
boundariesBboughtBbottles</li><li>Ingredients:Bbottles</li><li>5BbotheredBboredomBbonusB	bombasticB	bolsteredBbollBboleroBbodice-ripperBbobB	boardroomBblurryBblowingBblossomBbloomsBblockbusterBbloatedBblaxploitationB	blandnessBblandlyBbizBbitesBbirot'sBbiologicallyBbio-picBbinocheBbillyBbicycleBbergamotBbentBbehanB	beginnersBbeeswaxBbeerBbeatingBbeardBbeanBbeadsBbeachy</i>-keenBbeachcomber'sBbeach-themedBbathroomBbathosBbathersBbaseball-themedBbarry'sBbareBbarbecueBbaranBbanterB	banishingBbanalityB
ballerinasBbaggageBbacteriaBbackupB	backstageBbacksB	backpacksBbackingBbackdropBbabassuBayurvedaBawryB	awarenessBawaitsBautobiographicalB	australiaB	austerityB	auschwitzBaugustBaudioBattention-grabbingBattention-gettingB	attendingBattachBatlanticBathletic-inspiredBastuteB
astoundingBassumingB
assortmentB
associatedBassetBassassinationBaspectBarthouseB	art-houseBarnieB	argentineBareasB	arbitraryBaptlyBaptedBapproachingBappliquÃ©sBapplaudB	appearingB	anti-odorBanomieBannouncementBannaBanimatronicBanglingBandrewBandersonBancientBanchorBanarchicBana'sBamyBampsBamberB	amazementBamateurBamaroBaltarBalphabetBallergyBallegedBalienateBalfredB	alexandreBaidsBagitpropBaggravatingBagendaBagedBafricaB	aestheticB
advertisedBadventure-friendlyBadvanceBadultingBadroitlyBadolescenceB
admittedlyBadaptsBadaptorBadageBaction-comedyBachievedBachesBaccomplishesBaccompaniesB	acceptingB
acceptanceBacceptBabove-averageBablyBabcB[t]heBXL=12BWater-basedBWatchBWarrantyBVanB	UltrasoftBUSA-madeBUKBThermolonâ„¢BStretch-infusedB	StatementBSriBSouthwest-inspiredBSouthernB
SilhouetteBSDABS/MBRateBPotterBPimaBPeterB	PermanentBParisian-inspiredBPanB	Non-stickB
MousketeerBMonsterB
McStuffinsBLycra</li><li>MachineBLurexBLuckBLionBL</li><li>WoodBL</li><li>Pendant:BKorea</li></ul>BKidsBJapan</li></ul>"BHarryBH</li><li>Water-basedB+H</li><li>Paper</li><li>Imported</li></ul>"BH</li><li>LargestBGreekBGB</li><li>RetinaBFourBFastDryÂ®BF</li><li>15BEmeraldBDocBDistributionBDetails</b></p><ul><li>SizeBDetails</b></p><ul><li>NylonBDeadBDarkBD</li><li>TourmalineB+D</li><li>Paper</li><li>Imported</li></ul>"B*D</li><li>Paper</li><li>Imported</li></ul>BD</li><li>Ceramic</li><li>Cord:BD</li><li>AudioBD</li><li>12BCelsiusBCapBBritain</li></ul>"BBatteryBBatmanBAsBAnnaBAnglophilesBAT&T</li><li>2B<p>WriteB<p>WearB
<p>VibrantB<p>StretchyB<p>StockB	<p>SpruceB	<p>SpritzB<p>SideB
<p>SharperB<p>RepresentB<p>RenewB
<p>RelieveB<p>RelaxB	<p>RaglanB	<p>PetiteB	<p>PamperB<p>OfferB
<p>NourishB<p>Moisture-wickingB<p>HitB<p>HaveB<p>FrictionB<p>Free-spiritedB<p>FeelB<p>Eye-catchingB<p>ExudeB<p>EveryB	<p>EnsureB<p>EmboldenB<p>DoraB	<p>DaintyB<p>BustB<p>All-cottonB
<p>AchieveB	<p><i>PAWB<p>&nbsp;</p>B<p/><ul><li>SizeB<i>purr</i>fectlyB<i>andB<i>TheB<i>StarB<i>Minnie</i>B<i>Cars</i>-themedB<i>BlazeB!</p><ul><li>Prewashed</li><li>50%B</p><ul><li>Missy:B</p><ul><li>97%B</p><ul><li>9B</p><ul><li>8B</p><ul><li>61%B</p><ul><li>6B</p><ul><li>58%B</p><ul><li>3B</p><ul><li>27''B</p><ul><li>2B</p><ul><li>15B</p><p><ul><li>60%B</p><p><ul><li>30''B</p><p><ul><li>1XB</p><p><ul><li>100%B)</p><p><b>Features</b></p><ul><li>WickingB</p><p></p><ul><li>100%B </p><p>&nbsp;</p><ul><li>RelaxedB.</p><p>&nbsp;</p><ul><li>Preshrunk</li><li>50%B"</p><p>&nbsp;</p><ul><li>Packaged:B</p><p>&nbsp;</p><ul><li>L=10B</p><p>&nbsp;</p><ul><li>Knit;B</p><p>&nbsp;</p><ul><li>JerseyB</p><p>&nbsp;</p><ul><li>99%B</p><p>&nbsp;</p><ul><li>88%B</p><p>&nbsp;</p><ul><li>73%B</p><p>&nbsp;</p><ul><li>62%B</p><p>&nbsp;</p><ul><li>57%B</p><p>&nbsp;</p><ul><li>39''B</p><p>&nbsp;</p><ul><li>31''B</p><p>&nbsp;</p><ul><li>3''B</p><p>&nbsp;</p><ul><li>29''B</p><p>&nbsp;</p><ul><li>24''B</p><p>&nbsp;</p><ul><li>216''B</p><p>&nbsp;</p><ul><li>18B</p><p>&nbsp;</p><ul><li>13B</p><p>&nbsp;</p><ul><li>11''B</p><p>&nbsp;</p><ul><li>1''B </p><p>&nbsp;</p><p><ul><li>SizeB9</p><p>&nbsp;</p><p><b>Features</b></p><ul><li>BreathableB</p><p>&nbsp;</p><p><b><b>SizeB.</p><p>&nbsp;</p><p>&nbsp;</p><ul><li>NecklaceB)</p><p>&nbsp;</p><p>&nbsp;</p><ul><li>60%B)</p><p>&nbsp;</p><p>&nbsp;</p><ul><li>50%B7</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><ul><li>SizeB</p><p>&nbsp;</p><p>&nbsp;</p>"B</p><p>&nbsp;</p><li>SizeB</p><pB</p></ul>"""B</li><li>PaintB</li><li>Nontoxic</li><li>MadeB</li><li>MachineB</li><li>Knit</li><li>95%B</li><li>FreeB</li></ul>"B</i>theB</i>graphicB
</i>cadetsB97''B94''B91%B9'B86B83''B
7â€“9B75\""B750</li><li>Camera:B73%B
6â€“8B625''B62%B5â€²B56''B55B52%B5'9''B4XLB	4X=26-28WB4X=B45\""B450Â°B44%B41B40\""B
3â€“5B
3X=22W-24WB36%B34%B34B30\""B3000B
2â€“4B
2X=18W-20WB28%B24%B22</li><li>32''B22-24</li><li>SizeB21stB2000B200B20-22B
1X=14W-16WB1999B1975B1952B1950sB1940sB18%B16%B150â€“200B14</li><li>96%B1334B130â€“180B12-year-oldB11â€“13B112B110B10â€“12B
0â€“1B00â€“0B'they'B'nB'it'sB'em-upB'comedy'B'analyzeB'a'B''tic''B#9B"<p>TurnB
"<p>ThrownB
"<p>SuppleB"<p>StepB"<p>SpunB
"<p>SpruceB	"<p>SleekB
"<p>SimpleB"<p>SheB	"<p>ScoopB"<p>SayB"<p>RichB"<p>RambunctiousB
"<p>RaglanB"<p>ProtectB"<p>PlayfulB
"<p>PackedB"<p>On-trendB"<p>MonitorB"<p>LendB"<p>JustB"<p>JotB"<p>ItB"<p>IntroduceB
"<p>ImbuedB
"<p>FlauntB"<p>FantasticB	"<p>ExudeB"<p>EquippedB"<p>EnergizeB"<p>EmbodyingB"<p>DonB"<p>DelightB"<p>CozyB	"<p>CoverB"<p>CompleteB"<p>ColdB	"<p>CleanB"<p>ChicB"<p>CastB
"<p>BreezyB	"<p>BoostB"<p>AccentuateB"<p><p>ThisB"<pBÉBzwickBzoomsBzoomBzombieBzingsBzealandBzanyByvan'sByvanByu'sByorkersByorkerByimouByieldsByesterday'sByeahByeByawningByawn-provokingByakushoBxeroxBx-filesBwwfBwrithingBwrists</li><li>35BwrinklesBwrinkle-fillingBwretchedB	wrestlingBwrenchBwoundB
worshipfulBworld-classB	workplaceBworkout-readyBworkmanlikeBwork-to-weekendBwork-in-progressBworeBwordedBwoozyBwoodsB
wondrouslyBwondrousB
wondermentBwonderedB
wolodarskyBwobblyBwivesBwistfulB	wisegirlsBwirelessBwinterBwinsomeBwinnersBwinkBwineB
windowpaneBwillingnessB
williams'sBwillfulBwiggleB
widowmakerBwidgetBwidelyBwickedBwickB	wholesaleB	whiteningBwhistlesBwhirlBwhiffBwhere'sBwheezingB
whatsoeverBwesleyBwertmuller'sBwernerBwen'sBweltBwelles'B	well-shotB
well-honedBwell-editedB
well-drawnB	well-doneBwell-developedBwell-constructedBweirdoB
weightlessBweighedBweighBweeklyBweeBwebBweaver'sBweaveB	wearisomeBwearableBwear-and-pairBweaponryBweakestBweakerBwe'llBwe'dBwax'sBwaterloggedBwaterboyBwater-squirtingBwatchfulBwashington'sBwasherBwash</li><li>RecommendedB-wash</li><li>Imported</li></ul><p><b>ShippingB:wash</li><li>Imported</li></ul><p>&nbsp;</p><p>&nbsp;</p>"B#wash</li><li>Imported</li></ul></p>Bwash</li><liBwasabiBwaryBwarrenBwarnerBwarnedBwarmlyBwardBwannaBwangBwandersB	wanderersBwand</li><li>Barrel:BwalshBwallyBwallowB
wall-readyBwalkingBwaitsBwailsB
wafer-thinBwadeB
vulnerableBvulnerabilityBvoyeuristicBvotingBvolts</li><li>60B"voltage</li><li>Imported</li></ul>BvoidBvivekaBvitaminsBvistasBvisitorBvisionsBviscose</li><li>Sleeves:Bviscose</li><li>Shorts:Bviscose</li><li>Pants:Bviscose</li><li>Contrast:Bvinyl</li><li>RecommendedBvintage-styleBvinB
villeneuveB
villainousBvileB	viewpointBviewers'Bviewer'sB	videotapeB#video</li><li>Wi-Fi</li><li>Output:B	victoriesBvictorB	vicariousBvibrancyBvetBvesselBverdictB	verdaderaB	verbinskiBverballyBvera'sBventBvelvetyBveiledBvehiclesBvaryB	varnishedB
variationsB	vardalos'BvardalosBvanilla</li><li>MadeBvampiresBvalidB	valiantlyBvaliantBvainBvacationBv-cutBuweButensilsBurethaneBuptightBupsideBuprightBupliftB
upholsteryBuphillBupdatingBupdatedBup</li><li>LBunwillingnessBunturnedBunthinkableB
untalentedBunsympatheticBunsuspectingBunsubtleBunspeakableBunsophisticatedBunsettlinglyB	unsettledBunseenBunseemlyBunremittinglyBunremarkableBunrelentinglyB
unrealizedBunprecedentedBunpersuasiveB
unorthodoxBunoBunmistakableBunmentionableB	unlimitedBunisexBunholyBunhappyB	unhappilyBunforgettablyB
unfinishedB
unexploredBunexplainableBunexceptionalB
unexaminedBunequivocallyBunendurableBunemploymentBuneasilyB	unearthedBundistinguishedBundevelopedB
undertonesBunderstandableB
underscoreB
underratedBundernourishedB
underminedB	undermineBunderlayBundergroundBunderestimatedB	undercutsBundercurrentBunder-inspiredBundemandingBundBuncoversBunconcernedBuncomplicatedBuncommercialBunclearBuncleBunbelievablyB
unbeatableB
unbearablyBunawareBunapologeticallyBunapologeticB
unaffectedB
ultrasonicBultracomfortableB
ultra-softBultra-comfyBuhB
two-thirdsBtwo-hourBtwirlsBtwirlBtwinBtweakedBtv-movieBtuxBtutorialBturturroBturmoilBturfBturdBturboBtupacBtunedBtummyB
tug-of-warBtuckedBtubes</li><li>Packaged:Btub'sBtruffleBtroveBtrottingBtrivializesBtrivialBtriumphsBtriumphantlyBtristeBtripeBtrimmingBtrim:Btri-coloredBtrend-settingB	trenchantBtremendouslyBtreesB	treasuredBtreadingB	treacheryBtravel-readyB
transportsBtransparentB
translatesBtraitsBtrainsBtrainingBtrailsB
tragicallyBtrafficsBtradesBtractBtracksBtracesBtoys</li><li>RecommendedBtowersBtour-de-forceBtougherBtossingB	tormentedBtopicsBtop-and-shortsBtootsieB	toothlessBtoothB-tool</li><li>Imported</li></ul><p>&nbsp;</p>"B
too-trendyBtoningBtongueBtomorrowB	tolkien'sB	toleranceB	tolerableBtokBtoe-tappingB
tocopherolBtoback'sBtitusBtitle'sBtiringB
tinseltownBtimidB	timeframeBtiltingB	tightropeBtighterBtightensB
tighteningBtierBtieneBtiedBtie:BtidyBtidalBticsBtickleBtiareBtianBthymeBthusBthurmanBthroesBthrewB	thresholdBthree'sB	threatensBthreateningB
threatenedBthoughtfulnessBthoughtfullyBthoroughBthornberrysB
third-rateB	third-actBthinnerB	thereforeB
theorizingBtheologyBtheatresBthankfulBtexturalBtestudB	testimonyBtestimonialBterrificallyBterriBtenthBtennisB	tennesseeB
tendenciesB	temporaryBtempoBtempleBtemperedBtemperaturesBtemperBtelemarketersB!technology</li></ul><p><b>ProductBtearingBteamsBteachesBteachBtaymorBtaxBtattoosBtattooBtattersB	tastelessBtargetedB	tarantulaBtarantino'sBtaraBtanningBtank</li><li>1BtanBtameBtambémBtalking-headBtakashiB	taiwaneseBtaglineBtaglessBtadBtacklingBtackleBtackBsóBsãoBsyrupBsymptomBsymbolsBswordBswoopingBswoopBswooningBswivel</li><li>HeatsBswitchesBswishyBswirlingBswingersBswimmerBsweethert'sBsweet-and-sourBsweatyBsweatpants</li><li>Hoodie:BsweatingBsweater-knitBsweat</li></ul><p><b>ProductBswayBswashbucklerBsvenB
sustenanceB	sustainedB
suspensionB	suspenserBsuspectsB
suspectingB	surroundsB
surroundedB	surrenderB
surrealismBsurgicalBsurge-protectionBsurgeBsurferBsurfeitBsurfB
supportiveBsupplementsBsupermanBsuperlativeBsuperhero-inspiredBsuperfluousBsuper-sizedBsuper-comfortableBsunshineBsungBsulkyBsuitableBsuicideBsugaryBsuffocatingB
suffocatedBsufficientlyB
sufficientBsuddenlyBsucroseBsuckerBsuccinctB	successorB	successesBsuburbanBsubtlerB	subtitledBsubplotB	sublimelyB	subjectedBsuaBstyrene/plexiglass;BstylisticallyBstylishnessB
stutteringBsturmB
stunninglyBstultifyingBstuffyBstuffedB
studiouslyBstudiosBstudio'sBstrung-togetherB	struggledBstruckB	strollersBstrivingBstrivesBstripped-downB
stretchingBstretchableBstretch</li><li>HandBstretch</li><li>81%Bstretch</li><li>80%Bstretch</li><li>60%Bstretch</li><li>40%Bstretch-waistbandBstretch-perfectBstressBstrenuouslyBstrech-blendBstreamedBstreamBstraysBstrayB	strategicBstrappyB,strap</li><li>PVC</li><li>Imported</li></ul>B	strangersB	strainingBstraight-to-videoBstraight-facedBstorybook-inspiredBstormBstoppardBstompBstomach-turningB	stockingsBstitching</li><li>Body:BstitchedBstirs*
_output_shapes	
:�N
{
-transform/transform/inputs/review/PlaceholderPlaceholder*
dtype0*
shape: *#
_output_shapes
:���������
�
*transform/transform/inputs/review/IdentityIdentity-transform/transform/inputs/review/Placeholder*
T0*#
_output_shapes
:���������
z
,transform/transform/inputs/label/PlaceholderPlaceholder*
dtype0	*
shape: *#
_output_shapes
:���������
�
)transform/transform/inputs/label/IdentityIdentity,transform/transform/inputs/label/Placeholder*
T0	*#
_output_shapes
:���������
a
transform/transform/ConstConst*
dtype0*
valueB B.,!?() *
_output_shapes
: 
�
transform/transform/StringSplitStringSplit*transform/transform/inputs/review/Identitytransform/transform/Const*<
_output_shapes*
(:���������:���������:
{
transform/transform/IdentityIdentitytransform/transform/StringSplit*
T0	*'
_output_shapes
:���������
{
transform/transform/Identity_1Identity!transform/transform/StringSplit:1*
T0*#
_output_shapes
:���������
r
transform/transform/Identity_2Identity!transform/transform/StringSplit:2*
T0	*
_output_shapes
:
u
'transform/transform/uniques/PlaceholderPlaceholder*
dtype0*
shape: *#
_output_shapes
:���������
b
transform/transform/SizeSizetransform/Const*
out_type0*
T0*
_output_shapes
: 
_
transform/transform/Minimum/yConst*
dtype0*
value	B :*
_output_shapes
: 
�
transform/transform/MinimumMinimumtransform/transform/Sizetransform/transform/Minimum/y*
T0*
_output_shapes
: 
[
transform/transform/sub/xConst*
dtype0*
value	B :*
_output_shapes
: 
w
transform/transform/subSubtransform/transform/sub/xtransform/transform/Minimum*
T0*
_output_shapes
: 
k
!transform/transform/Reshape/shapeConst*
dtype0*
valueB:*
_output_shapes
:
�
transform/transform/ReshapeReshapetransform/transform/sub!transform/transform/Reshape/shape*
_output_shapes
:*
Tshape0*
T0
z
transform/transform/Fill/valueConst*
dtype0*,
value#B! B__dummy_value__index_zero__*
_output_shapes
: 
�
transform/transform/FillFilltransform/transform/Reshapetransform/transform/Fill/value*
T0*#
_output_shapes
:���������
a
transform/transform/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
�
transform/transform/concatConcatV2transform/Consttransform/transform/Filltransform/transform/concat/axis*
N*

Tidx0*
T0*#
_output_shapes
:���������
}
(transform/transform/string_to_index/SizeSizetransform/transform/concat*
out_type0*
T0*
_output_shapes
: 
q
/transform/transform/string_to_index/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
q
/transform/transform/string_to_index/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
�
)transform/transform/string_to_index/rangeRange/transform/transform/string_to_index/range/start(transform/transform/string_to_index/Size/transform/transform/string_to_index/range/delta*

Tidx0*#
_output_shapes
:���������
�
(transform/transform/string_to_index/CastCast)transform/transform/string_to_index/range*

DstT0	*

SrcT0*#
_output_shapes
:���������
�
.transform/transform/string_to_index/hash_table	HashTable*
	container *
	key_dtype0*
_output_shapes
:*
use_node_name_sharing( *
value_dtype0	*
shared_name 

4transform/transform/string_to_index/hash_table/ConstConst*
dtype0	*
valueB	 R
���������*
_output_shapes
: 
�
9transform/transform/string_to_index/hash_table/table_initInitializeTable.transform/transform/string_to_index/hash_tabletransform/transform/concat(transform/transform/string_to_index/Cast*A
_class7
53loc:@transform/transform/string_to_index/hash_table*

Tkey0*

Tval0	
�
%transform/transform/hash_table_LookupLookupTableFind.transform/transform/string_to_index/hash_tabletransform/transform/Identity_14transform/transform/string_to_index/hash_table/Const*	
Tin0*A
_class7
53loc:@transform/transform/string_to_index/hash_table*

Tout0	*#
_output_shapes
:���������
z
transform/transform/Identity_3Identitytransform/transform/Identity*
T0	*'
_output_shapes
:���������

transform/transform/Identity_4Identity%transform/transform/hash_table_Lookup*
T0	*#
_output_shapes
:���������
o
transform/transform/Identity_5Identitytransform/transform/Identity_2*
T0	*
_output_shapes
:
a
transform/transform/FloorMod/yConst*
dtype0	*
value
B	 R�N*
_output_shapes
: 
�
transform/transform/FloorModFloorModtransform/transform/Identity_4transform/transform/FloorMod/y*
T0	*#
_output_shapes
:���������
e
#transform/transform/split/split_dimConst*
dtype0*
value	B :*
_output_shapes
: 
�
transform/transform/splitSplit#transform/transform/split/split_dimtransform/transform/Identity_3*
	num_split*
T0	*:
_output_shapes(
&:���������:���������
�
transform/transform/ToInt64/xPacktransform/transform/splittransform/transform/split:1*
N*

axis *
T0	*+
_output_shapes
:���������
d
"transform/transform/ExpandDims/dimConst*
dtype0*
value	B :*
_output_shapes
: 
�
transform/transform/ExpandDims
ExpandDimstransform/transform/FloorMod"transform/transform/ExpandDims/dim*

Tdim0*
T0	*'
_output_shapes
:���������
q
'transform/transform/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
s
)transform/transform/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
s
)transform/transform/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
!transform/transform/strided_sliceStridedSlicetransform/transform/ToInt64/x'transform/transform/strided_slice/stack)transform/transform/strided_slice/stack_1)transform/transform/strided_slice/stack_2*
new_axis_mask *
Index0*'
_output_shapes
:���������*

begin_mask *
ellipsis_mask *
end_mask *
T0	*
shrink_axis_mask
s
)transform/transform/strided_slice_1/stackConst*
dtype0*
valueB:*
_output_shapes
:
u
+transform/transform/strided_slice_1/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
u
+transform/transform/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
#transform/transform/strided_slice_1StridedSlicetransform/transform/ToInt64/x)transform/transform/strided_slice_1/stack+transform/transform/strided_slice_1/stack_1+transform/transform/strided_slice_1/stack_2*
new_axis_mask *
Index0*'
_output_shapes
:���������*

begin_mask *
ellipsis_mask *
end_mask *
T0	*
shrink_axis_mask
c
!transform/transform/concat_1/axisConst*
dtype0*
value	B :*
_output_shapes
: 
�
transform/transform/concat_1ConcatV2!transform/transform/strided_slice#transform/transform/strided_slice_1transform/transform/ExpandDims!transform/transform/concat_1/axis*
N*

Tidx0*
T0	*'
_output_shapes
:���������

#transform/transform/ones_like/ShapeShapetransform/transform/FloorMod*
out_type0*
T0	*
_output_shapes
:
e
#transform/transform/ones_like/ConstConst*
dtype0	*
value	B	 R*
_output_shapes
: 
�
transform/transform/ones_likeFill#transform/transform/ones_like/Shape#transform/transform/ones_like/Const*
T0	*#
_output_shapes
:���������
f
transform/transform/Const_1Const*
dtype0	*
valueB	R�N*
_output_shapes
:
c
!transform/transform/concat_2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
�
transform/transform/concat_2ConcatV2transform/transform/Identity_5transform/transform/Const_1!transform/transform/concat_2/axis*
N*

Tidx0*
T0	*
_output_shapes
:
z
8transform/transform/SparseReduceSumSparse/reduction_axesConst*
dtype0*
value	B :*
_output_shapes
: 
�
)transform/transform/SparseReduceSumSparseSparseReduceSumSparsetransform/transform/concat_1transform/transform/ones_liketransform/transform/concat_28transform/transform/SparseReduceSumSparse/reduction_axes*
T0	*
	keep_dims( * 
_output_shapes
:::
_
transform/transform/Greater/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
�
transform/transform/GreaterGreater+transform/transform/SparseReduceSumSparse:1transform/transform/Greater/y*
T0	*
_output_shapes
:
s
transform/transform/ToDoubleCasttransform/transform/Greater*

DstT0*

SrcT0
*
_output_shapes
:
�
%transform/transform/ones_like_1/ShapeShapetransform/transform/ToDouble*
out_type0*
T0*#
_output_shapes
:���������
n
%transform/transform/ones_like_1/ConstConst*
dtype0*
valueB 2      �?*
_output_shapes
: 
�
transform/transform/ones_like_1Fill%transform/transform/ones_like_1/Shape%transform/transform/ones_like_1/Const*
T0*
_output_shapes
:
t
2transform/transform/SparseReduceSum/reduction_axesConst*
dtype0*
value	B : *
_output_shapes
: 
�
#transform/transform/SparseReduceSumSparseReduceSum)transform/transform/SparseReduceSumSparsetransform/transform/ones_like_1+transform/transform/SparseReduceSumSparse:22transform/transform/SparseReduceSum/reduction_axes*
T0*
	keep_dims( *
_output_shapes
:
f
$transform/transform/ExpandDims_1/dimConst*
dtype0*
value	B : *
_output_shapes
: 
�
 transform/transform/ExpandDims_1
ExpandDims#transform/transform/SparseReduceSum$transform/transform/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes
:
z
transform/transform/Shape/CastCasttransform/transform/Identity_5*

DstT0*

SrcT0	*
_output_shapes
:
s
)transform/transform/strided_slice_2/stackConst*
dtype0*
valueB: *
_output_shapes
:
u
+transform/transform/strided_slice_2/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
u
+transform/transform/strided_slice_2/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
#transform/transform/strided_slice_2StridedSlicetransform/transform/Shape/Cast)transform/transform/strided_slice_2/stack+transform/transform/strided_slice_2/stack_1+transform/transform/strided_slice_2/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
f
$transform/transform/ExpandDims_2/dimConst*
dtype0*
value	B : *
_output_shapes
: 
�
 transform/transform/ExpandDims_2
ExpandDims#transform/transform/strided_slice_2$transform/transform/ExpandDims_2/dim*

Tdim0*
T0*
_output_shapes
:
f
#transform/transform/sum/PlaceholderPlaceholder*
dtype0*
shape: *
_output_shapes
:
f
%transform/transform/sum_1/PlaceholderPlaceholder*
dtype0*
shape: *
_output_shapes
: 
}
transform/transform/ToDouble_1Cast%transform/transform/sum_1/Placeholder*

DstT0*

SrcT0*
_output_shapes
: 
b
transform/transform/add/xConst*
dtype0*
valueB 2      �?*
_output_shapes
: 
�
transform/transform/addAddtransform/transform/add/x#transform/transform/sum/Placeholder*
T0*
_output_shapes
:
�
transform/transform/truedivRealDivtransform/transform/ToDouble_1transform/transform/add*
T0*
_output_shapes
:
^
transform/transform/LogLogtransform/transform/truediv*
T0*
_output_shapes
:
�
%transform/transform/ones_like_2/ShapeShapetransform/transform/FloorMod*
out_type0*
T0	*
_output_shapes
:
g
%transform/transform/ones_like_2/ConstConst*
dtype0	*
value	B	 R*
_output_shapes
: 
�
transform/transform/ones_like_2Fill%transform/transform/ones_like_2/Shape%transform/transform/ones_like_2/Const*
T0	*#
_output_shapes
:���������
v
4transform/transform/SparseReduceSum_1/reduction_axesConst*
dtype0*
value	B :*
_output_shapes
: 
�
%transform/transform/SparseReduceSum_1SparseReduceSumtransform/transform/Identity_3transform/transform/ones_like_2transform/transform/Identity_54transform/transform/SparseReduceSum_1/reduction_axes*
T0	*
	keep_dims( *
_output_shapes
:

transform/transform/ToDouble_3Cast%transform/transform/SparseReduceSum_1*

DstT0*

SrcT0	*
_output_shapes
:
�
transform/transform/GatherGathertransform/transform/Logtransform/transform/FloorMod*
validate_indices(*
Tparams0*
Tindices0	*
_output_shapes
:
z
)transform/transform/strided_slice_3/stackConst*
dtype0*
valueB"        *
_output_shapes
:
|
+transform/transform/strided_slice_3/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
|
+transform/transform/strided_slice_3/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
�
#transform/transform/strided_slice_3StridedSlicetransform/transform/Identity_3)transform/transform/strided_slice_3/stack+transform/transform/strided_slice_3/stack_1+transform/transform/strided_slice_3/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:���������*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
�
transform/transform/Gather_1Gathertransform/transform/ToDouble_3#transform/transform/strided_slice_3*
validate_indices(*
Tparams0*
Tindices0	*
_output_shapes
:
�
transform/transform/truediv_1RealDivtransform/transform/Gathertransform/transform/Gather_1*
T0*
_output_shapes
:
t
transform/transform/ToFloatCasttransform/transform/truediv_1*

DstT0*

SrcT0*
_output_shapes
:
��
transform/Const_1Const*
dtype0*��
value��B���N"��     :�@     ��@     ��@     |�@     �@     l�@     �@     r�@     �@     ܦ@     8�@     n�@     l�@     �@     :�@     V�@     ԛ@     ��@     H�@     ̗@     ��@     ��@     �p@     ܕ@     ��@     (�@     ̔@     �@     @�@     ��@     ��@     x�@     ��@     �@     ��@     L�@     ��@     ��@     @�@     ��@     ��@     �@     ��@     p�@     ��@     ��@     ��@     H�@     ��@     �@     �@     ��@     ȉ@     ��@     ��@     h�@     ��@     `�@     `�@     ��@     ��@     ��@     ��@     �_@     ��@     �{@     ��@     0�@     @�@     x�@     ��@     �@     ��@     p�@     (�@     H�@     ��@     �@     8�@     ��@     ��@     ��@     ��@     ��@     ��@     (�@     ��@     ��@     ��@     ��@     ��@     ��@     ��@     (�@     ��@     �~@     �j@     @�@     �~@     }@     pv@     �}@     @c@      }@     |@     �|@     @|@     `{@     z@     �y@     �z@     �y@     pz@     �y@     �x@     �x@     pu@     �w@     0x@     x@     �v@      s@     Pv@     �v@      r@     �t@     �u@     Pt@     pt@     `u@     �t@     �s@     �t@     �t@     �s@     �s@     �r@     �s@     ps@     Ps@     Ps@     @s@     �r@     �r@     �r@     �q@     0r@     �p@     pr@     0r@     Pq@     �q@     �q@     �q@     �n@     �q@     Pq@     Pq@     p@     �q@     `q@     �o@     @q@     `o@     q@     @n@      b@     �p@     @g@     �p@     @p@     @o@     �o@      p@     �n@     �o@     �n@     `o@     @o@      n@     `n@     �n@      n@      n@     @n@      l@      m@      m@     �k@     �l@     �j@     �l@      l@     �k@     �_@     �e@      k@     @k@     �k@      k@      k@     �j@      k@     @]@     @\@     @h@     �i@     �i@     �h@      i@      i@     @i@     @g@     �h@     �f@      i@      e@     �h@     `h@     @f@     �h@     �h@      h@     �g@     `h@     @h@     @h@     @Z@     �f@     �g@     �g@     �g@     �g@     @f@     �g@     �g@     �e@     �g@     �g@     @g@      g@     @g@     �d@      f@     �e@     @f@      g@     @d@     �f@     �f@     �e@      e@     `e@     �e@     �d@     @V@     `e@      e@      e@     �d@     �d@     �d@     `d@     �d@     `c@      d@     `d@      d@     @d@     �c@     �c@     �c@     �c@      d@     �b@     `c@     �c@     `b@     `c@     �b@      c@      c@      c@     �b@     �b@     �b@     �a@     �b@     @b@     `b@     �a@     `b@      b@      b@     �a@     �a@     @b@      b@     �a@      b@      b@     �a@      b@      a@      a@     �a@     �a@     `a@     �a@     �a@     �`@     @a@     `a@     `a@     @a@      a@     �`@      a@     �`@     �`@     ``@     �`@      `@      `@     ``@     ``@      _@     @`@     ``@     @`@      `@      `@      `@     �_@     �_@     �_@     �_@      _@     �_@     �^@     �^@     @_@     �^@      _@     @]@     �[@      _@     �^@     @^@     �^@     �^@     �^@     �^@      ^@     @^@     @^@     @^@      ^@     �]@     �[@     �]@     �\@     �]@     �]@      W@     @]@     �\@     @]@     @]@      ]@     @\@     �\@     @\@     �\@     �\@     �\@     �[@      ]@     @[@     �\@     @\@      \@     @[@     @\@     �H@     @\@     @\@      \@     �Z@      \@      \@     �[@     �Z@     @[@     �[@     �[@     @Z@     �Z@      [@      [@     �Z@     �Z@      [@     �Z@     �X@     �Y@     �Z@      G@     �Z@     @Y@     �Z@      Z@     �Y@     �Z@     �T@     �Z@     �Z@     @Z@      X@     @Z@      Y@     @Z@      Z@      Z@      Z@     �Y@     �Y@     �Y@     �U@     �Y@     �Y@     @Y@     �X@      V@     @Y@     �W@     �W@      Y@      Y@     �X@     �X@     �X@     @X@     �X@      X@     �S@      X@     @X@     �V@     @W@      X@     �W@      X@      X@     �W@     �W@     �W@     �W@     @W@      W@      V@     �W@     �W@     �V@     @W@      W@     �U@      V@      W@     �V@     �V@     �V@     �V@     �V@     �V@     @V@     �V@     �V@     �V@     �V@     �U@     @V@     �V@     @V@      V@     �U@     @V@      V@     �U@      V@     �U@     �U@     �T@     �U@     @U@     �U@     �U@     �U@     �U@      U@      U@     �T@     @U@     @U@     @U@     @U@     @U@     �S@      U@     @Q@      U@      U@     �Q@      U@      U@     �T@     �T@     �T@     �T@     �Q@     @T@     �T@     �T@     �T@     �T@     �S@     @T@     �S@     @T@      S@     @T@     @T@      S@     �Q@      S@     �S@      T@     @S@      T@     �S@     �S@     �S@     �S@     �R@     �S@     �S@     �S@     �S@     �R@      S@     @S@     @S@     @S@      N@     @S@      S@      R@     @R@     �R@     �R@      S@     �R@      S@      S@      Q@      R@      R@      R@     @R@     �R@     �R@     �R@      R@      R@     @R@     @R@     �Q@     �Q@     �Q@      R@      R@      Q@      R@     �Q@     �Q@     �Q@     �Q@      Q@     �P@     @Q@     @Q@     @Q@     @Q@     @Q@     @Q@     �N@     @Q@     �P@     �P@      Q@     �P@      O@     �P@      Q@     �P@     �P@      Q@      Q@     �P@     @P@     �P@     �P@     �N@     �P@     �P@     �P@     �P@     �P@     �P@     @P@      P@      P@      P@     @P@      P@     �O@      P@      P@      P@      P@     �O@     �O@     �I@     �K@     �O@     �O@     �N@     �M@     �O@      O@     �O@     �O@      O@      J@      O@     �N@     �M@     �N@     �N@     �L@     �N@      N@     �N@      N@     �N@      N@      N@     �N@     �N@      N@      N@     �M@     �M@      N@      N@      N@      N@      N@      N@     �M@      M@     �M@     �M@     �M@     �M@     �M@      M@     �M@      J@      M@      M@      M@      M@      M@     �I@      M@      M@      M@      M@     �L@     �L@     �L@     �L@      L@     �L@     �L@      L@     �L@      L@      L@     �I@      L@      L@      L@      L@     �J@      L@      L@      L@     �K@     �K@     �K@     �K@      I@     �K@     �K@      K@     �K@      K@      K@      K@      K@     �H@      K@      J@     �J@     �J@      J@     �J@      J@     �J@     �J@     �J@      J@      J@      I@     �H@     �J@     �J@     �J@     �F@      J@     �I@      J@      J@      J@      H@     �I@     �I@     �I@     �G@      G@     �I@     �I@     �I@     �I@     �I@      I@      I@      I@      I@      I@      H@     �H@     �H@      I@      H@      I@      I@      I@      H@      H@     �H@     �H@      H@      H@     �H@     �G@     �H@     �H@     �G@     �G@      H@      H@      H@      H@      H@     �F@      H@      H@      G@      H@      :@      H@     �G@     �G@     �F@     �G@     �G@     �G@     �G@     �G@     �G@     �G@     �G@     �G@     �G@     �G@      D@      E@      G@      G@      G@      G@      >@      G@     �F@      G@      G@      G@      G@     �F@      G@      G@     �F@      G@      G@     �F@      G@     �F@     �F@     �F@      F@     �F@     �F@     �F@     �F@     �F@      F@      F@     �F@     �F@      F@      F@      E@      F@     �E@      F@      F@      F@      F@      F@      F@      F@     �E@     �E@     �D@      ?@      E@     �E@     �E@     �E@     �E@     �E@     �C@     �D@     �C@      E@      E@     �D@      E@      B@      E@      E@     �C@      E@      E@      E@      E@      E@      E@      E@      E@      E@      5@      E@      D@     �D@     �D@     �C@     �D@     �D@     �D@     �D@     �D@     �D@     �D@      D@     �D@     �D@      D@     �D@     �D@     �D@     �D@     �D@      D@     �D@      D@      D@      D@      D@     �C@     �C@     �C@      A@      D@      D@     �C@      0@      D@      D@      D@      D@      D@      D@      C@      D@      D@      @     �C@     �B@     �A@     �C@     �C@     �C@     �A@     �B@     �C@      C@     �C@     �@@      C@      C@     �C@     �C@     �C@     �B@     �C@     �C@      C@      C@      C@      C@     �B@      C@      B@      C@      C@      C@      C@      @@      C@      C@      C@      C@      C@      C@      C@      A@     �@@      C@      C@      C@      B@      B@     �B@      4@     �B@     �B@     �B@     �A@     �B@      B@     �B@     �B@      >@      ?@     �B@     �B@     �B@      B@      B@      B@      B@      B@      B@      B@      B@      A@      B@      B@      B@      B@     �A@     �@@      A@     �A@      B@     �A@      B@      B@      B@     �A@      B@      B@      ?@      B@     �@@     �A@      B@      A@     �A@      A@      ?@     �A@     �@@     �A@     �A@      A@     �A@     �A@      A@     �A@     �@@      A@     �A@     �A@      A@     �A@     �A@      A@     �A@     �A@     �@@      A@     �@@      A@     �@@      A@     �@@     �@@     �@@      A@      A@     �@@      A@      A@      A@      A@      9@      A@      A@      ?@     �@@      @@     �@@     �@@     �@@     �@@     �@@     �@@     �@@      8@      ?@      =@     �@@     �@@     �@@      =@     �@@     �@@     �@@     �@@      @@      @@      >@      @@      @@      @@      @@      @@      @@      @@      @@      ?@      @@      @@      @@      @@      >@      9@      @@      @@      ?@      @@      @@      ?@      @@      ;@      @@      ?@      >@      ;@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      =@      ?@      >@      ?@      ?@      ?@      >@      ?@      <@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      >@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      ?@      =@      >@      >@      >@      >@      =@      >@      >@      >@      =@      >@      >@      >@      >@      0@      >@      >@      >@      >@      <@      >@      >@      =@      >@      <@      >@      ;@      >@      >@      >@      =@      6@      >@      >@      ;@      =@      =@      =@      =@      <@      =@      =@      =@      =@      =@      =@      =@      =@      =@      =@      =@      ;@      =@      =@      <@      =@      =@      =@      =@      :@      =@      =@      =@      =@      ;@      =@      =@      =@      =@      =@      7@      7@      =@      =@      =@      =@      =@      =@      8@      8@      <@      <@      <@      <@      <@      6@      <@      <@      <@      <@      <@      <@      <@      3@      <@      <@      <@      ;@      ;@      <@      <@      <@      :@      <@      <@      <@      <@      <@      <@      <@      <@      <@      :@      <@      <@      <@      <@      ;@      ;@      ;@      ;@      ;@      ;@      :@      :@      :@      ;@      ;@      ;@      ;@      ;@      ;@      ;@      :@      ;@      ;@      ;@      :@      ;@      ;@      ;@      ;@      ;@      :@      ;@      ;@      ;@      ;@      ;@      ;@      :@      ;@      ;@      ;@      :@      ;@      ;@      ;@      :@      :@      :@      :@      :@      9@      :@      :@      :@      :@      9@      9@      8@      7@      :@      3@      :@      :@      :@      :@      :@      :@      :@      :@      :@      :@      :@      :@      :@      :@      9@      :@      9@      :@      :@      8@      7@      :@      9@      8@      :@      :@      9@      9@      9@      9@      9@      9@      9@      9@      9@      9@      9@      8@      9@      6@      9@      7@      9@      9@      9@      6@      9@      8@      9@      9@      9@      9@      9@      9@      9@      9@      8@      9@      9@      9@      9@      8@      9@      9@      9@      9@      9@      9@      8@      9@      9@      8@      5@      9@      9@      "@      9@      7@      8@      1@      8@      8@      7@      8@      8@      8@      8@      8@      4@      8@      7@      8@      8@      8@      8@      8@      8@      8@      8@      6@      8@      8@      3@      7@      8@      7@      8@      6@       @      8@      8@      8@      8@      8@      8@      8@      8@      8@      8@      8@      8@      8@      7@      6@      8@      8@      8@      7@      0@      7@      7@      7@      6@      7@      7@      7@      7@      1@      7@      7@      7@      7@      7@      7@      7@      5@      6@      5@      7@      7@      7@      7@      7@      7@      7@      7@      7@      7@      7@      7@      7@      7@      7@      7@      7@      7@      7@      5@      7@      7@      7@      7@      5@      0@      7@      7@      7@      7@      7@      7@      7@      7@      7@      4@      7@      7@      7@      7@      6@      5@      6@      6@      6@      6@      6@      6@      6@      6@      6@      6@      6@      4@      4@      6@      6@      6@      5@      5@      6@      6@      6@      6@      6@      6@      6@      6@      1@      5@      6@      6@      6@      6@      6@      6@      2@      1@      6@      5@      6@      6@      6@      5@      6@      6@      6@      6@      .@      6@      6@      6@      6@      6@      5@      6@      6@      6@      6@      &@      6@      6@      6@      6@      5@      5@      5@      5@      5@      5@      5@      5@      5@      5@      5@      5@      3@      5@      5@      5@      5@      5@      5@      5@      4@      5@      5@      5@      5@      5@      5@      4@      5@      3@      3@      5@      4@      4@      5@      5@      5@      5@      5@      5@      5@      5@      4@      5@      5@      5@      5@      5@      5@      4@      5@      5@      5@      5@      5@      5@      4@      5@      5@      5@      5@      5@      5@      5@      3@      .@      5@      4@      5@      5@      5@      5@      5@      5@      5@      5@      5@      5@      5@      5@      5@      5@      4@      4@      4@      4@      1@      4@      4@      4@      4@      4@      4@      4@      3@      4@      4@      4@      3@      4@      1@      4@      4@      4@      4@      4@      3@      4@      4@      4@      4@      4@      4@      3@      4@      (@      4@      4@      2@      4@      4@      4@      4@      4@      4@      3@      4@      4@      4@      4@      4@      3@      4@      3@      3@      3@      4@      4@      4@      4@      4@      4@      4@      4@      4@      4@      4@      4@      4@      4@      4@      4@      3@      3@      4@      4@      4@      4@      .@      4@      4@      4@      4@      4@      3@      4@      (@      4@      4@      4@      4@      3@      2@      2@      3@      3@      1@      2@      3@      3@      3@      3@      3@      3@      3@      3@      0@      3@      3@      3@      3@      2@      3@      3@      3@      3@      3@      3@      3@      3@      3@      2@      3@      3@      3@      3@      3@      3@      3@      3@      3@      2@      2@      3@      &@      2@      3@      2@      3@      3@      3@      3@      3@      3@      3@      3@      3@      3@      3@      2@      2@      3@      0@      3@      3@      3@      3@      3@      3@      3@      3@      3@      3@      2@      3@      3@      3@      3@      2@      2@      1@      2@      2@      2@      1@      2@      2@      2@      2@      2@      2@      2@      2@      2@      2@      2@      2@      2@      1@      2@      1@      2@      2@      2@      2@      2@      2@      2@      2@      2@      1@      2@      2@      .@      2@      2@      2@      2@      2@      2@      2@      2@      2@      2@      2@      2@      0@      2@      2@      2@      0@      2@      2@      2@      2@      2@      1@      1@      2@      2@      2@      2@      2@      2@      2@      2@      2@      2@      2@      2@      2@      2@      2@      2@      2@      2@      2@      2@      2@      2@      2@      2@      2@      2@      1@      1@      0@      1@      1@      1@      *@      1@      0@      1@      1@      *@      1@      1@      1@      1@      0@      1@      0@      0@      1@      0@      1@      .@      0@      1@      1@      1@      1@      1@      1@      1@      1@      1@      1@      1@      .@      1@      1@      1@      1@      1@      1@      1@      1@      1@      1@      .@      1@      1@      1@      1@      0@      1@      0@      .@      1@      1@      1@      1@      0@      1@      1@      1@      1@      1@      1@      .@      1@      1@      1@      1@      1@      1@      1@      1@      1@      1@      1@      1@      1@      0@      1@      1@      1@      1@      1@      1@      1@      .@      1@      1@      1@      1@      1@      1@      1@      1@      1@      1@      1@      1@      1@      1@      1@      1@      0@      0@      .@      .@      0@      0@      0@      0@      0@      0@      0@      ,@      0@      0@      0@      0@      0@      0@      0@      0@      0@      0@      0@      0@      0@      0@      0@      0@      .@      0@      0@      0@      0@      0@      .@      0@      0@      0@      0@      0@      0@      0@      0@      0@      0@      .@      .@      0@      0@      0@      0@      0@      .@      0@      0@      0@      0@      ,@      0@      0@      0@      0@      .@      0@      .@      0@      0@      0@      0@      .@      0@      0@      0@      0@      0@      0@      0@      .@      0@      0@      0@      0@      0@      0@      0@      0@      0@      .@      0@      0@      0@      0@       @      0@      0@      .@      .@      .@       @      0@      0@      0@      0@      0@      0@      0@      .@      .@      .@      .@      *@      .@      .@      .@      .@      .@      .@      .@      .@      &@      .@      .@      .@      .@      .@      .@      .@      .@      .@      *@      .@      .@      *@      .@      .@      .@      .@      .@      ,@      .@      .@      .@      .@      .@      .@      .@      .@      .@      .@      .@      ,@      .@      .@      .@      .@      ,@      .@      ,@      .@      ,@      .@      .@      ,@      .@      .@      .@      .@      .@      .@      .@      .@      .@      .@      .@      .@      .@      .@      .@      *@      .@      .@      (@      .@      .@      .@      .@      .@      .@      .@      .@      .@      .@      .@      .@      ,@      (@      .@      .@      ,@      .@      .@      .@      *@      ,@      .@      .@      .@      .@      .@      .@      .@      .@      .@      .@      .@      ,@      .@      ,@      .@      ,@      .@      .@      .@      .@      .@      .@      *@      *@      ,@      &@      ,@      *@      ,@      ,@      &@      ,@      $@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      &@      ,@      ,@      ,@      @      ,@      *@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      $@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      *@      ,@      ,@      ,@      ,@      *@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      (@      ,@      *@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      $@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      *@      *@      (@      *@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      (@      ,@      ,@      ,@      ,@      ,@      ,@      *@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      ,@      "@      ,@      ,@      ,@      ,@      $@      *@      *@      *@      *@      *@      *@      *@      *@      *@      (@      *@      *@      *@      *@      *@      @      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      &@      *@      *@      *@      *@      &@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      (@      *@      *@      *@      @      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      (@      *@      *@      *@      *@      *@      (@      *@      *@       @      &@      *@      *@      (@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      (@      *@      *@      *@      *@      *@      *@      *@      *@      (@      (@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      (@      *@      *@      *@      *@      $@      *@      (@      (@      $@      *@      *@      *@      (@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      *@      (@      (@      (@      &@      (@      &@      (@       @      (@      (@      (@      (@      (@      (@      (@      $@      (@      (@      (@      (@      (@      $@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      &@      &@      (@      (@      (@      (@      (@      (@      (@      $@      (@      (@      (@      (@      (@      (@      (@      &@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      &@      (@      (@      (@      (@      $@      (@      (@      (@      &@      (@       @      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      &@      (@      (@      $@      (@      (@      $@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      &@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      @      (@      (@      (@      (@      (@      (@      (@      &@      (@      (@      &@      (@      (@      (@      (@      (@      (@      $@      (@      &@      (@      (@      (@      (@      &@      (@      (@      "@      (@      &@      &@      (@      (@      (@      (@      (@      (@      (@      (@      &@      (@      @      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      (@      &@      &@      $@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      @      &@      &@      $@      &@      &@      &@      &@      &@      &@      &@      &@      &@      $@      &@      &@      &@      &@      &@      &@      &@      "@      $@      &@      &@      $@      &@      &@      &@      &@      "@      &@      $@      &@      &@      &@      &@      &@      &@      $@      &@      &@      &@      &@      &@      @      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@       @      &@      &@      &@      &@      &@      "@      &@      &@      &@      &@      &@      &@      &@      &@      $@      "@      &@      &@      &@      &@      &@      &@      $@      &@      &@      @      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      $@      &@      &@      $@      &@      &@      &@      $@      &@      &@      &@      &@      "@      &@      &@      $@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      $@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      $@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      $@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      &@      $@      &@      &@      &@      &@      &@      &@      $@      $@      $@      $@      $@      $@      "@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@       @      $@      $@      $@      $@      $@      "@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      "@      "@      $@      $@      $@      $@      @      $@      $@      $@      $@      $@      $@      $@      $@      $@      "@      $@      $@      $@      $@      "@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      "@      $@      $@       @      $@      "@      $@      "@      $@      $@      $@      @      $@      $@      $@      $@      "@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      "@      $@      $@      $@      $@      $@      $@      $@      $@      $@      "@      $@      "@      $@      $@      $@      $@      $@      $@      $@      $@      "@      $@      $@      $@      $@      "@      $@      $@      $@      $@      $@      "@      $@      $@      $@      @      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      "@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      @      $@      @      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      "@      $@      $@      $@      "@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      "@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@      $@       @      "@       @      @      "@      "@      "@      "@      "@      "@       @      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      @      "@      "@      "@      "@      "@      "@      "@      "@      "@       @      "@      "@      "@      "@      "@      @      "@      "@      "@      "@      "@      "@      "@      "@       @      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@       @      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@       @      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@       @      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      @      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@       @      "@      "@       @      "@      "@      @      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@       @      "@      "@      "@      "@      "@      "@      "@      @      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@       @      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@       @      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@       @       @      "@      "@       @      "@      "@       @      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      @      "@       @      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      @      "@      "@      "@      @      "@       @      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@       @      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@       @      "@      "@      "@      "@      "@      "@      @      "@      "@      "@      "@       @      "@      "@      @      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      "@      @      "@      "@      "@      "@      "@      "@      "@      "@      @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @      @      @      @       @       @       @      @       @       @      @       @       @       @       @       @       @       @       @       @      @       @       @      @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @      @       @       @      @       @      @       @       @       @      @       @       @       @       @      @       @       @       @       @      @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @      @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @      @       @       @       @       @       @      @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @      @       @       @       @       @       @       @       @       @      @       @       @       @       @      @      @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @      @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @      @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @      @      @       @       @       @      @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @      @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @      @       @       @       @       @       @      @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @      @       @      @       @      @       @       @       @       @       @       @       @       @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      �?      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @       @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      �?      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      �?      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @       @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      �?      @      @      @      @      @      @      @      @      @      @      @       @      @       @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @      @      @      �?      @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @      �?       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @      �?       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @      �?       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @      �?       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @      �?       @       @       @       @       @       @      �?       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @    ��@*
_output_shapes	
:�N
��
transform/Const_2Const*
dtype0*��
value��B���NBtheBaBandBtoBofBinBthisBisBwithBforB/Bwash;BthatByourBfromBteeBcottonBtumbleBitBanBlongBasB=BpointBhighBcotton</li><li>MachineBshoulderBoneBbutBitsBUSA</li></ul>"BonBlittleBfilmBitemBtopBgraphicBupBThisBhangBmovieBdry</li><li>MadeByouBit'sBrayonBUSA</li></ul>B	polyesterB	note:</b>BbeBtimeBfabricBnotB|B5%BPrintedBstyleBmadeBlookBbyBcomfortBdry</li><li>ImportedB</p><p>&nbsp;</p><ul><li>100%BhasBâ€“BS:BxBsizeBspandex</li><li>HandBallBareBatBrunsBsoftBsmallBorB!</p><p>&nbsp;</p><ul><li>IncludesBhisBmoreBextraBfindBwillBcomfyBspecialBlikeBpolyester</li><li>MachineBaboutBcasualBfitBwhileBAllowBdry</li><li>Imported</li></ul>BhaveBthanBspandex</li><li>MachineBshipBsoB"B</p><p>&nbsp;</p><ul><li>SizeB40%BcanB--Bdry</li><li>Imported</li></ul>"B-B</p><p>&nbsp;</p><p><b>SizeBfunBrecommendedBOrderingBcomfortableBsetBtheirBfeaturesBintoBhem</li><li>95%BifBWBoutB5''BjustBclassicBorderBmakeBtooBstoryB<p>ThisBiBwhatBdesignBnoBwhoB	featuringBevenBmostBmakesB<p>ABtouchB"<p>ThisBsomeB
breathableBsleevesBmuchBoffBwardrobeBloveBplayfulBwash</li><li>MadeBgoodBdryB</b>ThisBcotton-blendB</p>BwhenBcomedyBdayBcoolBherB"<p>AB4%BwayBtwoBlightweightBblendBringspunBcozyBcombedB
charactersBnote:B25%BHB0BaddsBensembleBbestBthat'sB	supersoftB:BcutB3BonlyBoffersBsweetBanyB1X:BtheseByearsBboldBtheyBappealBstretchBenoughBagesBbeenB30''BkeepsBkeepBSB100%BneverBfunnyBABworkBrelaxedBlifeBboastsBLBMBveryB</p>"Bwash</li><li>Imported</li></ul>BthereBmayBthroughB</p><p>&nbsp;</p><ul><li>60%B8BthemBheB</p><ul><li>100%BruchedBeye-catchingBwhichBhowBfavoriteBcharmBdoesn'tB2BcharmingB12Brayon</li><li>MachineBXLB5BbackBnewBTheB4BgetBcraftedB</p><ul><li>SizeBusB10BdirectorBwithoutBozBflat</li><li>MadeBbadB1B6BwellBboastingBweB(USA</li></ul><p>&nbsp;</p><p><b>ShippingBaddBeveryBwasBfeelBall-dayBoverBXSBwouldBraglanB35%BprintBownBhemBcouldBnecklineBreallyBmoviesBhueBzulilyB wash</li><li>Imported</li></ul>"BtunicBthere'sBgreatB50%BsolidB	somethingBperformancesB	laid-backBthoseBpureBotherBdoesB2XBone'sBcolorBprovidesBfeminineB	characterB3XBshouldBbigB7BbetterBbothBsureBseeBmanyBhumorBstillBfilmsBdramaBplotBfrontBensuresB25''Bisn'tB
silhouetteBsportyBsideBpromisesBeverydayBbeingB9Bpolyester</li><li>HandBeasyBpieceBhimBperformanceBonesBmightBrayon</li><li>HandBvibrantB
flatteringBpeopleBnothingBmessageBflairBdoBactionBUSA</li></ul><p><b>ShippingB13BcastB28''BsenseBlendsBdownBalsoBfirstBtakeBconstructionBawayBshowB</p><p><b>SizeByetBstretch-blendBsimpleB	essentialB!</p><p>&nbsp;</p><ul><li>NecklaceBthoughBaudienceB</p><p>&nbsp;</p><ul><li>50%B27''BworldBgivesBfarBthanksBfeelsB</p><ul><li>IncludesBstapleBeverB'BpersonalityBdon'tBafterBcreateBagainB11BthingBgoB9dry</li><li>Imported</li></ul><p>&nbsp;</p><p><b>ShippingB31''B26''BmaterialBkindBfewBcolorfulBbetweenBanotherB</p><p>&nbsp;</p><ul><li>SideBsuchB<p>YourBplayBlookingBskinBscoopBoilBcotton</li><li>HandBchartBtaleBlessBbumpB29''BreferBbecauseBPleaseB</p><p>&nbsp;</p><ul><li>95%BscriptBrealBoftenBromanticBgiveBwearingBhereBfullBcan'tBartBrightBpictureBorganicBlooksBhardBgetsBfilm'sB;B	versatileBpaintBincluded</li><li>SizeBensureBcleverByou'reBwearBthreeBneckBhintBseemsBbringBcomeB
all-cottonBhem</li><li>100%BfourBcomesBbrightBquiteBminutesBknowB</p><ul><li>60%B75''B60%BthingsBhi-lowBdocumentaryBchicBalmostBratherBgrowingBfamilyBmarkersBinterestingBhem</li><li>Knit;BwhereBwatchingBthrillerBhomeBcolorsB3%B16WByoungBtakesBheartB18WBscreenBmyBbeforeBM:BfeelingBaroundBstretchyBpowerBoldBbreezyBbitBseenBperfectBmomentsBentertainingB	ensemblesBendBdeliversB20WB10%BreadyBmanBitselfBdarlingBworksB	hollywoodBhadBdespiteBpopBplentyBdetail</li><li>50%BamericanB
ultimatelyBtimesBthenBsameBlendBfloralBcurvesBbringsBscenesBmeBlotBstripesBgo-toB<p>KeepB<p>AddB00BwereBstretch-kissedBpartBmodernBhem</li><li>Knit</li><li>95%BdeBalongB14WBup</li><li>Imported</li></ul>"B
experienceBactingB2X=BsixBprettyBmakingBhumanBhem</li><li>65%BalwaysBwantBtogetherBneedBjourneyBhoursB!</p><p>&nbsp;</p><ul><li>Juniors:B"<p>WithBshortsBroomBourBonceBeasilyB32''B14Btall;BruchingBmusicB</p><p>&nbsp;</p><ul><li>1XBwatchBwaist;BoriginalBlastingBhem</li><li>96%B
everythingBanythingBoh-soBenjoyBdurableB7''B18W-20WB	whimsicalBsillyBkidsBhelpBgoingBdialogueBdetailBdaysB14W-16WBtankBplaceBnextBworthBtrueBstayBlaughsBfansBfaceBanyoneB
compellingB22W-24W</li><li>SizeB	ultrasoftBthinkBstarBsidesBon-trendBlightB	cinematicBwholeBoutfitB
completelyB22WByou'llBsayBadorableBsimplyBshortBflowingBdetail</li><li>100%BcareBbodyB15</li><li>Women:ByearBwhyBthree-quarterBleastBincludedBdullB
collectionBbecomeB6%B3X=B"<p>CraftedBwash</li><li>ImportedBlastBentertainmentBeachB	sometimesBsharpBpickBpatternBfreshBfinishBfineB9''BseriesBdesignedB	beautifulBbasicBviscoseBuniqueBtrendyBseemBpairBorderingBfascinatingBaccentsB3''BwaterBofferBlayeredBideaBhe'sBfeatureBactorsB45%B14</li><li>SizeBtee'sB
technologyBshowsBgentleBcaseBvisualB	statementB	note</b>:BmanagesBgoesBenergyB	emotionalBduringBaccentBDisneyB</li><li>MadeB20BunderBsportsBrichBhistoryBflickBdetailsBdaylongBcompleteBcinemaBadditionBwarmBsinceBpredictableBmovingBlaceBdeepBbabyB	adventureB</p><ul><li>NecklaceB16Bwon'tBtwistBturnsBsubjectBinsteadBfiveBdolmanBcreativeB
casualwearB24''BwhoseBtitleBstylingBnearlyBmindBlong-sleeveBidealBhemlineBfashionBstylishBstretch</li><li>95%BnaturalBmatchingBcrewneckBchest;BallowsBactuallyB5'B4XB"<p>AddBup</li><li>Imported</li></ul>BtryingB
screenplayBnowBmrBincluded</li><li>1X=BdoneBdarkB	<p>LittleBsmartBmatterBhumorousBeffectsB6''B33%BvideoB
v-necklineBstretch-enhancedBsleeveBprojectsB	narrativeBlacksBfigure-flatteringB,dry</li><li>Imported</li></ul><p><b>ShippingB	directionBcomicBboringB8''B8%B24WB18BwritingBwallsBspiritBletsBleaveBfigureBwashBv-neckBtrend-rightB
throughoutBsheerBsheBpremiseBhorrorB
effortlessBamusingB"<p>FeaturingBsmoothBsizingBprojectBprobablyBplaysBpantsBmovie'sBmessBfanBbecomesBItsB</p><p>&nbsp;</p><ul><li>65%B"<p>SoftBwarBschoolBrockB
recommendsBlovelyBideasB	hilariousBhalfBgenreBcreatesBbeyondBwomenBwittyBstandoutBportraitBmenB	maternityBlayerB
intriguingBfamiliarBendingBalthoughBGBB27BworstBshippingBrunBproblemBpowerfulBmatchBlevelBintelligentBflauntsB	enjoyableBengagingBdebutBcontrastBUSA</li></ul>"""B4''B1''BwhetherBwhat'sBturnBtoneBtime:BtheaterBsortBromanceBpocketBpersonalBpastBlackB
especiallyBenlivensBeffortB	differentBanimatedB
adventuresB26WBversionBstrongBsleekBquirkyBputBjohnBinterestBguyB
filmmakersBeveryoneBblackBSoftB/</p><p>&nbsp;</p><ul><li>Prewashed</li><li>100%BwitBshotBsceneBobviousBmostlyBlivesBlineBinsideBformulaBendlessBcheerfulBcheekyBwarmthBsoftnessBsafeBpaperBleavesBgettingBgameB
delightfulBcultureBH</li><li>Vinyl</li><li>MadeByou'veBwhiteBwallBusesBup</li><li>MadeBstudyBprovideBnotesBlivelyBleftBknitBgentlyBfrenchBexerciseBeitherBdramaticBdirectedBdeeplyBairBactorBMPB36''B2''BversatilityBuseBultimateBsubtleBshorts</li><li>100%BreusableBprovesBpiecesBofferingBmeansBincludesBhem</li><li>ModelBhem</li><li>63%BfriendsBformBcutoutsBcontrastingBartistsB<p>ShowB45''B38%BviewersBtouchingBsurprisinglyBstretch-infusedBslowB	recommendBpassionBpaintsBneedsB	melodramaBlikelyBiPhoneBheadB
filmmakingBendsBelseBeffectBcuteBcartoonB	brilliantB<p>TheB&ndash;BwhimsyBsummerBskirtB	removableBrareBniceBmovementBjokesBinternationallyBhandBfutureBdumbBcloseBbelieveBbeautifullyBacrossBWeB30%B30B"<p>TheBusingBtrimBsuppleBstuffBsadBrecentBreasonBoperaBneitherBlayeringBi'mBhairBgraphicsBexactlyBedgeBdeathBchildrenB	certainlyBcasual-coolBcameraBbuttonsBbehindB<p>AnB28BwildBtrulyB	shouldersBremoteBoccasionallyBimagesBhuesBholdBhimselfBfactBduoBdidn'tBcontrolBbrushB26B"<p>MakeB"<p>KeepBtalentBstripeBsoapBsmilesBskimsBqualityBpromiseB
productionBprintedBmagicBlimitedBleggingsB	importantBhem;Bgr-alertBflatBfittedBfailsBeyeBelegantBcutoutBcasual-chicBbookBbasicsB	audiencesBacrylicB<p>BringB<gB24B"<p>BoastingBwinningBvisuallyBtvBthey'reBtellBteesBsuspenseBstandBroleBrideBjeansBhourBhandyBguysBgirlBfestiveB	excellentBeaseBdrapingBdisplayBcrimeBcomplexBclean</li><li>MadeBblockB	attentionBactiveBterrificBstoriesBspaceBseriousBrealityBquickBpsychologicalBpretentiousBmustBliveBimaginationBhelpsBcraftB	button-upBartisticBAnB34''ByourselfBwashableBviolenceBtextureBstartsBsitBrunningBnoneBnightBmmBmichaelBmemoryBmeetsBgotBdressingBdressBdecalsBcontemporaryB
class=\gr_BblueBwrongBusedBtriesBtop'sBtoldBtasteBstaysBsoundBsocialBshirtBseeingBremainsBquicklyB	politicalBpleasureB	patrioticB
impossibleBheatBgivingBgagsBdecalBcleanBchoiceBcallBbarelyBbandBaloneB25BvisionBtruthBtreatB
thoughtfulBstyledB	showcasesB	sensitiveB
satisfyingBpure-cottonBpossibleBpleaseBplaytimeBparentsBnovelBnorB	must-haveBmixBlooseBletBleadBknowsBkeepingBjuniorsBhavingB	flauntingB
emblazonedBdrapeBdigitalB	difficultBcreepyBcoldBclosetBbreezeBartistBagainstBaboveBUSA</li></ul><p>&nbsp;</p>"B</p><ul><li>1XB33''BwrittenBwideBvibeBsurfaceBstarsBsecondBroundedBprocessBponchoBparticularlyB	otherwiseBlogoBlinesBinnerBiPadBhitBhips</li><li>Knit;BhighlyBhandsBgoneBfringeBfoundBfinalB	filmmakerBeightBearnestBdidBdelicateBday-longBcoming-of-ageBchangeBbottlesB<p>LetB95%B20%B15BworkingBuntilB
thoroughlyBsuperBstorytellingBsingleBsidetailBshort-sleeveBsatireBquietBprideB	potentialBoptionsBmoralB	memorableBlowBlargeBhonestBheroBhem</li><li>Mannequin:BgorgeousBgirlsBflattersBfitsBfastBfallsBedgyBdoseBdoingBdashBcoordinatingBcomfortablyBcollegeBclichesBcarBbutterB	animationBamountBallureBallowBaddingBL:B–BweatherBvividBtoughBtimelessBtakingBstripedBsoundsBsophisticatedBsexBsci-fiBrotationBroomyBrarelyBpolishedBpagesBnatureBmysteryBmerelyBlotsBlaughBjerseyBintelligenceBinsightBgr_run_animBfinallyBfilledBeyesBelementsBeffortlesslyBdepthBdeadB	contrivedBcomediesBcenterBbeautyBattemptBamongBBabyB63''BwordsB	wonderfulBwonderBviewBthoughtBstraightBspyB	sparklingBsoothingBsequelBsassyBroutineBremakeB
refreshingBredBputsBprincessBpointsBperhapsB	perfectlyBothersBmomentBmoisture-wickingBmaybeBmarkBholidayBfocusBepicBentirelyB
engrossingBdetailedB
creativityBclearBclassBboyBbeginsBbasedBapproachBalreadyBalluringBworthyBworseBwaysButterlyBuponB
unexpectedBtouchesBtiredB
themselvesB
surprisingBsuggestBstrangeBstorageBspeedBseveralBqueBpicturesBpairingBoverallBopenBmoodBjobB
impressiveBgivenBfree-spiritedBflexibleBexpectBentireBenlivenBearlyBdeliverB
definitelyBdavidBcurve-skimmingBcourtesyBconceptBbagB	appealingB
adaptationBUSBB1XB12%BwelcomeBwantsBusualBtragedyBtediousBsurpriseBslightlyBsentimentalBresultBpreciousBperiodBneededBmoveBmodalBmessagesBmachineBlostBlivingBlatestBjokeBinspiredBimagineBimaginativeBi'veBhopeBhem</li><li>60%Bhem</li><li>50%BhealthyBhappyBgreenBgr_spellBgenuineBflirtyB flat</li><li>Imported</li></ul>"BexcitingBdisneyBdeservesBday'sBcreatingBcreamB
convenientBcombinationBbathBaddedBactBableBRetinaBItB</p><p>&nbsp;</p>B*B	"<p>TheseByou'dByear'sByBviewerBvibesBuglyBtryB	tri-blendBthinBtensionBteenBstickyBsportingBsplashBspandex</li><li>DryBsomeoneBshineBplayingBmonsterBmasterpieceBmajorBloudBinkBhouseBhem</li><li>94%BglitterBforgetBflat</li><li>Imported</li></ul>BfireBfairlyB	extremelyBextractB
excitementBeventsBdecentBcourseB	completesB	chemistryBcertainBcableBbeachBactedB<p>He'llB</p><p>&nbsp;</p><ul><li>2B</li><li>RecommendedB58%B100B10''B	"<p>BringB"<p>AnBwasteBvestBthrillsBtalentedBtakenBstageBspandex</li><li>Contrast:BsomewhatBsmileBsexualBrequiresBrememberB
remarkableBrelationshipBquestionBprovocativeBpolyester</li><li>Leggings:BplusBoBmurderBmoistureBmelodramaticBmeanBmagicalB	intricateBheavyB	heartfeltBgraceB	geometricBgenericBfriendlyBfeltBfantasyBexceptBemotionsBemotionallyBelasticB	effectiveBdesignsBdazzlingBcountryBcheckBcareerBcapBcamisoleBadultsBWi-FiBUSA</li></ul><p>&nbsp;</p>BSizeBMouseB	FeaturingB<p>GetB<b>SizeB</p><p>&nbsp;</p><ul><li>90%B</p><p>&nbsp;</p></p><p><b>SizeB7%B48%B31B11''B
"<p>LittleB"<p>LightweightBwornBweddingBwarm-weatherB	waistbandBupdateBunfortunatelyBtwistsBthemeBsustainB	surprisesBsurfacesBsupposedBsuffersBstartBstandardBspandexBslightBsizesBseasonBscaryBsBrufflesBruffleBrobertB	realisticBpullsB	providingBpoolBpoloBpocketsBpartyB	on-the-goBnylonBnursingBnewsBmildlyBmarkerBlaBkidBintrigueBimpactBimageBiiBhitsBhardlyBframeB	executionB	energeticBdryerBdrawBdealBdamagingBdamageBculturalBcomingBcityBcheeryBaren'tBappearsBXXLBIt'sB</p><ul><li>SideB</p><ul><li>50%B"<p>FromByesB$warranty</li><li>Imported</li></ul>"BvehicleBvarietyBtriumphBtripB	treatmentBstylesBstunningBsoulBsetsBsentimentalityBrollBroadBrevealsBreadBreachBpolyester</li><li>Pants:BplayedB
play-readyBpinkBpairsBpaceBoodlesBold-fashionedB	obviouslyBnumberBmissBminorBminiBmiddleBmasterBlotionBlevelsBleavingBlackingBinvitesBinspireBhoweverBhours</li><li>60BhellBgrippingBgamesB	fuss-freeBflawsBflawedB	finishingBfemaleBfashion-forwardBextremeBexpressBexaminationBequallyBepisodeBdynamicBdelightBdanceB
convincingBconstructedBcollarBcleaningBcaptivatingBbusinessBbump-friendlyBbondBbatteryBbadlyBawfulBattitudeBathleticBamazingBaliveBairyB	absorbingB
absolutelyBabilityBAmericanB<p>LendB
<p>EnlivenB46''B1XL:B15%BwomanB	virtuallyBunfunnyBunevenBtubBtreasureBtravelBtotallyBtermsBtees</li><li>100%BsuccessBsucceedsB	substanceBstoreB	slapstickB
situationsB	situationBshowcaseBsheaBshareBshadeBservesB	sequencesB	sentimentBseaB	refreshesBpresentsBpolyester</li><li>Shorts:BpoignantB
playgroundBpackBoutdoorBontoBnecklaceBmonthsBmissingBmetallicBleadsBkiddoBjoyB	inventiveBindeedB
historicalBhenleyBgoofyBgiantBgeorgeB
friendshipBfriendBfreeBforgettableBfareBdogB
disturbingBcurvedBcrowdBcraftsBcoordinatedBconvenienceBcontentBcombineBchestBchargerBcapturesBcalledBburnoutBbuilt-inBboysBblandBbizarreB	batteriesB	ambitiousBagoBageBadornedBactressBLEDB<aB"</p><ul><li>Prewashed</li><li>100%B</p><p>&nbsp;</p><ul><li>8B</p><p>&nbsp;</p><ul><li>6B</p><p>B38''B37%B32B22</li><li>SizeB"<p>YourB"<p>MadeB"<p>GiveB	youngsterBwithinBwho'sBweirdB
unsettlingBtoolBtomBteamBtalkingBstupidBstrapsBsnugBshe'sBsexyB	seriouslyBscentB)rear-facing</li><li>Wi-Fi</li><li>Output:BpositiveBpleasantBplainBpersonBpartsBpants</li><li>100%B	painfullyBpackedBpacingBnameBmotionBmoneyBmediocreBman'sBmachine-washableBlossBlongerB	lifestyleBkissBinvolvedB	inspiringBinspirationBhotBhoodieBholesBholdsBhempBheavenBhauntingBhappensBgrantBfullyB	formulaicBdreamBdapperBcuddlyBcrispBcreatedBcoverBcoupleBcouldn'tBconventionalBcheapBcharismaBcardBcannotBbreakBbottomBblowBattemptsBadornsBPureBD</li><li>PlasticB</p><p>&nbsp;</p><ul><li>92%B40''B35''B28W</li><li>55%B22W</li><li>SizeB2%B"<p>ShowBwriter-directorBwriterBwilliamsB
well-actedBurbanBunderstatedB
understandBtroubleBterribleB
televisionBtabletBsurpliceB	superheroBsuperficialBstyle=\font-size:B	structureB	strangelyBstevenBstandsBspookyBspectacularBsincereBsheetsBseason-spanningBsawBsaveB	remindersBrefreshinglyBpurposeBpoliticsBpoetryBoscarBorangeBopportunityBoddBnotebookBnontoxicBneutralBlaughterBintimateBintendedBinstantBinspiresBimaxBhugsBhoodBhomageBhem</li><li>97%BharmfulBgriefB	generallyBflowyBflicksBexudesBexploreBessentiallyB
equivalentBelastane</li><li>MachineBdragB
depressingBcowlBconsiderableBchild'sBchargingBchangingBcentralBcastingBcampBbust;BbuddingBbreathabilityBawesomeBaverageB
atmosphereBMinnieB
<p>RefreshB</p><p>&nbsp;</p><ul><li>3B</p><p>&nbsp;</p><ul><li>1X=B</p><p>&nbsp;</p><ul><li>0B*</p><p>&nbsp;</p><p>&nbsp;</p><ul><li>SizeB*</p><p>&nbsp;</p><p>&nbsp;</p><ul><li>100%B</p><p>&nbsp;</p>"B3X-B39%B24W</li><li>SizeB23ByorkBwhateverBwater-basedBvintageBunusualBunlikeBunaBtowardBthinkingBtemperatureBsweetieBsweatBsporty-chicB	spielbergB
soundtrackB	somewhereBslipBside-ruchedBseatBseamsB
ridiculousBrelationshipsBpriceBpolishBplasticBpayB
particularBpanelBpainfulBoutsideBoriginalityBnumbersBmixtureBmesmerizingBmannerBlovedBlightsBkeyholeBjapaneseB
irritatingB	involvingBintenseB	includingBiconicBhours</li><li>UsageBhem</li><li>Self:Bheavy-handedBhateBhasn'tBgrowsB	gross-outBgodBgiftB	genuinelyBgayBfurtherBforcedBforceBflashBfindsBfictionBfashionableBfallBeraBenhancedBeleganceB	easy-pairBeBdevelopmentB	detailingBdeeperBdateBdaringBcreditsBconflictBcatchBbroadBbritishBbrainBbohoBboastBbearsBasymmetricalBasideB
appreciateBamericaB	affectionB	affectingBaffairB
adjustableBaccommodateBaccessoriesBXL=14</li><li>SizeBUSA</li></ul></p>"B<p>TheseB<p>LightweightB<p>GiveB<p>EnjoyB	<p>CreateB<p><b>ShippingB*</p><p>&nbsp;</p><ul><li>Knit</li><li>100%B</p><p>&nbsp;</p><ul><li>96%B</p>"""B55%B"<p>WhetherB"<p>StayB
worthwhileBwordBwinBwifeBweakBwe'reB	watchableBwaistBunlessBtributeBtragicBtoyBtotalBtellsBsupportBsuperiorBstuntsBstrikingB	stretchesBstretch</li><li>96%BstickBstepBspiritedBsomehowBsliceBsilkyBshapeBsettingBservedBsecretBresultsBrestBrequiredBrawBrangeB	questionsB
protectionB	promisingBpreviousBpreventBpossiblyBplacesBpainBoverlyBnonsenseBmeshBmediaBlosesBlearnBlazyBlargelyBissuesBingredientsB
incrediblyBincluded</li><li>1XBiceBhugeBhoodedBhem</li><li>Plus:BheartwarmingBfollowBflatterBfilmedB	feel-goodBfearB	fantasticB	endearingBemptyBelementB	eccentricBdrearyB	directorsBdeftlyBdecorateBdarlingsBdailyBcrushBcrazyBcoverageB	connectedBcombinesBclichésBclearlyBchucklesBcauseBbringingBbooksBbattleBbalanceBaspiringBappliquÃ©BapartBacidBabstractB[a]BWithBStreetBSesameBOilB	<p>UpdateB<p>HelpB</p><p>&nbsp;</p><ul><li>97%B</p><p>&nbsp;</p><ul><li>1B29B22B&ByellowByarnBwouldn'tBwildlyBwicksBweekendBwearsBwe'veBviewingBtrackBtopsBtargetB
successfulBsprayBspendBsparkleBsourceBslickB
simplisticBsightBshorts</li><li>60%BshameBscreenwriterBsaltBrootBrevengeBreportB
repetitiveBremoveB
remarkablyBpunchBpullBproblemsBpoorB	pleasuresB
performersBpeelBpaysBparkBpanacheBnicelyBnearBmsBmovesBmindlessBmembersB
meditationBmasterpiecesBmaskBloversBlengthBleadingBlayersBlameBjersey</li><li>MachineBjacksonB
interestedBinstructionsB
insightfulBindieBhookBhipBguiltyBglassBgeneralB
frequentlyB
formulatedBfatBfaithBexhilaratingBexampleBevilBesBentertainedBenhanceBelBeffortsB
efficiencyBeditingBdÃ©corBdreamsBdisappointingB
director'sBdevicesBdeviceBcoreBclumsyBclothingBchannelBchalkB
celebratesBbuttonBbrownBbrothersBbrightlyBbowBboatBboardBbitsB
believableBbaseBawkwardBapplyBallenB	afternoonBactivityB
accessibleBTheseBCraftedBContextualSpelling\""B<p>MakeB41%B39''B22''B18''B13%B"<p>SportingB"<p>PureB"<p>Laid-backB"<p>ForBwishBwinnerBwindsBwindowBwasn'tBwantedBwaitBvisualsBvinylB	universalBumBtypicalBturnedBtoo-coolBtinyBtieBthought-provokingBthemesB	sweetnessBswathedBsurelyBsturdyBstopBstickersBstayingBstateBsportBsodiumBsnapBshotsBshorts</li><li>Tee:BshallowBscoreBscenarioBrivetingBringBribbedB
rhinestoneB	revealingBretroB
representsBreminderBreignBregularBpulloverBpublicBproveBprotectBproducedBpresentBpredecessorBpossibilitiesBplaidB
peppermintBpeel-and-stickBpatternsBordinaryBnowhereBniroB	necessaryBmoviemakingBmotifBmotherBmeaningBmarksBkevinBjamesBjack</li><li>ChargeBimageryBhuedBhere'sBhem</li><li>Knit</li><li>100%Bhem</li><li>90%Bhem</li><li>55%Bhaven'tBgroupBglowBglimpseBglidesB
generationB	franchiseBfootageBfolksBflowersBfillBfaithfulBfabulousBexpectedB
eventuallyBenhancesBdueBdrapedBdoubtBdisguiseB	directingBdiffuserB
determinedB
derivativeBdemandsB	deliveredBcurve-huggingBcurrentBcrimesBcountB	confidentB
complexityBcompanyB	communityB
commercialBcoloredBcleanerBchoicesBchillingBchildBchangesB	celebrateBcaperBbusyBbunchBbuildBboatneckBboardsBbloodBbirthdayBbackyardBarnoldBIsrael</li></ul>BClassicsBAAB	<p>DefineB<p>BreathableB<p>B</p><p>&nbsp;</p><ul><li>Self:B</p><p>&nbsp;</p><ul><li>4B</li><li>Scent:B</li><li>Imported</li></ul>"B90B64B42''B2002B16-18B"<p>EnlivenB—ByoutubeByouthfulByoungster'sBwryBworkoutBwonderfullyBwentB:wash</li><li>Imported</li></ul><p>&nbsp;</p><p><b>ShippingBwaitingBvsBviolentBvaluesBvalueButterB+up</li><li>Imported</li></ul><p>&nbsp;</p>"BunitBtypeBtropicalBtrimester-spanningBtrifleBtonesB	thrillingBthickBtellingBtastyBtalentsBtableBswingBsweetlyBsweepingBsubjectsBstretch</li><li>94%Bstretch</li><li>100%Bstory'sBstaticBstaleB	spiritualB	speciallyBsparkBsongsBsocietyBsittingBsignBshowingB
showcasingBshakeBsevenBsettingsBsequenceBsearchBscienceBsaysBsaidBrompBrolesBrepositionedBrenderedBrelaxed-fitB
reflectiveB
reasonablyBready-to-goBreadingBraysBraceBpromotesBprofoundBpopcornBpassBpacedBoverwroughtBopeningBoddlyB
nourishingBmurphyBmorningBmoralityBmontyB
meanderingBmaudlinBmarthaBmanageBlistBlinedBlikedBlightheartedBleggings</li><li>Top:BleafBladyBkitBkingBidentityBhumanityBhipsB
highlightsBhem</li><li>Model:BheartsBgrowBgreekBgreatestBgrandBgracefulBghostBgemBgangsterBfunnierB
fun-lovingBfridayB	followingBfluidBfavorBfatherBfarceBextraordinaryBexplorationBexcuseB
essentialsBemotionB	efficientB!dry</li><li>Imported</li></ul>"""BdressedB
distressedBdistinctiveBdevoidBdesireB	depictionBdeliveryBdelightfullyBdelBcourageBcomputerBcompositionBcoloringBcinematographyBchillyB
children'sBchaseBcharacters'BchanceBchallengingBcasuallyBcaptureBcable</li><li>6BbullockB	boho-chicBblockingBbelowBbellyBbehaviorB	beginningBbearingBavoidB	authenticB
attractionBartsB
appearanceBannoyingB
adventurerBadultB	admirableBaction-packedBachievesBEuropeanBBestB<p>SheB<p>BuildB/</p><p>&nbsp;</p><ul><li>Preshrunk</li><li>100%B</p><p>&nbsp;</p><ul><li>30''B42%B28W</li><li>100%B27\B23''B13''B
"<p>SimplyBzoneBxxxBwrappedBwoman'sBwhereverBwalkBvividlyBvacuumB	upliftingBultraBtwistedBtrioBtoss-in-the-washBtodayBtiresomeBtipsBtie-dyeBthree-pieceBthinksB	territoryBtalkBsystemBswimmingBsumBsuitsBsugarB
subversiveBsubtlyBstudioBstrokeB	storylineBstopsBstomachBstartedB	standardsB	spectacleBspeakingBsongBsmile-worthyBsleepBskillBsequinsBsavvyBsassBsandlerBsadeBryanBruggedBroughBrootsB
revolutionBreturnBretreadB
repeatedlyBrelyingBqueenBproudBprotagonistBpreposterousBpowersBportableBpolyester</li><li>Contrast:B	pointlessBpoeticB	playfullyBpizzazzB	pinocchioBphraseBpeterBperspectiveBpanelsBpadB
outrageousBoilsB	offensiveBodorBnastyBnailBmultiReplace\""B
moviegoersBmodal</li><li>MachineBmileBmediumBmattersBmartinBmanipulativeBloopB	literallyBlikableBlettingBkeyB
just-rightBitalianBironBinspirationalBinsightsBinformationB
individualB	hydratingBhref=\http://mcdnBhorribleBheart'sBharvardBharmlessBhappilyBhappenBhandkerchiefB	hackneyedB
guaranteedBgroundBfrustratingBfrontedBframesBflashyBfinishesBfightBfibersBfestivalBfearsBfairBfabricsBeventB	enlivenedBenjoyingBenjoyedB	endeavorsB
enchantingB
empoweringB	emergencyBembellishmentsBembellishedBdoubleBdisasterBdirtyBdirectsBdirectorialBdesperatelyBdesiredBdecadesBdamnedBcutsBcrewBcraftingBcoversBcoveredB
convictionBcontactBcomplicatedBcoconutBclosureBclicheBchrisB	chemicalsBchanBceramicB
cautionaryBcarryingBcarriesBcardiganBcandyBbroughtBbottomsBboredBbiteBbecomingBbalancesBattachedBassortedBaromatherapyB
apparentlyBantibacterialBanimalB
adolescentBaccentedBMadeBLightweightBH</li><li>PlasticB%D</li><li>Plastic</li><li>RecommendedBD</li><li>9BD</li><li>4B<p>CompleteB
<li>Women:B<li>Juniors:B</p><p><ul><li>SizeB</p><p>&nbsp;</p><ul><li>Missy:B</p><p>&nbsp;</p><ul><li>94%B</p><p>&nbsp;</p><p><b>StylingB9%B41''B16â€“18B14''B12px;\"">ShippingB12''B
"<p>OutfitB	"<p>GreatB"<p>CutBwriter/directorBwoodyBwitchBwiseBwetB	well-madeBwackyBvisceralBvintage-inspiredBusuallyBultra-modernBuB
trimestersBtrickBtookBtimelyBthat'llBtestBterryBtenderB	technicalBteacherBtalesBsympathyBsweetiesBsurrealBsuggestsBstylusBstylizedBstruggleBstrengthBstrapBstockBstereotypesBsplitBspinBspentBspareBsonBsnowBsnapsBsloppyBslimB
sleevelessBskillsBsketchB	sidetailsBshorts</li><li>Top:BserumBsavingBsappyBruffledBrogerBrichlyBrhythmsBresonantB	resonanceB	repellentBreliesBrecycledBrapBrainBpurpleBprofileB
pretensionBpresenceBpredictablyBpolyester</li><li>Skirt:BphotographyBpatienceBpatchesBparkerBparentBpants:BpaidBoversizeBovercomeBover-the-topBoff-shoulderBobservationsBnylon</li><li>MachineB	naturallyBmusclesBmugBmixedBmistakeBmilitaryBmikeBmetaphorBmentionB
mainstreamBmadBlow-keyB
low-budgetBlogicBlocksBlendingBlavenderBlateBlandBlacyBknownBkillerBkids'BjusticeBjunkBjasonBjacketBjBitemsBissueBinternal</li><li>Resolution:B
intentionsB	intensityBingredients:BinfusesBincreasinglyBillustrationsBhybridBhonestyBheyBheldBheightsBheadsBharryBhappenedBhandsomeBgunsBgrabBgr_grammBglossyBfront-facing/BfridaBfrankBformatBfootballBfoodBflawlessBfisherBfishB
first-timeBfingerBfindingBfiguresBfightingBfierceBfamiliesBfableBextendedB
expressionBexperiencesB	evocativeBenvironmentBempathyBemergesBeffectivelyBeasy-to-wearBeasierBdreamyBdreamerBdrawsB	divertingBdisplay</li><li>Storage:BdelightsB	decoratedB	dangerousBdamnBdaintyBcuttingBcuffsBcube</li><li>WorksBcruelB
crisscrossBcreationBcotton</li><li>Pants:Bcool-weatherB	continuesBcontainsBconstantBconsiderBconnectB	confusingB
confidenceB	conditionB	concernedBclothesBcloserBclichéB	christmasBchooseBchineseBchillsBcharmsBcenturyBcelebrationBcapeBbudgetBbrilliantlyBbrandBbottoms</li><li>100%BboostBboho-inspiredBblendsBblastBblairBbladeBbeneathBbelongsBbaseballBbalancedB
backgroundBb-movieBanswersBangstB	americansBadult'sBadoreBadapterBadamBactsBaccomplishedB	SupersoftB
Street</i>BPlusBMickeyBBrightB<p>TreatB<p>TopB
<p>ElevateB<p>CelebrateB	<i>SesameB<i>Frozen</i>B.</p><p>&nbsp;</p><ul><li>Prewashed</li><li>90%B</p><p>&nbsp;</p><ul><li>FitsB</p><p>&nbsp;</p><ul><li>5B.</p><p>&nbsp;</p><p>&nbsp;</p><ul><li>IncludesB</li><li>Ingredients:B80B65%B57%B3XLB3DB2XLB'theB"<p>WhenB"<p>WeB
"<p>CreateB"<p>BoldByokeBwowBworld'sBworkedBwoodBwomen'sBwindBwillingBwheneverBwell-meaningBweightBwastedBvoiceBviscose</li><li>MachineBverveBvariousB
unpleasantBunfoldsB
undeniablyBtwiceBturningBtriteBtressesB
transcendsBtraditionalBthey'llB	techniqueBtearsBtBsuspensefulBsuperbB	sunscreenB	stylisticBstuckBstrictlyB	stitchingBstealingBsqueezeBsquareBspoofBsouthernBsouthBsolondzBsmugBslouchyBsitcomBsinkB	sillinessBside-ruchingBsickBshort-sleevedBshockBshapesBserviceBserveBself-consciousB	selectionB	seeminglyBseedBsecretsBseasideBsaturdayBrusticBrulesB	rewardingB
revelatoryBrevealBresponseBrespectBrentBrenoBremindsB
relentlessBreleasedBreleaseBrelaxB
relativelyB	recognizeBrecipeBreceiveB	real-lifeBradiantBquietlyBpumpkinBprintsBprimeBpreppyBpoorlyB	polyamideBpoemBplottingBpityBphilosophicalBpersonaBpensBpeaceBpaulBpants</li><li>Tee:BpaletteBpairedBonscreenBofficeBnurseryBnuancedBnotionBnauticalBnature-inspiredBnationalBmusicalBmoisturizingBmodestBmockBmineralsBmildBmereBmenaceBmayhemBmatchedBmaleBmakersBmainBlovableBlong-lastingBlockBlivedBliteraryBlifelessBlessonBlargerBlanguageBkungBknowingBjonesBjealousyBinternal</li><li>Camera:B	instantlyBinoffensiveBineptBimproveBi'llBi'dB	holocaustBhillBhighlightedBhearB	happinessBhandleBgrittyB
gracefullyBgelBgangBfunniestBfront-facingB	forgottenBflowBfishingBfinestBfilmmaker'sBfalseBfailureBfacesBexoticBexcessBescapismBescapeBequalBendeavorBembarrassmentB	elegantlyB	elaborateBdudeB+dry</li><li>Imported</li></ul><p>&nbsp;</p>BdrugsBdrawnBdramaticallyBdotsBdotBdocumentB	diversionBdistanceBdiscreetB	disbeliefB	desperateBdegreeB	decoratesBdecal:BdealingBdarklyBdancingBcynicalBcutiesB	curiosityBcreditBcredibilityB	creationsBcotton;BcostumesBcorrespondsBcontrivancesBconquerBconBcomplementsB
compassionBcompactBcommonBclassicallyBclass=\""video-text-linkBcheesyBcheerBcharlieBchargeBcharacterizationsBchaoticBcasual-wearBcapableBbuildingBbuffsBbubbleBbrutalBbrushesBbrotherBbrokenBboreBboldlyBbittersweetBbiggerBbelovedB
barbershopBbBaskB
amateurishB	alongsideB
all-in-oneBalabamaB
adult-sizeBacrylic</li><li>MachineBacrylic</li><li>HandBaccountBXS=00-0BXS=0-1BXL=15</li><li>Women:B'USA</li></ul><p>&nbsp;</p><p>&nbsp;</p>BSimplyBSelectBS=3-5BS=2-4BNote:BM=7-9BM=6-8BLilyBLifeBL=11-13BL=10-12BIrishBCurvyBContextualSpellingBConstructedBCitiB	<p>OutfitB<p>GearB<p>DressB</p><ul><li>96%B</p><ul><li>95%B</p><ul><li>1X=B</p><p>&nbsp;</p><ul><li>63%B</p><p>&nbsp;</p><ul><li>27''B5\B59%B51B5'7''B5'10''B43%B2048B16</li><li>SizeB1536</li><li>Storage:B'70sB"<p>ShowcasingB"<p>PutB"<p>OfferingB	"<p>IdealBwroteBwhomB
waterproofB
watercolorB-wash</li><li>Imported</li></ul><p>&nbsp;</p>"BwarsBvulgarBvitalBvirtuesBvictimsBvampireBunsentimentalBunnecessaryBunlikelyBunintentionalB
uninspiredBunderstandsBunB
ultralightBtrimmedB	trimesterBtrend-savvyB	trappingsBtrappedB	traditionB	traceableB
tourmalineBtourBthrowingB	throwbackBthirdB
theatricalBtheatersB
terrifyingBterriblyB	teenagersBteenageBswimB
supportingBsuperblyBsuitedBstyle=\""font-size:BstringBstretch</li><li>97%BstreetBstirringB	startlingBstand-upBspotBspiteBspellBspeaksBspeakBsparklyBspandex</li><li>Knit;BsororityBsoggyBsoftlyBslowlyBslip-onBslasherBskipBsimple-to-matchBsignificantB	shouldn'tB
shimmeringBsheenBsensualBsendBsecureBsecondsBseamlessBscoresBscaleBsayingBruleBroundBrisesBrip-offBrhythmB
rememberedBregalBreducesBreduceBrecordBrealizeBrealismB
protectiveBproceedingsB
princessesBpreventsB	pregnancyB	precisionBpowBpotentiallyB
positivelyBpopularBpopsBpolyester</li><li>Bottoms:BpolkaBplastic</li><li>RecommendedBpetiteB	permanentBpenBpatheticBpastelBpartiesBpalsBpalB pages</li><li>Imported</li></ul>BoverlongBoutstandingBoptimalBoffbeatB	obnoxiousBnoteBnotchBnoiseBnight-lightBmuscleBmovedBmodelBmodal-video-link\"">SeeBmissesBminuteB
microfiberB	materialsB	marvelousBmarriageBmadonnaBlyricalBlovingBlistenBliesBlemonBleeBlawrenceBlaughingB	landscapeB	knowledgeBkitchenB	kissingerBins-delBinherentB	ingeniousBindustryBimpostorBimbuesBimbueB	hydrationBhusbandBhunterBhopkinsBhonestlyBhoffmanBhip-hopBhidingBheroesBhemsBhealthBhe'llBhandheldBhalfwayBguessingBgood-naturedBgoblinsBglamBgirlyBgiftedBgenresBgagBfruitBfrontalBfreedomBfrailtyBforeignBforcesBfollowsBfoamBflyB
flutteringBflowerBflauntBfinaleBfightsBfieldBfewerBfeetBfeastBfatalBfailBfactorBextractsB	exploringBexploitationBexpertlyBexpectationsB	existenceBexecutedBexceptionalBeraseB
enthusiastB
enthusiasmB	entertainB
enterpriseBenglishBengagedB	endlesslyB	emboldensBearthBearlierBdustB	dry-eraseBdropBdrollBdriveBdrawingBdragsBdivineBdisplay</li><li>Resolution:B
disappointBdieBdevastatingBdeserveBdeftBdefineBdeceptivelyBdavisBdashingBdamagedBcropBcredibleBcrapBcostumeBcontextB
constantlyB
collateralBcloyingBclichedB clean</li><li>Imported</li></ul>BclassicsBclarityBcgiBcatBcartoonsB	carefullyBcarefreeB
capabilityBcanvasBbuyBbustlingBbreathBbraceletBboxBbourneBbottoms</li><li>Top:BbottleBbitterBbiggestBbeatB	basicallyBbanalBbambooB	ballisticBballBautoBastonishingBassuredBartworkBarrivesBarmBapparentBanywhereBanswerBanneBalloverB	advantageBactualB	actressesB
activewearBachievementB[theBXL:BUSABProBNon-OEMBL</li><li>Plastic</li><li>WipeB%H</li><li>Plastic</li><li>RecommendedBH</li><li>PaperBGrammarBDVOBBox</li><li>IncludesBAirB<p>WhimsicalB
<p>UpgradeB<p>Stretch-enhancedB<p>SlipB<p>ShowcaseB<p>SendB<p>BoldB</p><ul><li>FitsB</p><ul><li>90%B)</p><p>&nbsp;</p><ul><li>Knit</li><li>95%B</p><p>&nbsp;</p><ul>B</li><li>ActiveB97%B50B40B18-20B17''B14-16B128B12-14B"<p>PerfectB"<p>LetB"<p>InB"<p>HelpB	"<p>EnjoyB"<p>EnhanceB"<p>DesignedBâ€”BwrapsBwoodenBwitlessBwinsBwindtalkersBwindowsBweren'tBweirdlyBweekBwatchedB
washingtonB"wash</li><li>Imported</li></ul>"""B	wardrobesBviscose</li><li>HandBvanBupperB	unnervingBunintentionallyB	unfocusedBunderstandingB	uncertainBtypesBtrendBtrekBtreatsBtrayBtrashyBtrashB	transformBtoysBtownBtouchedBtonsBtongue-in-cheekBtimingBticketBthrowsB	thrillersBthrillBthematicB	testamentBtendsBteethBteensBtaskBsweaterBsurefireBsunnyBsubtletyBstrikesBstrainBstiffBstatusBstarringBstagedBspiritsBsourBsoothesBsoonBsomberBsoderbergh'sBslyBslimmingBslapBsimultaneouslyB
simplicityBsilenceBshowtimeBshorts:BshootingBshootBshockingBshakersBsettlesBservingBsequelsBsensitivityBself-indulgentBselfBseemedBseagalBscreenwritingBscratchBscorseseBsatisfyBsandraBsafelyBsadlyBrushBrun-of-the-millBrousingBroteBroseBrobinBrhinestonesBresidue</li><li>MadeB	resemblesBreplaceWithoutSep\""BreliefBrefusesBrecoveryBrealizedBreactionBrandomBputtingBpushesB
punctuatedBprofessionalBproductB	presentedBprepBpredecessorsB	practicalBpotentBportraysB	ponderousBponderBpoliceBploddingBpleasingBplaytime-spanningBplanetBpianistBphysicalBperverseBperBpencilsBpathosBpathBpatBpartialBparableBparaBpants</li><li>Top:Bpaint</li><li>RecommendedBoutingB	outdoorsyBone-of-a-kindBolderB	obsessionBobservationBnonethelessBnon-stretchBnightsB	nightmareBneverthelessBnecessarilyBneatBnarcB	mysteriesBmyselfBmultipleBmuddledB	movementsBmouthBmouseBmonstersBmomentumBmod-chicBmixingBmissedB	miserableBmindsBmillerB
metropolisBmetalBmeritBmemoriesBmeasuredBmeasureBmeantBmasterfullyB	masterfulB	manhattanBmanagedBmajesticB	maintainsBmainlyBmagneticBmadnessB	luxuriousBlusciousB	ludicrousBlovesBloungingBlookedBlocalBlipsBleggings</li><li>100%BlaterBlaneBkickBkeptBkaufmanBjumpBjackBiranianB	intuitiveBinstallmentB
innovativeB	indulgentB
incoherentBinaneB
impressionBimplausibleBhuntingB	humorlessBhughB	householdBhips</li><li>Woven;Bhips</li><li>96%BherselfBhem</li><li>48%BheardBhandmadeB	halloweenBhBguessBgrown-upBgrimBgreyBgrandeurB	graduallyBgoslingBgoryBglowingBgenerousBgatheredBgardenBfunctionB	full-termBfrighteningBfree-flowingB	fragranceBfocusedBflaredBfeature-lengthBfateBfasterBfancifulBfamousBexceptionallyBeuropeanBensuringBemBelevateBelbow-skimmingBelbowBelastic-backB	easygoingB
easy-goingB	easy-careBdysfunctionalBdudBdropsBdragonB	downrightBdomesticB
disjointedBdisappointedBdinosaurB
differenceBdestinedBdestinationBdemonstratesB	deliciousBdebrisBdeadpanBcustomizationBcurlingBcupsBcultBcubeBcrochetBcrayonsBcraftersBcradleBcouchBcotton</li><li>Shorts:BcoordinationBconveysBconveyBconversationB	conundrumBconsistentlyBconsideringBconsciousnessBconfiguringB	competentBcompatibilityB	committedB
comfy-coolBcomfy-casualBcomfortsBcomedicB	collectedB	co-writerBclumsilyBclooneyBclipBchuckleBchoppyB
child-sizeBchelseaBcharismaticBchannelsBcategoryBcarryBcarefulBcameBcalmingBcBburnsBbuiltBbotherBbohemianBbodysuitBbodiceB
blossomingBbloodyBblankBbeltBbeastBbaby'sBavoidsBathleteBasksBartsyBarmsBappearBapparelBanywayBamusedBamountsBambitionBalasBaidBaheadBafraidBadventuringBadornBadmireBadamsBabuseBabsurdBVBSpandexBS/M:BLycraB8H</li><li>Vinyl</li><li>Self-adhesive</li><li>RepositionBForBD</li><li>RecommendedBBarbieBBaby'sBApparelB
<p>StripesB	<p>SpreadB
<p>PlayfulB	<p>FlauntB
<p>ChannelB<p>BrightenB<p>AdornB</p><ul><li>Juniors:B.</p><p>&nbsp;</p><ul><li>Prewashed</li><li>60%B'</p><p>&nbsp;</p><ul><li>FastDryâ„¢B</p><p>&nbsp;</p><ul><li>70%B</p><p>&nbsp;</p><ul><li>26''B%</li><li>Nontoxic</li><li>RecommendedB</li><li>AcrylicB88''B6sB61%B36B33B32GBB20-22</li><li>SizeB17%B15</li>B'60sB	"<p>UsingB"<p>StripesB"<p>RefreshB
"<p>GhoulsB
"<p>ExpandByuBwriteBworkoutsBwishingBwilsonBwilde'sBwickedlyBwhollyBwhaleBwestBweeksBweather-resistantBwarningBwantingB	wallpaperBvolumeBvoicesBvisibleBvelocityBvagueBurgencyBunimaginativeB	uniformlyBunforgettableBunflinchingBuneasyBundoubtedlyB
undercoverBunconvincingBuncompromisingB
ultracomfyBtwo-toneBtuxedoBtsaiBtruckBtroopersBtriedBtricksB	tragediesB	trademarkBtopicBtoolsBtipBtheatreBtepidBtemptingBtee:BtautBtapeBsweptBsweetestBswayingBswallowBsustainsBsuspectBsupplyBsuppliesBsupernaturalBsun'sBsunB	sumptuousB	sufferingBsuccumbsBstuntBstuartB
structuredBstretch</li><li>MachineBstretch</li><li>92%BstrandsBstraightforwardBstiltedBsticksBstephenBsteelBstealsBspunkyB
spider-manBspiceBsoulsB	solid-hueBsolarisBsoftenBsoberingBsmilingBsmellBslitsBslackBskirtedBsitsB
sisterhoodBsilentBsignsB	signatureBshowerBshadowsBsensibilityBseesBsecuresB	secretaryBscreenwritersB	screamingBscopeBschwarzeneggerBsceneryBsavedBsaraBsantaBsaluteBsafetyBsadnessBrussianBromanBrollsBritchieBriseBripeBriceBreturnsB
resolutelyBresistB	representB
repositionBremainB	religiousBrelentlesslyBrelaxingB
relaxationB
referencesBreachingBraunchyBrateBranksBqBpurelyBpulledB	protectedBprogramB	producersBproduceBprivateBpressureB	preshrunkBpreachyBpracticeBpracticallyBpotterB
positionedBpolyester</li><li>Tee:BpokemonBpointedB	poignancyBplottedBplanBpitchBpicBpianoBphoneBpepperBpeekBpayoffBpayingBpatientBpartlyBparodyBparaben-free</li><li>MadeBpal'sBpaintedBpacksB	overblownBoutlineBoutdoorsB	organizedBoptionBopportunitiesB	operationBonly-insBon-the-moveBoils</li><li>MadeBodeBoccasionB	objectiveB	notoriousBnoticeBnosesBnon-stopBnoirBnobleBnicholasBnetBnautical-inspiredBnamedB	murderousB
moviegoingBmoore'sBmoodyB
monotonousBmodal</li><li>HandBmistBmiracleB
minimalistBmiddle-agedBmessyBmessesBmedicineBmeaninglessBmealBmatthewBmatineeBmarvelBmarketBmarkers</li><li>Packaged:BmBloverBlousyBlive-actionBlistsBlistlessB	lightningBlightlyBlifetimeBlife'sBleatherBleadenBlayer-readyB	laughableBlady'sB
lacklusterBlabelBknotBknewBkilledBkapurBk-19BjoeBjimBislandBis]BironyBironicBirishBinvitingBinsomniaB	innocenceB
infectiousBindoorsB
incredibleBincludeBincisiveB
improbableB
importanceB
impeccableB	imitationBill-conceivedBhumourB
horrifyingBhopingBhopedBhollowBholeBhilarityBhigherB	high-techBhigh-performanceBhideBhiddenBherzogBhem</li><li>UPFBhem</li><li>Knit</li><li>60%Bhem</li><li>85%BheavilyB	heatheredBheartbreakingB
headphonesBhauntedBharshB	happeningBhandfulBhallmarkBgumBgreaterBgrayBgratingBgoreBgodardBgloryBglibBgigglesBgenerateBfuzzyBfull-lengthBfringedBfreaksB
foundationBform-flatteringBfluffBfloorBfloatingBflavorBfinishedBfingersBfilmeBfellowBfeatherlightBfancyBfameBfallingBfakeBfabric</li><li>100%BexquisitelyB
expressiveB
expositionBexplorerBexploitativeBexpenseBevokesBevidenceB
everywhereBentryB	enjoyablyBengageBenB	emptinessBempowermentB
emphasizesBemergeBembroideredBembraceBelevatesBelephantB
electronicBedgesBeddieBecksBeasy-to-pairBdvdBdudesBdualBdrugBdreamersBdownerBdoodleBdongBdonBdocumentariesBdisney'sB	dimensionBdigBdidacticBdiameter</li><li>PlasticBdesperationBdespairBderridaBdepthsBdenyingB	demandingB
deliveringB
delicatelyBdecidedBdecals</li><li>Sheet:BcutenessBcurve-flatteringBcupBcryBcrudeBcriticalBcraftyBcotton</li><li>Contrast:B	convincedBconductBconcentratorBcompressionB
commentaryBcomedianBcomBcoherentBcoffeeBclunkyBclosetsBcloselyBclingBcleansB	christianBchosenBchillerBchickBchevronBcheeseBchargedBcharacter'sBchancesB
challengesBcatchesBcarriers</li><li>2BcaresB	capturingB
can't-missBcamoBcallsBcaineBburstBburiedBbuoyantBbrushedBbruceBbriefBbottle</li><li>MadeBborrowsBbitingBbiopicBbenigniBbenefitsBbedroomBbeachyBaustinB
attractiveBastonishinglyBaspectsBasianBartistryBartificeBartfullyBartfulBarrayBareaBaquaticBappropriateBanticsBanthonyB	america'sB	ambiguityBamBaloeBallegoryBalcoholBain'tBaimsBaimedBagingBadventure-readyBadhesiveB
additionalB
activitiesBaccommodatesB	accessoryBaccentuatesB	absurdistBabandonBUV-BUVBUSA</li></ul><p><bBUSA</li></ul></p>BTsumsBTsumBTheyBTVBStBSideBShippingBLittleBItaly</li></ul>B#H</li><li>Vinyl</li><li>RecommendedBGeneration</li><li>IncludesBDisney-PixarBDayB"D</li><li>Plastic</li><li>RequiresB,D</li><li>Plastic</li><li>Imported</li></ul>BD</li><li>Imported</li></ul>"BCozyBACB<p>SoftB
<p>EnhanceB<p>EmbellishB
<p>DelightB!</p><ul><li>Prewashed</li><li>60%B</p><ul><li>65%B</p><ul><li>55%B</p><p>&nbsp;</p><ul><li>SB</p><p>&nbsp;</p><ul><li>OneB%</p><p>&nbsp;</p><ul><li>MeasurementsB</p><p>&nbsp;</p><ul><li>55%B</p><p>&nbsp;</p><ul><li>28B</p><p>&nbsp;</p><ul><li>25B</p><p>&nbsp;</p><ul><li>15B$</p><p>&nbsp;</p><ul></ul><p><b>SizeB.</p><p>&nbsp;</p><p>&nbsp;</p><ul><li>Juniors:B
</li><li>5B
</li></ul>B98%B90%B62''B56%B3X:B32%B2ndB27%B26\B17</li><li>Women:B160B12â€“14B12WB000B'emB"<p>VibrantB
"<p>UnlockB"<p>SupersoftB	"<p>SheerB	"<p>RelaxB"<p>GetB
"<p>GentlyB"<p>EmbraceB"<p>CoordinatingB"<p>AnyB"<p>Bâ€¢BzhangByoursByearningBya-yaBwritersBwrapBworryBwooB	wonderingBwilcoBwhisper-softBwhat-to-wearBwell-writtenBwell-intentionedBwell-craftedBwelcomesB
weaknessesBwatercolorsB,wash</li><li>Imported</li></ul><p>&nbsp;</p>B*warranty</a></li><li>Imported</li></ul>"""BwannabeBwandBwallaceBvitalityBveinBveersBvapidBvaluableBupsBupdatesBunsatisfyingB
unoriginalB	unlikableBuniquelyB
unfamiliarB
unfaithfulBundoneB
underlyingB
undeniableB	undefinedBuncomfortablyBunableBunabashedlyBtunic'sBtuckB
tremendousBtransporterBtransitionsB
transformsBtrainBtraceBtoxicBtoscaBtorturedB	top-notchB	too-sweetBtonyBtoddBtightBtiesBthumbsBthomasBtextBterrorBtermBtenseBtechiesBtasselBtapBtadpoleBtacklesB	sweetie'sB
sweetheartBsweat-wickingBsurroundingBsupervisionB	superstarB
super-softB	sunflowerBsuitBsuctionBsuckB
substituteBsubstantialB	submarineBsublimationBstyle-savvyB	stupidityBstripBstrikeB	stretchedBstretch</li><li>Self:BstrainsBstrainedBstoneBsteveBstationBstartingBstaplesB	stainlessBspringBspontaneityBsplashedBspiderBspecificallyBspacesBsourcesBsoulfulBsorryB
sophomoricBsophisticationBsootheBsomebodyB
soderberghBsnugglyBsnapshotBsmoochyBslumberBslenderBsleepingBskullBskirt</li><li>100%BskimBsketchyBsinksBsinglesBsingingBsinBsimilarBsilverB	shyamalanBshutBshinyBshiningBshinesB	shapelessBshamelesslyBshaggyBshadowBseverBserviceableBserialBsequinBsensorBsensationalBseemingBseatsBseasBscrapeBscoobyBschemeB	scatteredBscaresBsardonicBsarandonBsaneB	sandler'sBsandBsamBsaltsBsailorBsagaB	sacrificeB
saccharineBrowdyBrougeBroomsBrollingB	rodriguezBrobertoBricherBrichardBrevelationsBretro-inspiredBretinaBresponsibleBrespectableB
reputationBrepositionableBrepleteBrepeatedBrentalBrelieveBreliableBreleasesBrel=0\""BrefugeesB	redeemingBreachesBrange:BramblingBradiatesBracialBquick-dryingBquestBquarter-sleeveB	qualitiesBpulseBpullingBpsychologicallyBprotectsB5protection</li><li>Thermo-regulation</li><li>MoistureBprisonB	primarilyBpretensionsBpresentationBpreparedBprehistoricBpraiseBpotB	portrayalBporousBporBponyBpolymerBpolyester</li><li>TeeBpoliticallyBpolanskiBpoisedBplayersBphotographedB
philosophyBphilipBperformBpeakBpatchBpassagesBparanoiaBparadeBparaben-freeBpaintingB#paint</li><li>Nontoxic</li><li>MadeBpageBpacinoBoughtBoptimizeBopsBoliveBohBoffendBoff-dutyB
occasionalB	observantBobjectBnuanceB	nostalgiaBnineBnicklebyBnairBmutedBmust-seeBmooreB	moonlightBmodal</li><li>DryBmixesBmix-and-matchBmirrorsB	metaphorsBmermaidBmenuB
mediocrityBmedicalB	mechanicsBmatureBmarkers</li><li>6Bmanagement</li><li>PartialBmaintainBloyaltyBlosingBlongingB
lonelinessBloftyB	locationsBlived-inBlionB	lingeringBlinenBlimpBlightingBliftBlieBliberalBlettersBletterBlessonsBleighBleggedB	legendaryBlee'sBleanBlastsBlakeBladiesBlBkoreanBkicksBkBjustifyBjoylessBjournalBjewishBjewelryBjersey</li><li>SILVERION+BjackieBjack</li><li>UsageBit'llBirwinBirresistiblyB
invincibleB
introducesBintoxicatingBintimacyBintermittentlyB	interfaceBintentBintellectualB	integrityBinnocentBinitialBinfusedBindependentBinconsistentBinconsequentialBincidentBimprovedBimpliesBimaginationsBillusionBiconBhypeBhydratesBhuppertBhorseBhopesBhopefulBhootBhonorBholmB	hoffman'sBheroineBhem</li><li>Woven;Bhem</li><li>92%Bhem</li><li>78%BhealingBhastilyB	harrowingBharrisBhangingBgraspBglycerinBglueBgloriousB
glitteringBgirls'BgirlishBgimmickBgeekBgathersBgBfuneralBfrillyB	freshnessBfreelyBfranticB
fragrance-BfourthBformerBfordBflowsBfleetingBfirmlyBfinesseBfilterBfilmmakers'BfillingBfiberBfeedingBfeatBfast-dryingBfamiliarityBfairyBfadedBfacialBexposesBexploresBexploitBexceedinglyB	evaporateB
eucalyptusBericBenormousBendureBempireB
embroideryBellingB	elizabethBeducationalB	educationBeditedBeatBeastwoodBearnestnessBearBeagerBdriesBdreamingBdrapesBdramasBdragonsBdrabBdownbeatBdoubleReplaceBdosesBdoorBdoodlesBdonovanB
disposableBdisplaysB
displayingBdishwasher-safeB	discoveryBdiscoverBdisappointmentBdieselBdevelopsB	developedBdeucesBdetail</li><li>MachineBdeskB	describedB	depressedBdependsBdenimBdemonsBdemandB
definitionBdefiningBdeedsB	decidedlyBdecideBdealsBdeadlyBdaytimeBdarkerBdarkenBdareBdahmerBdBcynicismB	curiouslyBculturesB
crossroadsBcrossBcroppedBcriticsBcriminalBcrassBcrackedBcouplesB	countlessBcornyBcornerBcopB
convolutedBconvenientlyB
controlledB	contrast:BcontoursB
consistentB
consideredBconsequencesB
connectionBconfusedBconfirmsBconfigurableBconcertB	computingBcompression</li><li>72%BcomposedBcomplicationsB
complexionBcombinedBcolor-poppingBcollarbone-baringB	collapsesBcobbledBclunkerBclubBclockstoppersB	climacticBclichédBcleverlyBcletisBclaustrophobicBclassyBcitrusB
citronellaBcinema-themedBcinema'sBcinchBcho'sBchicagoB
cheerfullyBchateauB	charmlessBcharacterizationB	certifiedBcellBcaughtBcastroB
cartoonishBcaringBcapturedB
cap-sleeveBcannesBcalmBcageBcabinetBby-the-numbersBburstingBbugsBbuddyBbrutallyB
broomfieldBbroad-spectrumBbritneyB
brillianceBbrideBbrianBbreaksBbreakingBbowsBboundBboogieB
boisterousBbogusBblinkBblindB	benigni'sBbenefitB	believingB	beguilingBbeginBbearBbeach-inspiredBbasisBbafflingBawareB	availableB	audaciousBattalBatopBathletesBassassinBaspirationsB
artificialBarrivalBappleBantwoneBanimeBangryBamy'sBamuseBamidB	ambitionsB	ambiguousB	amazinglyBalmondBallowedBalikeBalbumBaggressivelyBagentBafter-schoolBaffleckBadviceBachieveBaccurateBaccessory-lovingBaccessorizingBaccessorizeB
acceptableBacademyBWi-FI</li><li>IncludesBVerizonBStrongBStretch-kissedBSlipB
SILVERION+B	Patrick'sBOh-soBMachineB	LightningBIsrael</li></ul>"BIncBElmo'sBDesignedBD</li><li>PaperBD</li><li>Imported</li></ul>BCotton-blendBCottonB
CompletelyBColorBCDMAB<p>StayB<p>PutB
<p>EmbraceB<p>CozyB<li>Imported</li></ul>B</ul>B!</p><ul><li>Prewashed</li><li>90%B</p><ul></li><li>SizeB$</p><p>&nbsp;</p><ul><li>Side-ruchedB</p><p>&nbsp;</p><ul><li>80%B</p><p>&nbsp;</p><ul><li>52%B</p><p>&nbsp;</p><ul><li>28''B</p><p>&nbsp;</p><ul><li>1XLB</p><p>&nbsp;</p><ul><li>12B*</p><p>&nbsp;</p><p>&nbsp;</p><ul><li>SideB</li><li>SPFB</li><li>Imported</li></ul>B</li><li>HandB</b>B96%B93%B8-pinB640B63%B60B49%B46%B44''B4-ozB37''B30</li><li>Fragrance-B3-ozB2X:B28W</li><li>90%B250B21-23</li><li>SizeB21B20â€“22B20''B1970sB17-19B17B16''B13-15B1136</li><li>Camera:B101B1%B%B"<p>TakeB	"<p>SolveB"<p>SlipB"<p>PrintedB"<p>It'sB"<p>EmblazonedB
"<p>DefineB"<p>BrightenBéBzip-upBz-boysByouthByoungerByardByaBwould-beBwould'veBwisdomBwilliamBwilderB	wholesomeBwendigoB	weirdnessBweddingsBweavesBwaveB	wash</li>Bwarmed-overBwalletBwalkedBwBvolatileB
visibilityBvincentBversusBverbalBvastB	variationBunwatchableBunicornBunfortunateBunconventionalBuncomfortableB
unbearableBumaB
turtleneckBturkeyBtubesBtruthsBtriangleBtravelerBtranslationB	transcendBtrailerBtrafficBtoutBtossedBtoiletBtoesBtoday'sBtoastyBto-doBtitularBtitlesBtimerBthrownBthroatsBthreadsB	thousandsBthoughtsB
thankfullyB	terroristB
tendernessBtendBtenBtechnicallyBtearB	tarantinoBtanksBsympatheticBswingingB
sweatshirtBsweat</li><li>StainBswashbucklingBsuspendBsusanBsupremeBsuperheroesB
super-coolBsundanceBsulfate-BsucceedBsublimeB
subcultureBstudentsB
strugglingBstronglyBstretch-fitB	strengthsBstreetsBstreamlinedBstreaksBstickerBstevenson'sBstellarBsteersBsteepedBstealBstatement-makingBstainsBstaggeringlyBstagesBspunkBspotsBsplashesBspendsBspectacularlyBspa-likeBsoundlyBsoullessBsordidB	solutionsBsoloBsoldiersBsnipesBsnappyBsmoothlyBsmootherBsmarty-pantsBsmartlyBsmarterBsmallerBsmacksBslubBslogBskirt</li><li>Top:B
skillfullyBskillfulBsizzleB	sincerityBsimoneBsilky-smoothBshoulder-baringBshortcomingsBshiftingBsheridanBshelfBsharingBsharesBshakyBshakers</li><li>2B	sexualityBsensibilitiesBsellBself:BseeksBseekingB	seductiveBseasonalBseamB	scrapbookBscottBscotlandBscoredB	schneiderB	schaefferBscentedBscareBsavesBsaucyB	satiricalBrussellBrumorBrufflyBroutinesBrootingB
rollerballBroll-tabBrockingBrobBriverBriskBringsBrewardedB
revelationBrevelB
restrainedBresidueB	repressedBremotelyBremindedBremindBrelateBrejuvenatingBrejectedBrehashBregardB
reflectionBreflectB	redundantB
redemptionB	recordingB(recommended</p><p>&nbsp;</p><ul><li>100%BreasonsBreadiesB	ravishingBramsayBraiseBrageBradicalBrBquittingBquirksBquentinBquarterBqualifyB
quadcopterBpuzzlingB
psychologyBproperlyBproofB	prominentB
profoundlyBprobeBprintingBprincess-themedBprimingB	preciselyBpoweredBpostBpossibilityB
positivityBport</li><li>UsageBpornBpolyester</li><li>Top:BplymptonBplushBplot'sBplightBpleasurableBplayfulnessB	playdatesB#plastic</li><li>Imported</li></ul>"BpitfallsBpipeBpinchBpileBphthalate-free</li><li>MadeBphotoBphonyBpetBpersonalitiesB
perfectionB
perceptiveBpercentB
pedestrianBpeculiarBpdf\"">Plus"BpayneB	patternedBpatchingBpasticheBpassionsB
passionateBpassingBpassesBparadisoB
paper-thinBpalmaBpaisleyBpaintersBoverheadB	overcomesB	outfittedBoutfitsB	ourselvesBornateBopensBopennessBopaqueBones'Bone-coatBoliverBoctopusBobservedBobjectsBnumerousBnuancesBnoyceBnottingBnotableB	nostalgicB
nominationBnobodyBno-fussBnewcomerBnervousBneonBneighborhoodBnaturalisticB
mysteriousB	musiciansBmotivationsB	motivatedBmothmanBmorvernBmoresBmorallyBmonsoonBmoldBmoisturizerB
moisturizeB	modernizeBmobilityBml</li><li>MadeBmiredBminionsBmineral-richBmindsetBmillionBmetaphoricalBmendesB
melancholyBmckayBmartialBmarsBmarquisBmanufacturedBmannersBmannBmajorityBmaidBmagnificentBmachismoBmacabreBlyricismBlushBluridBlunchBlunacyBluckyBluckBlucasBlowerBlow-heatBlovinglyBlove'sBlosB loop</li><li>Imported</li></ul>"BlongestBlocalesBloadBlivenBliterateBliteralBlimitsBlilyB	lightnessBlight-heartedBlife-affirmingBlet'sBlesserBlegacyBlavishBlaughedBlapsesBlandmarkBlanBlaidBlacedBlabuteBlaboredBknockoutBkindaBkidmanBkiddieB	kaufman'sBjuvenileBjungleBjoyousB
journalismBjotBjonahBjollyBjerryBjeanBjarBjaneB	isolationBirresistibleBinvigoratingBinvestBintroductionB	interviewBinternationalB	intenselyBink</li><li>RecommendedBinhalerBinhabitBinfuseBinformativeBinfomercialB	influenceB
infidelityBinexplicablyB
inevitableBindividualsBindianB	incessantBin-your-faceB	impressesB	impressedBimpressB	immenselyBimmediatelyBimaginedBignoreBhypnoticB
humidifierBhugelyBhugBhref=\http://wwwBhowardBhotelBhorriblyB
hopelesslyBhongBhomespunBhokumBhittingBhintsB	highlightBhibiscusBheroicBhenryBhem</li><li>93%Bhem</li><li>70%Bhem</li><li>62%BhelpedBhealBhe'dBhawnBhatBharderB	haphazardBhanekeBhandledBhandcraftedBhamperedBhalf-heartedBhairsBgutsBgrossBgrin-generatingB
gratuitousB
grapefruitBgracesBgottenB
goodfellasBgongBgoldBglucoseB
gloriouslyBgingerBgiggle-worthyBghostsBgentsBgeniusBgenderB	geek-chicBgearBgarbageBgangsBfundamentalsB	functionsBfreemanBfreddyBfranceBframedBfoulBfortuneBforteBforgiveBforeverBfoolBfoiblesBfoam</li><li>RecommendedB
flourishesBflourishBfloridBflimsyBflashesB
flashbacksB
flamboyantBfitfullyBfingeredBfillsBfighterBfiercelyB	fictionalBfenceBfeathersB
feardotcomB
fast-pacedBfashionablyBfashion-inspiredBfascinationBfarrellyBfarmBfan-favoriteBfailingBfailedBfadeBfacileBextraordinarilyBexteriorB	exquisiteB
explosionsB	explosionBexploredB
experimentBexperiencedBexpectationBexistentialBexistB
exhaustingBexcitedBexcessesB	exceptionBexaggeratedBeverlastingBeveningBevaporationBetcBessenceBequilibriumBepisodicBenvironmentalBenthusiasticBenthrallingBentertaininglyBenterB	enigmaticBenigmaB	enhancingBengineerBenergizeBenemyBenduringBencouragingB
encouragesB	encounterBenchantmentBemploysBembracesBembellishmentBelusiveB	elongatedBegoyanBeggBeerieBeccentricityBeasy-fittingBeaselBearsBdyingBdyeBdutyB
durabilityBdumbed-downBdubiousB<dry</li><li>Imported</li></ul><p>&nbsp;</p><p><b><b>ShippingB1dry</li><li>Imported</li></ul><p>&nbsp;</p><p><b>BdrivesBdrivenBdrivelBdressesBdreadfulBdonningBdogtownBdogsBdiverseBdivaBdistinguishedBdistantB
disgustingBdisappointinglyBdirtBdirectBdinnerBdestructionBdescribeBdepictsB	dependingBdependB	departureBdenisBdemonstrateBdementedBdefinesB
decorativeBdecorationsBdecadeBdazzlesBdaughterBdannyBdangerBdadBdaBcurve-complimentingBcuriousBcrisisBcreditedB	creaturesBcoveringB	courtroomBcostnerBcoolestBcookingBconvinceBconvictionsB	conveyingBconversationsBcontemplativeBcontaminatingB
conflictedBconfessionsBcondescendingB
concoctionB
conclusionBconcernBconceitBcomputer-generatedBcomprehensiveB
complimentB
complementB
comparisonB	companionBcomoBcoastal-coolBclueBclipsBclingsB
clevernessBcleaner</li><li>16BciaB	chronicleBchoBchinaBchillB	childhoodBchewBcharmerBcharlesBchampionBchalkboardsB
chafe-freeBcenteredB	celluloidB	celebrityBcelebratoryBcarriedBcarpenter'sBcardsB	cardboardBcapsBcapacityBcampsBcampingB
camp-readyB
camouflageB
calculatedB	button-onB	butterflyBburstsB
bump-readyB	bullock'sBbuildsBbucksBbristlesBbriskB
brightnessBbrendanBbreathtakingB	breathingBbreathesB	brainlessBboxingBbouquetBborrowedBborrowBbootBbonesB	bollywoodBbogsBbogdanovichBboatsBblownBblack-and-whiteB	biographyB biodegradable</li><li>RecyclableBbindingBbillBbikeB
big-budgetBbetrayalBbetBbesidesBbenBbelievabilityBbeholdBbeatsB	basicwearBbarryBbarrelBbarkBbarBbandsB#bandages</li><li>Imported</li></ul>BbalmBballsBbagsBbag</li><li>12''BbabiesBawfullyBaweBawardBautomaticallyBauthorBattractBattention-seekingBassemblyBaspiresBartyBartist'sB
articulateBappropriatelyBappreciationB
applicatorB	appallingBanybodyBanimatesBangleBangerBangelsBangelBand/orBanchoredBanalyzeBanachronisticBampleB
altogetherBallowingBallen'sBall-naturalBaliensBalertBalBairflowBaimlessBafricanBafloatBaffectionateBadventurousBadmitBadequateBadaptationsBactionsB
accuratelyBaccuracyB	absurdityBWonderB
V-necklineBUseBStretch-blendBStockBSouthern-inspiredBSouthBSidetailBSide-ruchingBRuchingBOrganicBMcQueenBItaly</li></ul>"BH</li><li>RecommendedBEachBDurableBDisney'sBDeckedBDIYBChoiceBBreakerâ„¢BAwardB	<p>You'llB<p>ThinkB<p>SupersoftB	<p>SmoothB	<p>She'llB<p>PowerB<p>LayerB
<p>InspireB	<p>InfuseB	<p>DivertB<p>DecorateB
<p>ConquerB	<p>BrightB	<p>BestowB<p>AmpB
<p><p>ThisB<i>gameB</p><ul><li>Body:B</p><ul><li>1B</p><ul><li>B.</p><p>&nbsp;</p><ul><li>Prewashed</li><li>50%B</p><p>&nbsp;</p><ul><li>9''B</p><p>&nbsp;</p><ul><li>8''B</p><p>&nbsp;</p><ul><li>58%B</p><p>&nbsp;</p><ul><li>32B </p><p>&nbsp;</p><p><b>Note:</b>B(</p><p>&nbsp;</p><p>&nbsp;</p><p><b>SizeB</li><li>95%B</li><li>100%B%</li></ul><p>&nbsp;</p><p><b>ShippingB</i>withB94%B81''B76''B76B54%B500B50+</li><li>93%B48B47%B3XL:B300B3-DB25\B22%B20â€“22</li><li>SizeB19''B19%B15''B14</li><li>100%B14%B11%B06''B'n'B'iB"<p>WrapB
"<p>ToppedB"<p>TopB"<p>There'sB"<p>Stretch-kissedB"<p>SplashedB"<p>SpeciallyB"<p>ShoulderB"<p>SaturatedB"<p>Rub-a-dub-dubB
"<p>PamperB"<p>LongB	"<p>LightB	"<p>He'llB
"<p>EnsureB"<p>EnlivenedB"<p>ElevateB	"<p>DressB
"<p>DolmanB
"<p>DeckedB
"<p>DazzleB	"<p>ComfyB"<p>ComfortableB"<p>CelebrateB
"<p>CasualB
"<p>BrightB"<p>BeB"<p>AsB"<p><p>AB…BzipperBzhang'sBzealB
year-roundBxanthanBwriter'sBwreckBwrappingBwowedBworryingB
worry-freeB*works</a></p><p>&nbsp;</p><ul><li>IncludesBworkout-enhancingBwoo'sBwollterBwitnessBwitherspoonBwillisBwildeBwhistleBwhinyBwesternBwells'BweepBweek'sBweb-slingerBwearabilityBwealthBwaydowntownBwavesBwastesBwarfareBwalterBwakeBwahlbergBvitaminBvisitBvirtueBvillainBviewedBvictimBviaBvezBveteranBversionsBveraBventureBvelvetBvanityBvaguelyButilizesBuselessBusefulBurgeB up</li><li>Imported</li></ul>"""BunwieldyB	unusuallyBunpredictableBuniverseBuniversallyBuninvolvingBunforcedBunexpectedlyB
undisputedBunderwrittenBunderscoresBundercutB
uncommonlyB
unassumingB	two-pieceBtwinsBtwine</li><li>160BtuneBtruthfulBtrustyBtrustBtripsBtrilogyBtreeBtreadsBtransformationBtransferBtradeBtowardsBtoutsBtoutingBtossBtoppedBtitledBtieredBtiempoBthousandBthirstyBthey'dBthermometerBthermalBtherapyBtheoriesBthematicallyBthatâ€™sBtexturedB	terrorismB
terminallyBtelegraphedBtees</li><li>60%BteemingBtee</li><li>Necklace:Btee</li><li>Button-up:BtediumB
tearjerkerBteaBtaylorBtastefulBtangledBtallÍ¾BtalkyBtailoredBtag-freeBsymbolicBswingsBsweepBsurfingB	supremelyB
supposedlyB	sunny-dayBsunlightBsunkB
sun-lovingBsummer'sBsufferedBsufferBsuddenBsucksBsuckingBsuccessfullyB	subtitlesBsubplotsBsuBstumblesBstudsBstudentBstrongerBstrokesBstripsBstretch</li><li>75%Bstretch</li><li>70%BstorytellerBstoppedBstolidBstitchBstingB	stillbornBstearateBsteamBstatesBstarterBstarkBsquirtB	squandersBspunB	sprightlyBspreadBspot-onBspongeBsplendidBsplashyBspitBspiral-boundBspillsBspikeBspellbindingBspeed:BspeculationBspecificBspearsBsparksB	spaghettiBspaciousBsoybeanBsoreBson'sBsolutionBsolid-coloredBsolemnBsoftensBsoft</g>BsoccerBsoberBso-soBsnakeBsluggishBsloganB	slightestBslideBslapdashBskyBskirtsBsistersBsisterBsinisterBsingularBsingBsignificanceBsicklyBshrillBshrewdBshownB	showcasedBshoulder-exposingBshorts'BshorterB	shortallsBshootsBshoddyBshocksBshimmerBshiftsBshenanigansBsharkBshapedB	shamelessBshamBshadowyBshadesBsewnBsevereBsetupBsettledB$settings</li><li>Imported</li></ul>"Bsettings</li><li>HangingBsessionsBsessionBseriousnessBserBsentenceBsentBsensesB	sensationBsellingBself-deprecatingBseldomBseldahlBseinfeldBsectionBseasonsBsearingBsealBseBscrubBscript'sBscreensBscreamsB
scratchingBscottishBscience-fictionBschmidtB	schmaltzyBscathingBscarfBscarcelyBsaylesBsavageB	satisfiesBsatinB
sanctimonyBsalon-qualityBsalmaBsakeBsailingBsadisticBsaddledBrunnerBruinsBrugBrosemaryBromanekBrohmer'sBrohmerBrocksBroamB	road-tripBrisingBrigidBridiculousnessBrichnessBrewardsBreviewBrevealedBresurrectionB	restraintBrestfulBresponsibilityBresourcefulB	resortingBresonateBresistsBresinBresidentB
resemblingB
resealableBrequireBreplacedBrepetitionsBremovedBreminiscentB	remindingB	reluctantB
regardlessBrefreshBreflectsBrefinedBreelBrecommendationBreceivesBrecallsB	reappliedBreadableBratingBramBralphBraisesBrainyBraglan-styleBracesBracersBquiltersBquieterBqueensBqueen'sBpyrotechnicsBpushBpurposefullyBpuppyBpunkB
punishmentBpunchyBpumpBpulpyBpulpB	pull-awayBpryorBprurientBprovidedBprovedBproportionsB
propheciesBproperB
propagandaBprofessionalismBproductionsBproducesBproceedsBpristineBprimaryBpretendBpressBprepareBpregnantBpreferBpredictabilityBpreciseBprayB	pratfallsBpotencyBpostcardBpositionBposingBposhB
portrayingBportrayBpompousBpolyester</li><li>Button-upB
polyester;Bpoly</li><li>MachineBpolicyBpoleB
polanski'sBpokesBplungingBplotsBplotlineBplodsBpleatingBplatesB0plastic</li><li>Spiral-bound</li><li>RecommendedBplastic</li><li>MadeBplacedBpiquantB	pineappleBpilotBpigmentsBpiffleBpicture-readyBpiccoliBphthalate-freeBphotosBphonesB
phenomenalBpeskyBperoBpenaBpedigreeBpearlBpeacefulBpaxtonB	pathologyBpastelsBpartnerBparker'sBpants</li><li>Vest:Bpants</li><li>Shirt:BpanBpalpableBpaleBpages</li><li>RecommendedB!pages</li><li>Imported</li></ul>"BpaddedBpaBpBozpetekBoverwrittenBoverwhelmingBovershadowedBoutrightBoutfit-pairingBouterBoutdoorsmanBoutageBosBopinionBoperatesBopeningsB
one-linersB
old-schoolBol'BokayBodysseyBodorsBoddsBoceanB	obstaclesB
obsessionsBobscureB
obligatoryBnãoBnylon</li><li>HandB	numbinglyBnumbingB	nourishesB	notebooksBnote:</b>&nbsp;ThisBnortonBnormallyBnormalBnontoxic</li><li>RecommendedBnonstopBnonsensicalBnijinskyBnicksBnewbornsBnervyBnervesBnerveBnerdyBnemesisB
needlesslyBneatlyBnaughtyBnationBnarratorBnakedBnailsBnachtweyBmythicBmyersBmustyBmustardBmundaneB	multiplexBmudBmuccinoBmtvB
motivationBmotionsBmosaicBmortonBmoodsBmonteBmonochromaticBmonitorBmomBmodestlyB
modern-dayBmodeBmobBmisogynyBmishmashBmisfireBmischievousBmisanthropicBminorityBminimalBmineralBmind-numbinglyBmillionsBmilieuBmightyBmibB	mess-freeBmeritsBmentallyBmemoirBmemberBmelBmeetB
mechanicalBmeatB
meaningfulB	mcgrath'sBmaximumBmaxBmawkishBmavenBmatteBmassiveB	masculineBmasBmaryBmarryBmarriedBmarkers</li><li>WaterBmarkers</li><li>RecommendedBmarigoldBmapBmanipulationBmanicB
managementB	malkovichBmalcolmBmakeoverBmaintainingB	maelstromBmL</li><li>Ingredients:BlyingBlustBlumpBlowbrowBlow-voltageB	low-lightBlopezBlooselyB	loose-fitBlong-windedBlitBlistingsBlining:BlimitBlimanBlikingBlikeableBlighterBliftsBlicenseB
liberatingBliarBlewisBlensBlengthyBlearningBleaksBlbsB	laughablyBlaugh-out-loudBlast-minuteBlarkBlapBlanesBladylikeBlaborB	kosminskyBkongBkissingBkillsBkiddosBkickingBketchupBjuniorBjumbleBjuddBjoysBjoyfulBjordanBjoltingBjewsBjessicaBjayBjarringBjapanBjaggerBjacquotB	irregularB
ironicallyBinvolveBinviteB	invisibleB	inventionBintermittentBinteractiveBintellectuallyB	insuranceB	insultingBinsultB	instinctsBinsipidBinsectBinsanityBinnuendoBinlineBinjectB
inflatableB	infantileBinexplicableBinertB
improvisedBimpressivelyBimportantlyB
impersonalBimpenetrableBimpartB
imaginableBilluminatingBillBignoredBidiotsBidiosyncraticBidiocyBianBiPodBhustonBhurtBhurleyBhumidityB
humanizingBhudlinBhref=\https://wwwB!hours</li><li>Imported</li></ul>"BhostBhospitalBhorsesBhornB	hopefullyBhomesBholyBholderBhokeyBhippie-chicBhighestBheritageBhemlinesBhem</li><li>Knit</li><li>92%Bhem</li><li>High-performanceBhem</li><li>98%Bhem</li><li>75%Bhem</li><li>64%Bhem</li><li>58%BhelmerBheatherBheatedB
heartbreakBheadbandBhaynesBhartleyBhardwoodBhardwareBhannibalBhangersBhaneke'sBhandlingBhand-paintedB
half-bakedB
gyllenhaalBgunBguideBguestBguardBgrowthBgroupsBgroovyBgrislyBgreene'sB	greatnessBgreaseBgraveB	gratitudeBgradeBgothicB
gorgeouslyBgoofballBgoodwillBgoodnessBgood-heartedBgoalsBgoalBglycolBglycerylBgloveBglossBgloomyBglamourBgiftsBgermanBgeniesB	generatesBgearsBgearedBgarmentBgalsB
futuristicBfutileBfunctionalityBfun-graphicB
fun-filledBftBfrighteninglyBfriendshipsBfreneticBfreakyBfratBfraserBfranklyBfragileBfosterBforwardBforestBforcefulBfootBfollyBfollowedBfolkBfocusingB foam</li><li>Imported</li></ul>"Bfoam</li><li>Imported</li></ul>BflutteryBflutterB	floundersBflipBfleshB
flatulenceBflailingBflaccidBfizzBfishyBfish-out-of-waterB
first-rateB
fine-pointBfiennesBfestBfemmeBfeministBfelineBfeelingsBfeedingsBfeatherweightBfeather-lightBfavorsBfaveBfauxBfathersBfataleBfashionistaB	fashionedBfar-infraredB	fantasiesBfacingB
fabulouslyBeyreB	exuberantB	extensiveBextendsB	expressesBexploitsBexperimentalBexpectsBexpandsBexistsB	exhaustedBexcruciatingB	exclusiveBexcelsBexamineBevidentB
everyone'sBethnicBetherealBestrogenBestherBestablishedBescapistBeraserBepisodesBepicsB
entertainsBensuesBenrichedB
enormouslyBenlighteningBenjoysBenglish-languageBengagesB	enduranceBendedB	encourageB	emperor'sBemergingBembodiesB	elsewhereB
eloquentlyBeloquentB
eliminatesB	eliminateBelectricBegoBeditsBedBeccentricitiesBeasy-onB
easy-matchB	easy-liftBeasy-as-pieBearthenwareBearnsBeach</li><li>RecommendedBdynamicsBdusterBdumasBdukeBdryer:B8dry</li><li>Imported</li></ul><p>&nbsp;</p><p>&nbsp;</p>B,dry</li><li>Imported</li></ul><p>&nbsp;</p>"BdrownsBdrivingBdriverBdrewBdreckB	dragonflyBdrB	down-homeBdouglasBdoublesBdopeyBdoldrumsBdivideBdisturbinglyB
distinctlyBdistastefulBdishesB	disguisedB
discussionB	disarmingBdignityBdickensBdiaryBdianeBdevelopmentsBdevelopBdeterminationBdetachedBdestinyB
despicablyBdesk-to-dinnerBdescriptionB
depressionBdenzelBdenialBdemographicB
delectableBdejaBdegreesB
definitiveBdefiesBdeepestBdeckedB	deceptionBdecencyBdecals</li><li>Assembled:BdebateBdearBdazzleB	daydreamsBdassBdarnedBdarknessBdaresBdanielBdanaBdamonBcustom-likeBcustomB
curved-hemBcurve-lovingBcurve-complementingB
curmudgeonBcureB
cumbersomeBculkinBcrystalB	crochetedBcristoB
creepinessBcreatureBcreamyBcraneBcraigBcraftsmanshipBcrackB	cozy-chicBcourtBcountyBcounterpartsBcottonyB!cotton</li><li>Imported</li></ul>BcostBcorrectnessBcordBcopyBcopsBcoppolaBcontroversyBcontrollingBcontrivanceB	contrastsBcontradictoryBcontainB
conspiracyBconservativeBconnectionsBconjuredBconfrontBconditionerB
conceptionBcompulsivelyB
compromiseB
compatibleBcommerceBcomicsBcomedy-dramaBcomboBcombatBcombB	columbineBcollectivelyB
collectiveBcollarbonesBcollageBcohesiveBcogentBcodeBcluelessBclownBcloudsBclinicalBclimaxBcliche-riddenB
clear-eyedBcleanupBcleanedB!clean</li><li>Imported</li></ul>"BclauseBclaudeB	classroomBclassic-fittingBclaimsBcircleBcipherBcinematographerB
cinderellaBchurchBchuckle-inducingB
chroniclesBchristopherBchoreographedBchopsBchokesB	chocolateBchill-chasingBchiefB	chestÍ¾BcherishB	checklistBcheatedBchasesB
charitableBchan'sBchamberB	challengeBchafingBchabrolBcerebralB	centuriesBcellsB
celebratedBcatholicBcastsBcarvey'sBcarveyBcarolBcarmenBcapriBcanonBcannyBcampyB
campgroundBcallowBcallingBcallarBbustBburningBburnBbumpsBbump-lovingBbullBbuddiesBbudBbuckmarkBbrosnanBbrimsBbreathtakinglyBbreatheBbreastBbreadthBbraveBbrashBbrainyBbrainsBbracingBbouncyBbossBbornBbordersBborderBboneBbondingBbombBboggedBbodilyBbodiesBbluesBblockbustersBblessedBbleakBblatantBblameBbladesB
big-screenBbettyBbettanyBbestieBbenzotriazoleBbellBbelievesBbelievedBbeingsBbeijingBbehan'sB
beforehandBbedtimeBbedBbecameBbeach-lovingBbayBbathtubB
basketballBbartlebyBbarrelsBbardBbankBballotBbackedB	backdropsBawkwardnessB	awkwardlyBavaryB	authorityBauthenticityB
australianB
audience'sBaudacityB	athlete'sBat-homeB	assembledBasleepBartisticallyBarriveB	arrestingB	argumentsBargueBarchivalBararatBappreciatedB	appliquesBappetiteBappealsBantidoteBangularBangst-riddenBanemicBamiableBamateurishlyBamalgamBaluminum</li><li>RecommendedBalternativeBalternatelyBall-timeBall-inclusiveB
alienationBalienBaliceBalbeitBalarmBalanBakinBaimBahBafterschoolBaficionadosB	admissionB	admirablyB
adequatelyB	addressesBadapter</li><li>5BadaptedBadBactor'sBactive-readyBacrylic</li><li>LEDBacknowledgesB	acid-freeBachingB	accordingBaccompanyingBaccessory-friendlyBaccessB	abundanceBabsurdlyBabsurditiesBabsorbsBabsoluteB[it's]BXL=15</li><li>Womenâ€™s:BWhenBW</li><li>ThreeBV-neckB USA</li></ul><p>&nbsp;</p><p><b>BTheirBStretch-blendedBSpillingB
Spider-ManBSeaBScreenBSPFBPicassoBPeteBPersonalBPatrolBParisianBPairBOrangeBNaturalBNationalBLED-backlitBLCDBHerbalBHelpB*H</li><li>Paper</li><li>Imported</li></ul>B"H</li><li>Earthenware</li><li>HandBGuestsBGreatBFrenchBElsaBEasyBEasterBEBDoraBDisney-themedBD</li><li>Scale:BD</li><li>CottonBD</li><li>ABSB
CymbopogonBCitrusBCatBCare</li><li>Ingredients:B
CaliforniaB
BreathableBBrandBBoastingBArmorBAddBAAAB<p>SweetB<p>Star-spangledB<p>PureB
<p>ImproveB	<p>FrillyB<p>FlutteryB	<p>FloralB
<p>FlatterB
<p>FashionB<p>EncourageB<p>DonB
<p>CravingB
<p>ComfortB<p>ColorB
<p>ClassicB<p><bB<b>ShippingB</p><ul><li>Self:B</p><ul><li>Knit</li><li>100%B</p><ul><li>30''B&</p><ul></ul><p>&nbsp;</p><ul><li>100%B</p><ul></li><li>95%B</p><p><b>StylingB</p><p><b>S<b>izeB</p><p>&nbsp;</p><ul><li>UPFB</p><p>&nbsp;</p><ul><li>9B</p><p>&nbsp;</p><ul><li>85%B</p><p>&nbsp;</p><ul><li>6''B</p><p>&nbsp;</p><ul><li>4''B</p><p>&nbsp;</p><ul><li>16B</p><p>&nbsp;</p><ul><li>10''B&</p><p>&nbsp;</p><ul></ul><ul><li>100%B</p><p>&nbsp;</p><p>B</p></p>B</li><li>WinnerB</li><li>TransmitterB</li><li>SizeB</i>bandagesB98B95B	90-minuteB88%B85%B84B80%B8-ozB75%B75B69''B64''B600B5XB53%B5-ozB4everB450ÂºB45B42B3dB38B37B32\""B28W</li><li>SizeB28WB26%B256B24â€“26</li><li>SizeB23%B22</li><li>Knit;B22-24B20thB2002'sB1960sB19B18;B17</li>B16GBB150B14</li><li>Imported</li></ul>"B14;B12px;\"">SizeB10\B	100-sheetB05''B'whatB'aB
"<p>UpdateB
"<p>StyledB	"<p>StyleB
"<p>She'llB"<p>SendB	"<p>LivenB	"<p>LayerB"<p>LaceB
"<p>InvokeB"<p>InspiringB"<p>InspiredB
"<p>InfuseB"<p>DelicateB"<p>DashingB"<p>Cotton-blendB"<p>ContrastB	"<p>ColorB"<p>ClassicB"<p>ChannelB"<p>CasuallyB"<p>BreathableB	"<p>BittyB"<p>BeautifulB"<p>BabyB"<p>AmpB"<p>AllBzippyBzipBzigzagBzhaoBzeroByummyByouthful-lookingB
youngstersByiddishBxtcBwwiiBwrists</li><li>MediumBwristsB	wrenchingBwovenBwoundsBworshipBwormsB	workspaceBworking-classBwool</li><li>HandBwoodsyBwoodlandBwondersBwoefullyB	withstandBwishy-washyBwiserBwisemanBwiselyBwipingBwipeBwintryBwillowBwildlifeB
wildernessBwhodunitBwho'veBwhineBwhimperBwhereasBwheelsBwhat-ifBwerewolfB	well-wornBwell-directedBweightyBweighsBweepyBwebsiteBweavingBwaxBwatersBwater-resistantBwatchesBwashesBwashedBwartimeBwarriorsBwarriorBwarm;BwanesBwanderB	wallowingBwallopBwalksBwakingB	vulgarityBvuBvonB
voluminousBvolumesB
voice-overB
virtuosityBvintage-chicB	vincent'sBvillainsB	vignettesBviewsB
vietnameseBvietnamBvideosBviceB	vibrantlyBvibranceBvergeBverBventsBveniceBveneerBvendorBveinsB
vaudevilleBvastlyBvaryingB	variancesBvaleBuserBurgentBupgradesBupgradeBupcycledBupbeatB8up</li><li>Imported</li></ul><p>&nbsp;</p><p>&nbsp;</p>"B*up</li><li>Imported</li></ul><p>&nbsp;</p>BunwantedBunsurprisingBunrelentingBunpretentiousBunmemorableB	unmatchedBunlocksB
unknowableBunits</li><li>LowBunitedBuniteBuninterestingBuninitiatedB	unhurriedBunfulfillingBunfulfilledBunfoldB
uneventfulBuneaseB
underwaterB
underneathB
underminesB
underlinesBunderdogB
underbellyBundeadBuncannyBunbelievableB	unabashedB	ultracoolB	typicallyBtwistyB	twirlableBtwirl-readyBtwentyBtv'sBturtleBturgidBtunesB
tumultuousBtumultB
tulip-backBtugBtuckerBtubularB	troublingBtroubledBtropesBtroopsBtrickyBtrialsBtrialBtremorsBtreatiseBtreatedB	treasuresBtraysBtravelsB
travelogueBtravailsBtrapsBtrapBtransportingBtransparentlyB
transitionBtransgressiveBtransformedBtrailB
traditionsBtrackingBtowelBtouristsBtoteBtossesBtortureBtorporBtornBtopperBtopicalBtoo-cuteBtonightBtonalBtolerateBtoeBtissuesBtissueB
tiresomelyBtime-savingBtimBtileBtie-dyedBtickingBticketsBthrustB	throwawayBthrowB
three-hourBthree-dimensionalBthreatB
threadbareBthirtyBthirstBthinlyBthing'sBthey'veBthesisBthermolon</li><li>HeatsBtherapeuticBthemedBthankB	texturingBtexturesBtextbookBtensionsBtenorBtendencyBtemperaBtee</li><li>100%Btee'llB	tediouslyBtechnoBteasingBteachersBtatteredBtastelessnessBtartBtargetsBtarget=\""_blank\"">Six-monthBtarget=\""_blank\"">SeeBtapsBtappingBtamborBtallBtalksBtailor-madeBtailBtacticsBtackyBtabletopBtabbingBt-shirtBsymmetryBswipeBswimsBswimfanBswiftlyBsweetenBswedishBsweat</li><li>100%BswearB
swaggeringB	suspectedB	survivorsBsurviveBsurvivalBsurroundingsBsurroundB	surprisedBsurgesBsurface</li><li>SeamlessBsurface:B
sure-to-beBsuperficiallyBsuper-comfyBsunsetBsundayBsuitablyB
suggestionB
suggestingBsudsyBsuckedB	succeededBsubtextBsubstitutesBsubstandardB
subsequentB
sublimatedBsubconsciousBstylistBstylingsBstyle=\display:BstumbleBstultifyinglyBstudB	strugglesB	strongestB
striped-upBstringsBstrictBstretch-knitBstretch-cottonBstreakB
storylinesBstonesBstockedBstinkerBstimulatingBstickingBstewBstevensBstereotypicalBstereoB steel</li><li>Imported</li></ul>BstearicBsteadyBstasisBstarryBstarredBstaringBstandingB	stand-outBstalkerBstakeBstains</li><li>100%BstainedBstainBstagyBstableB	squirtersBsquarelyBsquaredBsqBsprecherB	sprawlingBspousalBsporadicallyBspoonB
spookinessBspontaneousBsplicedBspiralBspinsBspinningBspineBspikedBspicedBspeedyBspeculativeBspecimenBspecial-effectsBsparklesBspanishBspandex</li><li>Lace:Bsoul-searchingBsorvinoBsortsBsorelyBsomething'sB	solondz'sBsolidlyBsoleBsolaceBsoaringBsnazzyBsmoothsBsmith'sBsmithBsmile-inducingBsmashBsmartestBsmackBslouchy-chicBslitBslipsBslippingBslipperyBslimmerBsleepersBsleeperBslackersBskirt</li><li>60%BskinsBskin-baringBskiesB
skateboardBsizes</li><li>Packaged:Bsize:BsixthBsimple-mindedB	similarlyBsillierB	silk-likeBsightsBsidewalkBsicknessBshtickBshredBshorts</li><li>Polo:Bshorts</li><li>Button-up:BshoreBshopB
shockinglyBshockedBshiversBshirt:BshipsBsheets</li><li>10''BsheetBshe'llB
shatteringBshatnerBsharperBsharedBshapingBshanghaiBshakingBshakespeareBshakesBshakerB	shainbergBshadyacBseverelyBset-upBset'sBsequin-studdedB	septemberB	separatesBseparateB
sentimentsB
sensualityBsensor</li><li>AccelerometerB	semisheerB
self-stickBself-importantBself-consciouslyBself-congratulatoryBself-awarenessB
self-awareBself-absorptionBself-absorbedBseekB
secondhandBseasonedBscroogeBscriptsB	scriptingBscriptedBscrewdriverB	screwballB	screeningBscreen</li><li>Storage:BscreamB
scorsese'sBscorpionB	scientistBschemesBscentsBscenicBscattershotBscariestBscantBscamsBsatisfactoryBsatiricBsanctimoniousBsailorsB
sacrificesB	sabotagedBruthlessBrutBrushedBruralBruledBruinedB
ruggednessBrudeBrubberBrubBrough-and-tumbleBrottenBrotatingBromancesBrockstarBrocketBrobotsBroadsBrivetedBrivalBriskyBripsBrippingBringuBrifeBrice'sB	reworkingB	revulsionB	reverenceBreunionB
retro-coolBrestsBrestoreBrespectsB
respectfulBresolutionsB
resistanceBrescueBrepresentedB
repetitionB	renderingB	remembersBrememberingBremediesB	relevanceB	releasingB	relativesBrelativeBrelatingBregretBregisterBreginaldBreggio'sBreggioB	regardingBrefuseBrefillBreeseBrecyclesBrecordsBrecognizableBreceivedB	rebellionB
reassuringB
reasonableB
rearrangedBreapBrealmBrealizationBreadilyBreachedBrazorBrayon</li><li>Pants:Brayon</li><li>Contrast:BratedBrashesBrapidBrankBrakeBraisingBraisedBrah-rahBradarBracyBracistBracingB	racerbackBrabbit-proofB
quirkinessBquickly</li><li>BreathabilityBquickieBquestionableBquaintBquaidBpuzzleBput-togetherBpushingBpushedBpurposelessBpurportsBpungentB
punctuatesBpunchingBpunch-drunkBpuffBpuerileBpsychoBpsychicBprowessBprovokeBprovingBprotagonistsBprospectBproseBpromoteBpromisinglyB
profundityBprofessionalsBprofaneBproducerBproblematicBproBprizeBprismBprints</li><li>57%B
principalsB	primitiveBprevailsBpretendsBpreteenBpreserveB
presentingBpredicamentBpranksB	powerpuffBpowderBpovertyB	potboilerB
postmodernBpostingBpostersBposterBpost-productionBpost-pregnancyBposeBporesB
popularityBponcho'sB(polypropylene</li><li>Imported</li></ul>BpolyethyleneBpolyester</li><li>TopBpolyester</li><li>Lining:Bpolyester</li><li>Jeans:B
poeticallyBplummerBpleatedB
pleasantlyB
playwrightBplaytime-readyBplayground-readyBplayerBplantBplannerBplainlyBpitifulBpitchedB
pint-sizedBpineBpillBpiece'sBpicture-perfectBpickedB
phthalatesBphotographsBphenoxyethanolB
petrolatumBpet'sB	pervasiveB	pertinentB
persuasiveBperryB	perpetualBperpetratedBperkyBperilsB
performingB	performedBpeploe'sBpeople'sBpenetratingBpendantB	pdf\"">60Bpdf\""BpauseBpaulineB
patterningBpastimeBpassableBpartnersBparisBparanoidBparabensBparBpaper</li><li>RecommendedBpants</li><li>60%B	panoramicB	panderingB	paintingsB	painterlyB
paintbrushB*paint</li><li>Nontoxic</li><li>RecommendedBpaint-by-numbersBpainsBpaeanBpadsBpadreBpackageBowesBoweB
overwhelmsBoverviewBovertlyBoverstuffedB
overstatedBoverrunBoverproducedB
overlookedBoverlappingBoverbearingBouttakesBoutshineBoutrageB"outlets</li><li>Imported</li></ul>BoutletsB
outlandishBoutdatedBoutcomeB	outburstsBotherworldlyBoscar-winningBorwellBoriginsBorgasmB
organizingBorganizationBordersBoptionalBoptimumB
optimisticB
oppressiveBoperaticBoperatedB	opera-ishBopenedBopen-mindedBoopsBongoingB	one-trickBolivierBoleanderBokBoil</li><li>Paraben-BoffsetBofficinalisBoff-puttingBoedekerkBoddestBocean-themedBocean-inspiredBobscuredBo'fallonBnuclearBnoveltyBnovakBnotificationsB	nothing'sB
noteworthyBnotes:BnotablyBnoseBnonexistentB	non-toxicBnoisyB	no-frillsBninetyB	nighttimeBniftyBnicolasBnickB	nicholsonBnicheBnicestBnewtonB
newfangledB	newcomersB	neverlandBneuroticB
nettelbeckBneilB	neglectedBnegativeBnecklace</li><li>Necklace:B
naturalismBnativeB
nationwideBnaryBnarrativelyB
narcissismBnapoleonBnamesBnaiveBnair'sBmásB	mythologyBmuseumBmurphy'sBmulticoloredBmullBmuddyBmovie-goingBmoves-with-youBmountingBmountedBmountainBmotownBmotorsB	motoristsB
motorcycleBmotorBmoto-inspiredBmotivesBmothersBmoroseBmonumentBmomsBmollyBmoldyBmodestyB
moderatelyBmodeledBmodal-video-link\""Bmodal-blendBmobileBmiyazakiB	mistakingBmisogynisticB	misguidedBmiseryBmiramaxBminionBminimumB	minimizesBmiller'sBmillBmilkBmiikeBmidnightBmichellBmichelBmexicanBmethodBmetaphysicalB	messengerBmesh</li><li>MachineBmerryBmercyBmerchantBmeowB	mentalityBmcdowellBmatteiBmatBmassesBmassagerB	masochismBmasalaBmarvelouslyBmarshallBmarkers</li><li>PlasticBmarkers</li><li>Box:Bmarkers</li><li>5BmarginalBmarcusBmarchingBmanneredB	manifestoB	maneuversBmanagingBmanagement</li><li>ReflectiveBmametBmalaiseBmakerBmajidiBmaidsBmade-for-tvBmaddeninglyB	maddeningBmadcapB	macdowellBlyocellBluxuriouslyBlusterBlurkingBlunaticBluminousBlucy'sBlow-rentBlover'sBlouisBloseBlordBloose-fittingBlong-sleevedBlondonBlolitaBlogBloadsBloadedBloBlivensBlittle-knownBliquidBliottaBlingersBlinensBlinen</li><li>MachineBliltBliloBlillardBlilBlightestBlightenB.light</li><li>Imported</li></ul><p>&nbsp;</p>"B light</li><li>Imported</li></ul>Blife-enhancingB
liberationBlevyBletdownBless-damagedBlesBleonardBleonB	leisurelyBleisure-chicBleigh'sB	leguizamoBleggings</li><li>TunicBleggings</li><li>60%BlegalBledBleavenedBlearnedBleapingBleBlayBlawsBlavishlyBlatterBlatinBlathanB
late-nightBlasB
landscapesBlampBlambsBladBlace-upBkwanBknockaroundBknit</li><li>100%B	knee-jerkBklineBkitschBkinnearBkingdomBkindsBkimBkillingBkillersBkillBkieslowski'sBkiddo'sBkid-friendlyBkid'sBkhouriBkennethBkennedyBkeenlyBkathyBkarenBkangarooBkaneBkahlo'sBkahloBjuwannaBjumpsBjumboBjulieBjuliaBjuicyBjuiceBjovialBjottingBjosephBjoltBjolie'sBjoelBjoan'sBjiffyB
jet-setterBjesseBjerkingBjeong-hyangBjenniferBjellB	jelinek'sBjeffreyBjeans</li><li>100%BjazzyBjaw-droppinglyBjanuaryB	jacquot'sB	jackson'sBiwai'sBivansBisleB
irrelevantBiron:BiranBinvigoratesBinventivenessB
invaluableBintricatelyBinto<i>B
interviewsBinterpretationB&internal</li><li>Wi-Fi</li><li>Output:B
interludesBinteractionBintentionallyB	intellectBintactBinsultinglyBinsufferableBinstructions</li><li>Completed:BinstanceBinsiderBinsecureBinsanelyBinsaneB
innovationB	innocuousB
inner-cityBinks</li><li>50%B*ink</li><li>Machine-washable</li><li>AdultB
inherentlyBinfraredB
influencesB
infinitelyB
inexorablyBinescapableB
indulgenceB
indictmentB	indicatesBindexB	indelibleBinconsistenciesBincompetentBincoherenceBincluded</li><li>100%BinclinationB
incendiaryBincarnationB	incapableBinarticulateB	inabilityBimpulseBimprovisationBimpressionsB
impossiblyBimplicitBimplicationsBimaginativelyBilluminationBiiiBignitesBidioticBidiotB
id=\""8\""BhypedBhydratedB	huppert'sBhungryBhref=\https://youtuBhoward'sBhours</li><li><aBhour-and-a-halfB
hot-buttonBhorrorsB
horizontalBhopsBhopelessBhoopBhomemadeBhollywood'sBhollyBholidaysB
hodgepodgeBho-humBho-ho-hilariousB	hitchcockBhistoricallyBhistoricBhips</li><li>95%Bhips</li><li>65%Bhips</li><li>63%Bhips</li><li>50%BhipnessBhingesBhill'sBhilariouslyBhighlightersBhigh-intensityBhigh-conceptBhidesBhicksBhewittBhero'sBhem</li><li>Woven</li><li>95%B.hem</li><li>Thermo-regulation</li><li>MoistureBhem</li><li>RelaxedBhem</li><li>Knit</li><li>96%Bhem</li><li>83%Bhem</li><li>51%Bhem</li><li>33%BheftyBheelsB
hedonisticBheatsB	heartbeatBhearstBheadedBhead-turningB
head-startBhayekBhawke'sBhawkeB
hashiguchiBhart'sBhardyBhardworkingB	hard-rockBhanksB
handsomelyB
hands-freeBhandedBhammerB
ham-fistedBhallB	half-hourBhadn'tB*gyroscope</li><li>Bluetooth</li><li>Usage:Bguy'sBgut-wrenchingB	guaranteeBgrownupsB	grown-upsBgrownBgroundsBgroundedBgroundbreakingB	grotesqueBgrinningBgrindBgrinBgrimlyBgrewB
greengrassBgreedyBgreatlyBgreat-grandsonBgravityBgrandiosityBgrainB	gracelessBgr_8BgooseBgood-lookingBgondryBgoldieBgoldenBgodzillaBgodard'sBglumB	glucosideBglow-in-the-darkBgloverBglobeBglitzBglitter-touchedBglimpsesBglimmerB	gleefullyBgleeBgleanedBglass</li><li>MadeBglaringB	glamorousBgirl'sBgibsonBghettoBgereB	gentilityB
generatingB	generatedBgauzyBgaryBgarmentsBgarciaBgantzBgamesmanshipBgalloBgalleryBgalacticBgal'sBfussBfusedBfurryBfuriousB
functionalBfull-bodiedBfuBfrustratinglyBfrothyBfrolicBfrizzBfriskyBfrielBfridgeBformalBforkBforgivenBforcingB
forcefullyBfootnoteBfootieBfootball-styleBfoolishBfoodsB
fontaine'sBfondnessB	follow-upBflyingBfluteBfluffyBflouncyBfloralsBflirtsBflightBfleur-de-lisBfleeceB
flawlesslyB:flat</li><li>Imported</li></ul><p>&nbsp;</p><p>&nbsp;</p>"BflashingBfirst-classBfiringBfilmingBfiguringBfiguredBfigure-skimmingBfieldsBfetchingBfessenden'sB	ferventlyBfellaBfeature</li><li>AdjustableBfearlessnessBfearlessBfavourB	favoritesBfaultsBfaultBfast-movingB
fascinatesB
fascinatedB	fascinateBfartsBfartBfarcicalBfannyBfanaticBfamilialBfaltersBfallenBfactsBfactoryBfacetBfacedBface-framingBeye-poppingBeye-pleasingBexudeBextremesB
extra-softBextentB	extensionBexposureB	explorersB
exploitingBexplanationBexplainBexpertBexperimentationBexpandedBexistingBexistedB	excessiveBexceedsBexaminesBevokeB	everybodyBeventualBethosBethicsBetherBethanBestablishesBescapesBescapedBerrorsBeroticBerBequalsBepinephrineBenvelopeB	enjoymentBenglandBengineB
engaginglyBendingsBenchantsBemphasisBemissionB	embracingBembarrassedBegoyan'sBeditionB
economicalBeconomicBeco-friendlyBeclecticBeatingBeasy-to-gripB
easy-peasyB
eastwood'sBeastB
earnhart'sBearnedBdÃ©colletageBdvBduvallBdutifulBdurationBdude'sBducksBduckBdryingBdry</li><li>Imported</li>BdrunkenBdrumlineBdrownedBdrownBdroneBdrinkBdreamsâ€”allBdreamedBdramatizationB	dramaticsBdrainedBdozenBdozeBdownwardBdownsBdoverBdougBdopeBdoorsBdooBdollarBdogmaBdoggedB	documentsBdoctorsBdocBdizzyingBdividersB	divertidaB	diversityBdivasB
distractedBdistinctB	distancedBdisquietingBdisplay</li><li>HeartB	dispenserBdismissB	dishonestBdishBdisgustBdiseaseB
discomfortBdiscernibleBdirectlyBdirect-to-videoBdireBdimmerBdiminishingBdimBdiggsBdifferencesBdiedBdie-hardB
dickensianBdickens'BdickBdiazBdiaperB4diameter</li><li>Plastic</li><li>Imported</li></ul>"B
diabolicalBdevotionBdevolvesBdeviousB	determineBdetectsB	detectiveBdestructiveBdestroyB
desiccatedB	deservingBdeservedBderivedBdepressinglyBdepravedB	depictingB
departmentBdenyBdenselyBdenseBdeniroBdeniedBdemonstratingBdemme'sBdeluxeB	delusionsB	delightedBdeliciouslyBdeliberatelyBdefinedBdefeatsBdefeatedB
decorationBdecidesBdecibelB
deceptionsBdecals</li><li>SmallestBdecadentBdeanBdead-endB
day-to-dayBdaviesBdangerouslyBdanangBdaisyBdaftB
cymbopogonBcutterBcurve-accommodatingBcurveBcurseBcurlsBcruellyBcrucialBcrowd-pleaserB	crossoverBcrossesBcrossedBcross-culturalB	crocodileBcriticBcrisscrossingBcrippledBcrimenBcriesB	cremasterBcreepsBcreatorsB
creativelyBcrave-worthyBcrashingBcrashBcradlesBcoxB
courageousBcoupledBcountingBcotton</li><li>Vest:Bcotton</li><li>Button-up:Bcotton/Bcotton-stretchBcotton-modalB
corruptionBcorrectionsBcorrectBcornersBcoordinatesBcooperBcoolnessBcontroversialBcontributionBcontestB
contendersB	consumingBconstraintsBconsistsB	considersBconsiderablyB	consciousB
conscienceBconnoisseursBconnectsBconnect-the-dotsBconjuresBconfinesBconfinedB
confectionB
conditionsB	condensedB
conceptualBconcentratesBcompromisedBcomprehensionBcomplimentsB	complaintB
compensateB
compendiumBcompellinglyBcompareB	company'sBcommunalB
commitmentB	comicallyBcomicalB	combiningBcombinationsB"com/media/content/copy/dyson220728B#com/media/content/copy/Rapid%20TechB=com/media/content/copy/CitySkylineDioramaColoringPage_crayolaB
colorblockB
collinwoodBcollectBcoincidenceB	coherenceBcoenBcodesBcocoaBcockyBcoarseBcoalBco-wroteB
co-writtenBcm</li><li>Storage:BclothBclosingBclosedB	close-upsB
cling-freeBcleanserB	clayburghBclayBclawB
classifiedB	classicalBclass=\video-text-linkBclass=\""gr_BclashingBclashBclareBclaptrapBclaimBcivilBcircusBcircumstancesBcircuitBcirclesBchoreographyBchordBchompBchimpsB	childlikeBchiffonBcherryBchenBchekhovBcheckingBcheatB
charminglyBcharmersB	charlotteBcharacterizedBchapterBchaosB
chalkboardBchainBchaikenBchaiBcetearylBceramic</li><li>HeatsBcelebratingBcedarBcausticB	catharticBcatchingBcat'sB	cascadingBcascadeBcarsBcarpetsBcarnageB	carabinerB
captivatesBcaptainBcapraBcappedBcape-sleeveB	capacity:BcannibalB	candidateBcandidBcancerB
campanellaBcameosB
californiaB	calendulaBcalculatingBcaesarBbylerBbyattBbuttons</li><li>NylonBbuttons</li><li>4''Bbutton-frontBbust</li><li>50%Bbust</li><li>100%BbusBburns'B
burgeoningBbumblingBbulletsBbulbBbuildupsBbuild-upBbugBbuffBbrushstrokeBbruckheimerBbrosBbroomfield'sBbrooklynBbroodingBbroadwayBbritsB	britney'sBbrightly-huedBbridgetBbridgeBbreezesBbreakthroughB	breakdownBbrayBbravuraBbranaghBbrainstormingBboy'sBbowlingBboutsB
boundariesBboughtBbottles</li><li>Ingredients:Bbottles</li><li>5BbotheredBboredomBbonusB	bombasticB	bolsteredBbollBboleroBbodice-ripperBbobB	boardroomBblurryBblowingBblossomBbloomsBblockbusterBbloatedBblaxploitationB	blandnessBblandlyBbizBbitesBbirot'sBbiologicallyBbio-picBbinocheBbillyBbicycleBbergamotBbentBbehanB	beginnersBbeeswaxBbeerBbeatingBbeardBbeanBbeadsBbeachy</i>-keenBbeachcomber'sBbeach-themedBbathroomBbathosBbathersBbaseball-themedBbarry'sBbareBbarbecueBbaranBbanterB	banishingBbanalityB
ballerinasBbaggageBbacteriaBbackupB	backstageBbacksB	backpacksBbackingBbackdropBbabassuBayurvedaBawryB	awarenessBawaitsBautobiographicalB	australiaB	austerityB	auschwitzBaugustBaudioBattention-grabbingBattention-gettingB	attendingBattachBatlanticBathletic-inspiredBastuteB
astoundingBassumingB
assortmentB
associatedBassetBassassinationBaspectBarthouseB	art-houseBarnieB	argentineBareasB	arbitraryBaptlyBaptedBapproachingBappliquÃ©sBapplaudB	appearingB	anti-odorBanomieBannouncementBannaBanimatronicBanglingBandrewBandersonBancientBanchorBanarchicBana'sBamyBampsBamberB	amazementBamateurBamaroBaltarBalphabetBallergyBallegedBalienateBalfredB	alexandreBaidsBagitpropBaggravatingBagendaBagedBafricaB	aestheticB
advertisedBadventure-friendlyBadvanceBadultingBadroitlyBadolescenceB
admittedlyBadaptsBadaptorBadageBaction-comedyBachievedBachesBaccomplishesBaccompaniesB	acceptingB
acceptanceBacceptBabove-averageBablyBabcB[t]heBXL=12BWater-basedBWatchBWarrantyBVanB	UltrasoftBUSA-madeBUKBThermolonâ„¢BStretch-infusedB	StatementBSriBSouthwest-inspiredBSouthernB
SilhouetteBSDABS/MBRateBPotterBPimaBPeterB	PermanentBParisian-inspiredBPanB	Non-stickB
MousketeerBMonsterB
McStuffinsBLycra</li><li>MachineBLurexBLuckBLionBL</li><li>WoodBL</li><li>Pendant:BKorea</li></ul>BKidsBJapan</li></ul>"BHarryBH</li><li>Water-basedB+H</li><li>Paper</li><li>Imported</li></ul>"BH</li><li>LargestBGreekBGB</li><li>RetinaBFourBFastDryÂ®BF</li><li>15BEmeraldBDocBDistributionBDetails</b></p><ul><li>SizeBDetails</b></p><ul><li>NylonBDeadBDarkBD</li><li>TourmalineB+D</li><li>Paper</li><li>Imported</li></ul>"B*D</li><li>Paper</li><li>Imported</li></ul>BD</li><li>Ceramic</li><li>Cord:BD</li><li>AudioBD</li><li>12BCelsiusBCapBBritain</li></ul>"BBatteryBBatmanBAsBAnnaBAnglophilesBAT&T</li><li>2B<p>WriteB<p>WearB
<p>VibrantB<p>StretchyB<p>StockB	<p>SpruceB	<p>SpritzB<p>SideB
<p>SharperB<p>RepresentB<p>RenewB
<p>RelieveB<p>RelaxB	<p>RaglanB	<p>PetiteB	<p>PamperB<p>OfferB
<p>NourishB<p>Moisture-wickingB<p>HitB<p>HaveB<p>FrictionB<p>Free-spiritedB<p>FeelB<p>Eye-catchingB<p>ExudeB<p>EveryB	<p>EnsureB<p>EmboldenB<p>DoraB	<p>DaintyB<p>BustB<p>All-cottonB
<p>AchieveB	<p><i>PAWB<p>&nbsp;</p>B<p/><ul><li>SizeB<i>purr</i>fectlyB<i>andB<i>TheB<i>StarB<i>Minnie</i>B<i>Cars</i>-themedB<i>BlazeB!</p><ul><li>Prewashed</li><li>50%B</p><ul><li>Missy:B</p><ul><li>97%B</p><ul><li>9B</p><ul><li>8B</p><ul><li>61%B</p><ul><li>6B</p><ul><li>58%B</p><ul><li>3B</p><ul><li>27''B</p><ul><li>2B</p><ul><li>15B</p><p><ul><li>60%B</p><p><ul><li>30''B</p><p><ul><li>1XB</p><p><ul><li>100%B)</p><p><b>Features</b></p><ul><li>WickingB</p><p></p><ul><li>100%B </p><p>&nbsp;</p><ul><li>RelaxedB.</p><p>&nbsp;</p><ul><li>Preshrunk</li><li>50%B"</p><p>&nbsp;</p><ul><li>Packaged:B</p><p>&nbsp;</p><ul><li>L=10B</p><p>&nbsp;</p><ul><li>Knit;B</p><p>&nbsp;</p><ul><li>JerseyB</p><p>&nbsp;</p><ul><li>99%B</p><p>&nbsp;</p><ul><li>88%B</p><p>&nbsp;</p><ul><li>73%B</p><p>&nbsp;</p><ul><li>62%B</p><p>&nbsp;</p><ul><li>57%B</p><p>&nbsp;</p><ul><li>39''B</p><p>&nbsp;</p><ul><li>31''B</p><p>&nbsp;</p><ul><li>3''B</p><p>&nbsp;</p><ul><li>29''B</p><p>&nbsp;</p><ul><li>24''B</p><p>&nbsp;</p><ul><li>216''B</p><p>&nbsp;</p><ul><li>18B</p><p>&nbsp;</p><ul><li>13B</p><p>&nbsp;</p><ul><li>11''B</p><p>&nbsp;</p><ul><li>1''B </p><p>&nbsp;</p><p><ul><li>SizeB9</p><p>&nbsp;</p><p><b>Features</b></p><ul><li>BreathableB</p><p>&nbsp;</p><p><b><b>SizeB.</p><p>&nbsp;</p><p>&nbsp;</p><ul><li>NecklaceB)</p><p>&nbsp;</p><p>&nbsp;</p><ul><li>60%B)</p><p>&nbsp;</p><p>&nbsp;</p><ul><li>50%B7</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><ul><li>SizeB</p><p>&nbsp;</p><p>&nbsp;</p>"B</p><p>&nbsp;</p><li>SizeB</p><pB</p></ul>"""B</li><li>PaintB</li><li>Nontoxic</li><li>MadeB</li><li>MachineB</li><li>Knit</li><li>95%B</li><li>FreeB</li></ul>"B</i>theB</i>graphicB
</i>cadetsB97''B94''B91%B9'B86B83''B
7â€“9B75\""B750</li><li>Camera:B73%B
6â€“8B625''B62%B5â€²B56''B55B52%B5'9''B4XLB	4X=26-28WB4X=B45\""B450Â°B44%B41B40\""B
3â€“5B
3X=22W-24WB36%B34%B34B30\""B3000B
2â€“4B
2X=18W-20WB28%B24%B22</li><li>32''B22-24</li><li>SizeB21stB2000B200B20-22B
1X=14W-16WB1999B1975B1952B1950sB1940sB18%B16%B150â€“200B14</li><li>96%B1334B130â€“180B12-year-oldB11â€“13B112B110B10â€“12B
0â€“1B00â€“0B'they'B'nB'it'sB'em-upB'comedy'B'analyzeB'a'B''tic''B#9B"<p>TurnB
"<p>ThrownB
"<p>SuppleB"<p>StepB"<p>SpunB
"<p>SpruceB	"<p>SleekB
"<p>SimpleB"<p>SheB	"<p>ScoopB"<p>SayB"<p>RichB"<p>RambunctiousB
"<p>RaglanB"<p>ProtectB"<p>PlayfulB
"<p>PackedB"<p>On-trendB"<p>MonitorB"<p>LendB"<p>JustB"<p>JotB"<p>ItB"<p>IntroduceB
"<p>ImbuedB
"<p>FlauntB"<p>FantasticB	"<p>ExudeB"<p>EquippedB"<p>EnergizeB"<p>EmbodyingB"<p>DonB"<p>DelightB"<p>CozyB	"<p>CoverB"<p>CompleteB"<p>ColdB	"<p>CleanB"<p>ChicB"<p>CastB
"<p>BreezyB	"<p>BoostB"<p>AccentuateB"<p><p>ThisB"<pBÉBzwickBzoomsBzoomBzombieBzingsBzealandBzanyByvan'sByvanByu'sByorkersByorkerByimouByieldsByesterday'sByeahByeByawningByawn-provokingByakushoBxeroxBx-filesBwwfBwrithingBwrists</li><li>35BwrinklesBwrinkle-fillingBwretchedB	wrestlingBwrenchBwoundB
worshipfulBworld-classB	workplaceBworkout-readyBworkmanlikeBwork-to-weekendBwork-in-progressBworeBwordedBwoozyBwoodsB
wondrouslyBwondrousB
wondermentBwonderedB
wolodarskyBwobblyBwivesBwistfulB	wisegirlsBwirelessBwinterBwinsomeBwinnersBwinkBwineB
windowpaneBwillingnessB
williams'sBwillfulBwiggleB
widowmakerBwidgetBwidelyBwickedBwickB	wholesaleB	whiteningBwhistlesBwhirlBwhiffBwhere'sBwheezingB
whatsoeverBwesleyBwertmuller'sBwernerBwen'sBweltBwelles'B	well-shotB
well-honedBwell-editedB
well-drawnB	well-doneBwell-developedBwell-constructedBweirdoB
weightlessBweighedBweighBweeklyBweeBwebBweaver'sBweaveB	wearisomeBwearableBwear-and-pairBweaponryBweakestBweakerBwe'llBwe'dBwax'sBwaterloggedBwaterboyBwater-squirtingBwatchfulBwashington'sBwasherBwash</li><li>RecommendedB-wash</li><li>Imported</li></ul><p><b>ShippingB:wash</li><li>Imported</li></ul><p>&nbsp;</p><p>&nbsp;</p>"B#wash</li><li>Imported</li></ul></p>Bwash</li><liBwasabiBwaryBwarrenBwarnerBwarnedBwarmlyBwardBwannaBwangBwandersB	wanderersBwand</li><li>Barrel:BwalshBwallyBwallowB
wall-readyBwalkingBwaitsBwailsB
wafer-thinBwadeB
vulnerableBvulnerabilityBvoyeuristicBvotingBvolts</li><li>60B"voltage</li><li>Imported</li></ul>BvoidBvivekaBvitaminsBvistasBvisitorBvisionsBviscose</li><li>Sleeves:Bviscose</li><li>Shorts:Bviscose</li><li>Pants:Bviscose</li><li>Contrast:Bvinyl</li><li>RecommendedBvintage-styleBvinB
villeneuveB
villainousBvileB	viewpointBviewers'Bviewer'sB	videotapeB#video</li><li>Wi-Fi</li><li>Output:B	victoriesBvictorB	vicariousBvibrancyBvetBvesselBverdictB	verdaderaB	verbinskiBverballyBvera'sBventBvelvetyBveiledBvehiclesBvaryB	varnishedB
variationsB	vardalos'BvardalosBvanilla</li><li>MadeBvampiresBvalidB	valiantlyBvaliantBvainBvacationBv-cutBuweButensilsBurethaneBuptightBupsideBuprightBupliftB
upholsteryBuphillBupdatingBupdatedBup</li><li>LBunwillingnessBunturnedBunthinkableB
untalentedBunsympatheticBunsuspectingBunsubtleBunspeakableBunsophisticatedBunsettlinglyB	unsettledBunseenBunseemlyBunremittinglyBunremarkableBunrelentinglyB
unrealizedBunprecedentedBunpersuasiveB
unorthodoxBunoBunmistakableBunmentionableB	unlimitedBunisexBunholyBunhappyB	unhappilyBunforgettablyB
unfinishedB
unexploredBunexplainableBunexceptionalB
unexaminedBunequivocallyBunendurableBunemploymentBuneasilyB	unearthedBundistinguishedBundevelopedB
undertonesBunderstandableB
underscoreB
underratedBundernourishedB
underminedB	undermineBunderlayBundergroundBunderestimatedB	undercutsBundercurrentBunder-inspiredBundemandingBundBuncoversBunconcernedBuncomplicatedBuncommercialBunclearBuncleBunbelievablyB
unbeatableB
unbearablyBunawareBunapologeticallyBunapologeticB
unaffectedB
ultrasonicBultracomfortableB
ultra-softBultra-comfyBuhB
two-thirdsBtwo-hourBtwirlsBtwirlBtwinBtweakedBtv-movieBtuxBtutorialBturturroBturmoilBturfBturdBturboBtupacBtunedBtummyB
tug-of-warBtuckedBtubes</li><li>Packaged:Btub'sBtruffleBtroveBtrottingBtrivializesBtrivialBtriumphsBtriumphantlyBtristeBtripeBtrimmingBtrim:Btri-coloredBtrend-settingB	trenchantBtremendouslyBtreesB	treasuredBtreadingB	treacheryBtravel-readyB
transportsBtransparentB
translatesBtraitsBtrainsBtrainingBtrailsB
tragicallyBtrafficsBtradesBtractBtracksBtracesBtoys</li><li>RecommendedBtowersBtour-de-forceBtougherBtossingB	tormentedBtopicsBtop-and-shortsBtootsieB	toothlessBtoothB-tool</li><li>Imported</li></ul><p>&nbsp;</p>"B
too-trendyBtoningBtongueBtomorrowB	tolkien'sB	toleranceB	tolerableBtokBtoe-tappingB
tocopherolBtoback'sBtitusBtitle'sBtiringB
tinseltownBtimidB	timeframeBtiltingB	tightropeBtighterBtightensB
tighteningBtierBtieneBtiedBtie:BtidyBtidalBticsBtickleBtiareBtianBthymeBthusBthurmanBthroesBthrewB	thresholdBthree'sB	threatensBthreateningB
threatenedBthoughtfulnessBthoughtfullyBthoroughBthornberrysB
third-rateB	third-actBthinnerB	thereforeB
theorizingBtheologyBtheatresBthankfulBtexturalBtestudB	testimonyBtestimonialBterrificallyBterriBtenthBtennisB	tennesseeB
tendenciesB	temporaryBtempoBtempleBtemperedBtemperaturesBtemperBtelemarketersB!technology</li></ul><p><b>ProductBtearingBteamsBteachesBteachBtaymorBtaxBtattoosBtattooBtattersB	tastelessBtargetedB	tarantulaBtarantino'sBtaraBtanningBtank</li><li>1BtanBtameBtambémBtalking-headBtakashiB	taiwaneseBtaglineBtaglessBtadBtacklingBtackleBtackBsóBsãoBsyrupBsymptomBsymbolsBswordBswoopingBswoopBswooningBswivel</li><li>HeatsBswitchesBswishyBswirlingBswingersBswimmerBsweethert'sBsweet-and-sourBsweatyBsweatpants</li><li>Hoodie:BsweatingBsweater-knitBsweat</li></ul><p><b>ProductBswayBswashbucklerBsvenB
sustenanceB	sustainedB
suspensionB	suspenserBsuspectsB
suspectingB	surroundsB
surroundedB	surrenderB
surrealismBsurgicalBsurge-protectionBsurgeBsurferBsurfeitBsurfB
supportiveBsupplementsBsupermanBsuperlativeBsuperhero-inspiredBsuperfluousBsuper-sizedBsuper-comfortableBsunshineBsungBsulkyBsuitableBsuicideBsugaryBsuffocatingB
suffocatedBsufficientlyB
sufficientBsuddenlyBsucroseBsuckerBsuccinctB	successorB	successesBsuburbanBsubtlerB	subtitledBsubplotB	sublimelyB	subjectedBsuaBstyrene/plexiglass;BstylisticallyBstylishnessB
stutteringBsturmB
stunninglyBstultifyingBstuffyBstuffedB
studiouslyBstudiosBstudio'sBstrung-togetherB	struggledBstruckB	strollersBstrivingBstrivesBstripped-downB
stretchingBstretchableBstretch</li><li>HandBstretch</li><li>81%Bstretch</li><li>80%Bstretch</li><li>60%Bstretch</li><li>40%Bstretch-waistbandBstretch-perfectBstressBstrenuouslyBstrech-blendBstreamedBstreamBstraysBstrayB	strategicBstrappyB,strap</li><li>PVC</li><li>Imported</li></ul>B	strangersB	strainingBstraight-to-videoBstraight-facedBstorybook-inspiredBstormBstoppardBstompBstomach-turningB	stockingsBstitching</li><li>Body:BstitchedBstirs*
_output_shapes	
:�N
T
transform/Const_3Const*
dtype0*
value
B :�g*
_output_shapes
: 
}
/transform/transform_1/inputs/review/PlaceholderPlaceholder*
dtype0*
shape: *#
_output_shapes
:���������
s
,transform/transform_1/inputs/review/IdentityIdentityPlaceholder*
T0*#
_output_shapes
:���������
|
.transform/transform_1/inputs/label/PlaceholderPlaceholder*
dtype0	*
shape: *#
_output_shapes
:���������
�
+transform/transform_1/inputs/label/IdentityIdentity.transform/transform_1/inputs/label/Placeholder*
T0	*#
_output_shapes
:���������
c
transform/transform_1/ConstConst*
dtype0*
valueB B.,!?() *
_output_shapes
: 
�
!transform/transform_1/StringSplitStringSplit,transform/transform_1/inputs/review/Identitytransform/transform_1/Const*<
_output_shapes*
(:���������:���������:

transform/transform_1/IdentityIdentity!transform/transform_1/StringSplit*
T0	*'
_output_shapes
:���������

 transform/transform_1/Identity_1Identity#transform/transform_1/StringSplit:1*
T0*#
_output_shapes
:���������
v
 transform/transform_1/Identity_2Identity#transform/transform_1/StringSplit:2*
T0	*
_output_shapes
:
w
)transform/transform_1/uniques/PlaceholderPlaceholder*
dtype0*
shape: *#
_output_shapes
:���������
f
transform/transform_1/SizeSizetransform/Const_2*
out_type0*
T0*
_output_shapes
: 
a
transform/transform_1/Minimum/yConst*
dtype0*
value	B :*
_output_shapes
: 
�
transform/transform_1/MinimumMinimumtransform/transform_1/Sizetransform/transform_1/Minimum/y*
T0*
_output_shapes
: 
]
transform/transform_1/sub/xConst*
dtype0*
value	B :*
_output_shapes
: 
}
transform/transform_1/subSubtransform/transform_1/sub/xtransform/transform_1/Minimum*
T0*
_output_shapes
: 
m
#transform/transform_1/Reshape/shapeConst*
dtype0*
valueB:*
_output_shapes
:
�
transform/transform_1/ReshapeReshapetransform/transform_1/sub#transform/transform_1/Reshape/shape*
_output_shapes
:*
Tshape0*
T0
|
 transform/transform_1/Fill/valueConst*
dtype0*,
value#B! B__dummy_value__index_zero__*
_output_shapes
: 
�
transform/transform_1/FillFilltransform/transform_1/Reshape transform/transform_1/Fill/value*
T0*#
_output_shapes
:���������
c
!transform/transform_1/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
�
transform/transform_1/concatConcatV2transform/Const_2transform/transform_1/Fill!transform/transform_1/concat/axis*
N*

Tidx0*
T0*#
_output_shapes
:���������
�
*transform/transform_1/string_to_index/SizeSizetransform/transform_1/concat*
out_type0*
T0*
_output_shapes
: 
s
1transform/transform_1/string_to_index/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
s
1transform/transform_1/string_to_index/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
�
+transform/transform_1/string_to_index/rangeRange1transform/transform_1/string_to_index/range/start*transform/transform_1/string_to_index/Size1transform/transform_1/string_to_index/range/delta*

Tidx0*#
_output_shapes
:���������
�
*transform/transform_1/string_to_index/CastCast+transform/transform_1/string_to_index/range*

DstT0	*

SrcT0*#
_output_shapes
:���������
�
0transform/transform_1/string_to_index/hash_table	HashTable*
	container *
	key_dtype0*
_output_shapes
:*
use_node_name_sharing( *
value_dtype0	*
shared_name 
�
6transform/transform_1/string_to_index/hash_table/ConstConst*
dtype0	*
valueB	 R
���������*
_output_shapes
: 
�
;transform/transform_1/string_to_index/hash_table/table_initInitializeTable0transform/transform_1/string_to_index/hash_tabletransform/transform_1/concat*transform/transform_1/string_to_index/Cast*C
_class9
75loc:@transform/transform_1/string_to_index/hash_table*

Tkey0*

Tval0	
�
'transform/transform_1/hash_table_LookupLookupTableFind0transform/transform_1/string_to_index/hash_table transform/transform_1/Identity_16transform/transform_1/string_to_index/hash_table/Const*	
Tin0*C
_class9
75loc:@transform/transform_1/string_to_index/hash_table*

Tout0	*#
_output_shapes
:���������
~
 transform/transform_1/Identity_3Identitytransform/transform_1/Identity*
T0	*'
_output_shapes
:���������
�
 transform/transform_1/Identity_4Identity'transform/transform_1/hash_table_Lookup*
T0	*#
_output_shapes
:���������
s
 transform/transform_1/Identity_5Identity transform/transform_1/Identity_2*
T0	*
_output_shapes
:
c
 transform/transform_1/FloorMod/yConst*
dtype0	*
value
B	 R�N*
_output_shapes
: 
�
transform/transform_1/FloorModFloorMod transform/transform_1/Identity_4 transform/transform_1/FloorMod/y*
T0	*#
_output_shapes
:���������
g
%transform/transform_1/split/split_dimConst*
dtype0*
value	B :*
_output_shapes
: 
�
transform/transform_1/splitSplit%transform/transform_1/split/split_dim transform/transform_1/Identity_3*
	num_split*
T0	*:
_output_shapes(
&:���������:���������
�
transform/transform_1/ToInt64/xPacktransform/transform_1/splittransform/transform_1/split:1*
N*

axis *
T0	*+
_output_shapes
:���������
f
$transform/transform_1/ExpandDims/dimConst*
dtype0*
value	B :*
_output_shapes
: 
�
 transform/transform_1/ExpandDims
ExpandDimstransform/transform_1/FloorMod$transform/transform_1/ExpandDims/dim*

Tdim0*
T0	*'
_output_shapes
:���������
s
)transform/transform_1/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
u
+transform/transform_1/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
u
+transform/transform_1/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
#transform/transform_1/strided_sliceStridedSlicetransform/transform_1/ToInt64/x)transform/transform_1/strided_slice/stack+transform/transform_1/strided_slice/stack_1+transform/transform_1/strided_slice/stack_2*
new_axis_mask *
Index0*'
_output_shapes
:���������*

begin_mask *
ellipsis_mask *
end_mask *
T0	*
shrink_axis_mask
u
+transform/transform_1/strided_slice_1/stackConst*
dtype0*
valueB:*
_output_shapes
:
w
-transform/transform_1/strided_slice_1/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
w
-transform/transform_1/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
%transform/transform_1/strided_slice_1StridedSlicetransform/transform_1/ToInt64/x+transform/transform_1/strided_slice_1/stack-transform/transform_1/strided_slice_1/stack_1-transform/transform_1/strided_slice_1/stack_2*
new_axis_mask *
Index0*'
_output_shapes
:���������*

begin_mask *
ellipsis_mask *
end_mask *
T0	*
shrink_axis_mask
e
#transform/transform_1/concat_1/axisConst*
dtype0*
value	B :*
_output_shapes
: 
�
transform/transform_1/concat_1ConcatV2#transform/transform_1/strided_slice%transform/transform_1/strided_slice_1 transform/transform_1/ExpandDims#transform/transform_1/concat_1/axis*
N*

Tidx0*
T0	*'
_output_shapes
:���������
�
%transform/transform_1/ones_like/ShapeShapetransform/transform_1/FloorMod*
out_type0*
T0	*
_output_shapes
:
g
%transform/transform_1/ones_like/ConstConst*
dtype0	*
value	B	 R*
_output_shapes
: 
�
transform/transform_1/ones_likeFill%transform/transform_1/ones_like/Shape%transform/transform_1/ones_like/Const*
T0	*#
_output_shapes
:���������
h
transform/transform_1/Const_1Const*
dtype0	*
valueB	R�N*
_output_shapes
:
e
#transform/transform_1/concat_2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
�
transform/transform_1/concat_2ConcatV2 transform/transform_1/Identity_5transform/transform_1/Const_1#transform/transform_1/concat_2/axis*
N*

Tidx0*
T0	*
_output_shapes
:
|
:transform/transform_1/SparseReduceSumSparse/reduction_axesConst*
dtype0*
value	B :*
_output_shapes
: 
�
+transform/transform_1/SparseReduceSumSparseSparseReduceSumSparsetransform/transform_1/concat_1transform/transform_1/ones_liketransform/transform_1/concat_2:transform/transform_1/SparseReduceSumSparse/reduction_axes*
T0	*
	keep_dims( * 
_output_shapes
:::
a
transform/transform_1/Greater/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
�
transform/transform_1/GreaterGreater-transform/transform_1/SparseReduceSumSparse:1transform/transform_1/Greater/y*
T0	*
_output_shapes
:
w
transform/transform_1/ToDoubleCasttransform/transform_1/Greater*

DstT0*

SrcT0
*
_output_shapes
:
�
'transform/transform_1/ones_like_1/ShapeShapetransform/transform_1/ToDouble*
out_type0*
T0*#
_output_shapes
:���������
p
'transform/transform_1/ones_like_1/ConstConst*
dtype0*
valueB 2      �?*
_output_shapes
: 
�
!transform/transform_1/ones_like_1Fill'transform/transform_1/ones_like_1/Shape'transform/transform_1/ones_like_1/Const*
T0*
_output_shapes
:
v
4transform/transform_1/SparseReduceSum/reduction_axesConst*
dtype0*
value	B : *
_output_shapes
: 
�
%transform/transform_1/SparseReduceSumSparseReduceSum+transform/transform_1/SparseReduceSumSparse!transform/transform_1/ones_like_1-transform/transform_1/SparseReduceSumSparse:24transform/transform_1/SparseReduceSum/reduction_axes*
T0*
	keep_dims( *
_output_shapes
:
h
&transform/transform_1/ExpandDims_1/dimConst*
dtype0*
value	B : *
_output_shapes
: 
�
"transform/transform_1/ExpandDims_1
ExpandDims%transform/transform_1/SparseReduceSum&transform/transform_1/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes
:
~
 transform/transform_1/Shape/CastCast transform/transform_1/Identity_5*

DstT0*

SrcT0	*
_output_shapes
:
u
+transform/transform_1/strided_slice_2/stackConst*
dtype0*
valueB: *
_output_shapes
:
w
-transform/transform_1/strided_slice_2/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
w
-transform/transform_1/strided_slice_2/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
%transform/transform_1/strided_slice_2StridedSlice transform/transform_1/Shape/Cast+transform/transform_1/strided_slice_2/stack-transform/transform_1/strided_slice_2/stack_1-transform/transform_1/strided_slice_2/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
h
&transform/transform_1/ExpandDims_2/dimConst*
dtype0*
value	B : *
_output_shapes
: 
�
"transform/transform_1/ExpandDims_2
ExpandDims%transform/transform_1/strided_slice_2&transform/transform_1/ExpandDims_2/dim*

Tdim0*
T0*
_output_shapes
:
h
%transform/transform_1/sum/PlaceholderPlaceholder*
dtype0*
shape: *
_output_shapes
:
h
'transform/transform_1/sum_1/PlaceholderPlaceholder*
dtype0*
shape: *
_output_shapes
: 
k
 transform/transform_1/ToDouble_1Casttransform/Const_3*

DstT0*

SrcT0*
_output_shapes
: 
d
transform/transform_1/add/xConst*
dtype0*
valueB 2      �?*
_output_shapes
: 
v
transform/transform_1/addAddtransform/transform_1/add/xtransform/Const_1*
T0*
_output_shapes	
:�N
�
transform/transform_1/truedivRealDiv transform/transform_1/ToDouble_1transform/transform_1/add*
T0*
_output_shapes	
:�N
e
transform/transform_1/LogLogtransform/transform_1/truediv*
T0*
_output_shapes	
:�N
�
'transform/transform_1/ones_like_2/ShapeShapetransform/transform_1/FloorMod*
out_type0*
T0	*
_output_shapes
:
i
'transform/transform_1/ones_like_2/ConstConst*
dtype0	*
value	B	 R*
_output_shapes
: 
�
!transform/transform_1/ones_like_2Fill'transform/transform_1/ones_like_2/Shape'transform/transform_1/ones_like_2/Const*
T0	*#
_output_shapes
:���������
x
6transform/transform_1/SparseReduceSum_1/reduction_axesConst*
dtype0*
value	B :*
_output_shapes
: 
�
'transform/transform_1/SparseReduceSum_1SparseReduceSum transform/transform_1/Identity_3!transform/transform_1/ones_like_2 transform/transform_1/Identity_56transform/transform_1/SparseReduceSum_1/reduction_axes*
T0	*
	keep_dims( *
_output_shapes
:
�
 transform/transform_1/ToDouble_3Cast'transform/transform_1/SparseReduceSum_1*

DstT0*

SrcT0	*
_output_shapes
:
�
transform/transform_1/GatherGathertransform/transform_1/Logtransform/transform_1/FloorMod*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:���������
|
+transform/transform_1/strided_slice_3/stackConst*
dtype0*
valueB"        *
_output_shapes
:
~
-transform/transform_1/strided_slice_3/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
~
-transform/transform_1/strided_slice_3/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
�
%transform/transform_1/strided_slice_3StridedSlice transform/transform_1/Identity_3+transform/transform_1/strided_slice_3/stack-transform/transform_1/strided_slice_3/stack_1-transform/transform_1/strided_slice_3/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:���������*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
�
transform/transform_1/Gather_1Gather transform/transform_1/ToDouble_3%transform/transform_1/strided_slice_3*
validate_indices(*
Tparams0*
Tindices0	*
_output_shapes
:
�
transform/transform_1/truediv_1RealDivtransform/transform_1/Gathertransform/transform_1/Gather_1*
T0*
_output_shapes
:
x
transform/transform_1/ToFloatCasttransform/transform_1/truediv_1*

DstT0*

SrcT0*
_output_shapes
:
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
l
save/SaveV2/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
e
save/SaveV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
w
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_step*
dtypes
2	
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_class
loc:@save/Const*
T0*
_output_shapes
: 
o
save/RestoreV2/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2	*
_output_shapes
:
�
save/AssignAssignglobal_stepsave/RestoreV2*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 
&
save/restore_allNoOp^save/Assign
Y
ExpandDims/dimConst*
dtype0*
valueB :
���������*
_output_shapes
: 
�

ExpandDims
ExpandDims+transform/transform_1/inputs/label/IdentityExpandDims/dim*

Tdim0*
T0	*'
_output_shapes
:���������
V
linear/linear/mod/yConst*
dtype0	*
value
B	 R�N*
_output_shapes
: 
�
linear/linear/modFloorMod transform/transform_1/Identity_4linear/linear/mod/y*
T0	*#
_output_shapes
:���������
�
Hlinear/review_weighted_by_review_weight/weights/part_0/Initializer/ConstConst*
dtype0*I
_class?
=;loc:@linear/review_weighted_by_review_weight/weights/part_0*
valueB	�N*    *
_output_shapes
:	�N
�
6linear/review_weighted_by_review_weight/weights/part_0
VariableV2*
	container *
_output_shapes
:	�N*
dtype0*
shape:	�N*I
_class?
=;loc:@linear/review_weighted_by_review_weight/weights/part_0*
shared_name 
�
=linear/review_weighted_by_review_weight/weights/part_0/AssignAssign6linear/review_weighted_by_review_weight/weights/part_0Hlinear/review_weighted_by_review_weight/weights/part_0/Initializer/Const*
validate_shape(*I
_class?
=;loc:@linear/review_weighted_by_review_weight/weights/part_0*
use_locking(*
T0*
_output_shapes
:	�N
�
;linear/review_weighted_by_review_weight/weights/part_0/readIdentity6linear/review_weighted_by_review_weight/weights/part_0*I
_class?
=;loc:@linear/review_weighted_by_review_weight/weights/part_0*
T0*
_output_shapes
:	�N
�
clinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
�
blinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
�
]linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SliceSlice transform/transform_1/Identity_5clinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Slice/beginblinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
�
]linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/ConstConst*
dtype0*
valueB: *
_output_shapes
:
�
\linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/ProdProd]linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Slice]linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
�
flinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
�
^linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/GatherGather transform/transform_1/Identity_5flinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
�
olinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseReshape/new_shapePack\linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Prod^linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Gather*
N*

axis *
T0	*
_output_shapes
:
�
elinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseReshapeSparseReshape transform/transform_1/Identity_3 transform/transform_1/Identity_5olinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseReshape/new_shape*-
_output_shapes
:���������:
�
nlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseReshape/IdentityIdentitylinear/linear/mod*
T0	*#
_output_shapes
:���������
�
flinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
�
dlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/GreaterEqualGreaterEqualnlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseReshape/Identityflinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/GreaterEqual/y*
T0	*#
_output_shapes
:���������
�
alinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Greater/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
�
_linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/GreaterGreatertransform/transform_1/ToFloatalinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Greater/y*
T0*
_output_shapes
:
�
blinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/LogicalAnd
LogicalAnddlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/GreaterEqual_linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Greater*
_output_shapes
:
�
]linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/WhereWhereblinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/LogicalAnd*0
_output_shapes
:������������������
�
elinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Reshape/shapeConst*
dtype0*
valueB:
���������*
_output_shapes
:
�
_linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/ReshapeReshape]linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Whereelinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Reshape/shape*#
_output_shapes
:���������*
Tshape0*
T0	
�
`linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Gather_1Gatherelinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseReshape_linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:���������
�
`linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Gather_2Gathernlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseReshape/Identity_linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:���������
�
`linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/IdentityIdentityglinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseReshape:1*
T0	*
_output_shapes
:
�
_linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Where_1Whereblinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/LogicalAnd*0
_output_shapes
:������������������
�
glinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Reshape_1/shapeConst*
dtype0*
valueB:
���������*
_output_shapes
:
�
alinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Reshape_1Reshape_linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Where_1glinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Reshape_1/shape*#
_output_shapes
:���������*
Tshape0*
T0	
�
`linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Gather_3Gatherelinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseReshapealinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Reshape_1*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:���������
�
`linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Gather_4Gathertransform/transform_1/ToFloatalinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Reshape_1*
validate_indices(*
Tparams0*
Tindices0	*
_output_shapes
:
�
blinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Identity_1Identityglinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseReshape:1*
T0	*
_output_shapes
:
�
qlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
�
linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
�
�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
�
�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
ylinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/strided_sliceStridedSlice`linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Identitylinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/strided_slice/stack�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/strided_slice/stack_1�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0	*
shrink_axis_mask
�
plinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/CastCastylinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/strided_slice*

DstT0*

SrcT0	*
_output_shapes
: 
�
wlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
�
wlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
�
qlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/rangeRangewlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/range/startplinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/Castwlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/range/delta*

Tidx0*#
_output_shapes
:���������
�
rlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/Cast_1Castqlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/range*

DstT0	*

SrcT0*#
_output_shapes
:���������
�
�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/strided_slice_1/stackConst*
dtype0*
valueB"        *
_output_shapes
:
�
�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/strided_slice_1/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
�
�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/strided_slice_1/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
�
{linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/strided_slice_1StridedSlice`linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Gather_1�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/strided_slice_1/stack�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/strided_slice_1/stack_1�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/strided_slice_1/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:���������*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
�
tlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/ListDiffListDiffrlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/Cast_1{linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/strided_slice_1*
out_idx0*
T0	*2
_output_shapes 
:���������:���������
�
�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/strided_slice_2/stackConst*
dtype0*
valueB: *
_output_shapes
:
�
�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/strided_slice_2/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
�
�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/strided_slice_2/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
{linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/strided_slice_2StridedSlice`linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Identity�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/strided_slice_2/stack�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/strided_slice_2/stack_1�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/strided_slice_2/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0	*
shrink_axis_mask
�
zlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/ExpandDims/dimConst*
dtype0*
valueB :
���������*
_output_shapes
: 
�
vlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/ExpandDims
ExpandDims{linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/strided_slice_2zlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/ExpandDims/dim*

Tdim0*
T0	*
_output_shapes
:
�
�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/SparseToDense/sparse_valuesConst*
dtype0
*
value	B
 Z*
_output_shapes
: 
�
�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/SparseToDense/default_valueConst*
dtype0
*
value	B
 Z *
_output_shapes
: 
�
ylinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/SparseToDenseSparseToDensetlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/ListDiffvlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/ExpandDims�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/SparseToDense/sparse_values�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/SparseToDense/default_value*
validate_indices(*
Tindices0	*
T0
*#
_output_shapes
:���������
�
ylinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/Reshape/shapeConst*
dtype0*
valueB"����   *
_output_shapes
:
�
slinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/ReshapeReshapetlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/ListDiffylinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/Reshape/shape*'
_output_shapes
:���������*
Tshape0*
T0	
�
vlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/zeros_like	ZerosLikeslinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/Reshape*
T0	*'
_output_shapes
:���������
�
wlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/concat/axisConst*
dtype0*
value	B :*
_output_shapes
: 
�
rlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/concatConcatV2slinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/Reshapevlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/zeros_likewlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/concat/axis*
N*

Tidx0*
T0	*'
_output_shapes
:���������
�
qlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/ShapeShapetlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/ListDiff*
out_type0*
T0	*
_output_shapes
:
�
plinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/FillFillqlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/Shapeqlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/Const*
T0	*#
_output_shapes
:���������
�
ylinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/concat_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 
�
tlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/concat_1ConcatV2`linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Gather_1rlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/concatylinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/concat_1/axis*
N*

Tidx0*
T0	*'
_output_shapes
:���������
�
ylinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/concat_2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
�
tlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/concat_2ConcatV2`linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Gather_2plinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/Fillylinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/concat_2/axis*
N*

Tidx0*
T0	*#
_output_shapes
:���������
�
ylinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/SparseReorderSparseReordertlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/concat_1tlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/concat_2`linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Identity*
T0	*6
_output_shapes$
":���������:���������
�
tlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/IdentityIdentity`linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Identity*
T0	*
_output_shapes
:
�
slinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/ConstConst*
dtype0*
valueB
 *  �?*
_output_shapes
: 
�
�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
�
�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
�
�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
{linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/strided_sliceStridedSliceblinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Identity_1�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/strided_slice/stack�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/strided_slice/stack_1�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0	*
shrink_axis_mask
�
rlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/CastCast{linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/strided_slice*

DstT0*

SrcT0	*
_output_shapes
: 
�
ylinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
�
ylinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
�
slinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/rangeRangeylinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/range/startrlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/Castylinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/range/delta*

Tidx0*#
_output_shapes
:���������
�
tlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/Cast_1Castslinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/range*

DstT0	*

SrcT0*#
_output_shapes
:���������
�
�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/strided_slice_1/stackConst*
dtype0*
valueB"        *
_output_shapes
:
�
�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/strided_slice_1/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
�
�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/strided_slice_1/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
�
}linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/strided_slice_1StridedSlice`linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Gather_3�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/strided_slice_1/stack�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/strided_slice_1/stack_1�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/strided_slice_1/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:���������*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
�
vlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/ListDiffListDifftlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/Cast_1}linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/strided_slice_1*
out_idx0*
T0	*2
_output_shapes 
:���������:���������
�
�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/strided_slice_2/stackConst*
dtype0*
valueB: *
_output_shapes
:
�
�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/strided_slice_2/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
�
�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/strided_slice_2/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
}linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/strided_slice_2StridedSliceblinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Identity_1�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/strided_slice_2/stack�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/strided_slice_2/stack_1�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/strided_slice_2/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0	*
shrink_axis_mask
�
|linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/ExpandDims/dimConst*
dtype0*
valueB :
���������*
_output_shapes
: 
�
xlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/ExpandDims
ExpandDims}linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/strided_slice_2|linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/ExpandDims/dim*

Tdim0*
T0	*
_output_shapes
:
�
�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/SparseToDense/sparse_valuesConst*
dtype0
*
value	B
 Z*
_output_shapes
: 
�
�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/SparseToDense/default_valueConst*
dtype0
*
value	B
 Z *
_output_shapes
: 
�
{linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/SparseToDenseSparseToDensevlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/ListDiffxlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/ExpandDims�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/SparseToDense/sparse_values�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/SparseToDense/default_value*
validate_indices(*
Tindices0	*
T0
*#
_output_shapes
:���������
�
{linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/Reshape/shapeConst*
dtype0*
valueB"����   *
_output_shapes
:
�
ulinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/ReshapeReshapevlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/ListDiff{linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/Reshape/shape*'
_output_shapes
:���������*
Tshape0*
T0	
�
xlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/zeros_like	ZerosLikeulinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/Reshape*
T0	*'
_output_shapes
:���������
�
ylinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/concat/axisConst*
dtype0*
value	B :*
_output_shapes
: 
�
tlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/concatConcatV2ulinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/Reshapexlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/zeros_likeylinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/concat/axis*
N*

Tidx0*
T0	*'
_output_shapes
:���������
�
slinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/ShapeShapevlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/ListDiff*
out_type0*
T0	*
_output_shapes
:
�
rlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/FillFillslinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/Shapeslinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/Const*
T0*#
_output_shapes
:���������
�
{linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/concat_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 
�
vlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/concat_1ConcatV2`linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Gather_3tlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/concat{linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/concat_1/axis*
N*

Tidx0*
T0	*'
_output_shapes
:���������
�
{linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/concat_2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
�
vlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/concat_2ConcatV2`linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Gather_4rlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/Fill{linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/concat_2/axis*
N*

Tidx0*
T0*#
_output_shapes
:���������
�
{linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/SparseReorderSparseReordervlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/concat_1vlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/concat_2blinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Identity_1*
T0*6
_output_shapes$
":���������:���������
�
vlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/IdentityIdentityblinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Identity_1*
T0	*
_output_shapes
:
�
�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
�
�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
�
�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
�
}linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/strided_sliceStridedSliceylinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/SparseReorder�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/strided_slice/stack�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/strided_slice/stack_1�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:���������*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
�
tlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/CastCast}linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:���������
�
�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/embedding_lookupGather;linear/review_weighted_by_review_weight/weights/part_0/read{linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/SparseReorder:1*
validate_indices(*
Tparams0*
Tindices0	*I
_class?
=;loc:@linear/review_weighted_by_review_weight/weights/part_0*'
_output_shapes
:���������
�
tlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/RankConst*
dtype0*
value	B :*
_output_shapes
: 
�
ulinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
�
slinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/subSubtlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/Rankulinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/sub/y*
T0*
_output_shapes
: 
�
~linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/ExpandDims/dimConst*
dtype0*
value	B : *
_output_shapes
: 
�
zlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/ExpandDims
ExpandDimsslinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/sub~linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
�
zlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/Fill/valueConst*
dtype0*
value	B :*
_output_shapes
: 
�
tlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/FillFillzlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/ExpandDimszlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/Fill/value*
T0*#
_output_shapes
:���������
�
ulinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/ShapeShape}linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/SparseReorder:1*
out_type0*
T0*
_output_shapes
:
�
{linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
�
vlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/concatConcatV2ulinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/Shapetlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/Fill{linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/concat/axis*
N*

Tidx0*
T0*#
_output_shapes
:���������
�
wlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/ReshapeReshape}linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows_1/SparseReorder:1vlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/concat*'
_output_shapes
:���������*
Tshape0*
T0
�
slinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/mulMul�linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/embedding_lookupwlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/Reshape*
T0*'
_output_shapes
:���������
�
olinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse
SegmentSumslinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/multlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse/Cast*
Tindices0*
T0*'
_output_shapes
:���������
�
glinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Reshape_2/shapeConst*
dtype0*
valueB"����   *
_output_shapes
:
�
alinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Reshape_2Reshapeylinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/SparseFillEmptyRows/SparseToDenseglinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Reshape_2/shape*'
_output_shapes
:���������*
Tshape0*
T0

�
]linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/ShapeShapeolinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:
�
klinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
�
mlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
�
mlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
�
elinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/strided_sliceStridedSlice]linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Shapeklinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/strided_slice/stackmlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/strided_slice/stack_1mlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
�
_linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
�
]linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/stackPack_linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/stack/0elinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/strided_slice*
N*

axis *
T0*
_output_shapes
:
�
\linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/TileTilealinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Reshape_2]linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/stack*

Tmultiples0*
T0
*0
_output_shapes
:������������������
�
blinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/zeros_like	ZerosLikeolinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
Wlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weightsSelect\linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Tileblinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/zeros_likeolinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
\linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/CastCast transform/transform_1/Identity_5*

DstT0*

SrcT0	*
_output_shapes
:
�
elinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:
�
dlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
�
_linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Slice_1Slice\linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Castelinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Slice_1/begindlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
�
_linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Shape_1ShapeWlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights*
out_type0*
T0*
_output_shapes
:
�
elinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:
�
dlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Slice_2/sizeConst*
dtype0*
valueB:
���������*
_output_shapes
:
�
_linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Slice_2Slice_linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Shape_1elinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Slice_2/begindlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
�
clinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
�
^linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/concatConcatV2_linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Slice_1_linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Slice_2clinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
�
alinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Reshape_3ReshapeWlinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights^linear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/concat*'
_output_shapes
:���������*
Tshape0*
T0
l
linear/linear/Reshape/shapeConst*
dtype0*
valueB"����   *
_output_shapes
:
�
linear/linear/ReshapeReshapealinear/linear/review_weighted_by_review_weight/review_weighted_by_review_weight_weights/Reshape_3linear/linear/Reshape/shape*'
_output_shapes
:���������*
Tshape0*
T0
�
+linear/bias_weight/part_0/Initializer/ConstConst*
dtype0*,
_class"
 loc:@linear/bias_weight/part_0*
valueB*    *
_output_shapes
:
�
linear/bias_weight/part_0
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*,
_class"
 loc:@linear/bias_weight/part_0*
shared_name 
�
 linear/bias_weight/part_0/AssignAssignlinear/bias_weight/part_0+linear/bias_weight/part_0/Initializer/Const*
validate_shape(*,
_class"
 loc:@linear/bias_weight/part_0*
use_locking(*
T0*
_output_shapes
:
�
linear/bias_weight/part_0/readIdentitylinear/bias_weight/part_0*,
_class"
 loc:@linear/bias_weight/part_0*
T0*
_output_shapes
:
c
linear/bias_weightIdentitylinear/bias_weight/part_0/read*
T0*
_output_shapes
:
�
linear/linear/BiasAddBiasAddlinear/linear/Reshapelinear/bias_weight*'
_output_shapes
:���������*
data_formatNHWC*
T0
l
predictions/zeros_like	ZerosLikelinear/linear/BiasAdd*
T0*'
_output_shapes
:���������
Y
predictions/concat/axisConst*
dtype0*
value	B :*
_output_shapes
: 
�
predictions/concatConcatV2predictions/zeros_likelinear/linear/BiasAddpredictions/concat/axis*
N*

Tidx0*
T0*'
_output_shapes
:���������
h
predictions/logisticSigmoidlinear/linear/BiasAdd*
T0*'
_output_shapes
:���������
j
predictions/probabilitiesSoftmaxpredictions/concat*
T0*'
_output_shapes
:���������
_
predictions/classes/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
�
predictions/classesArgMaxpredictions/concatpredictions/classes/dimension*#
_output_shapes
:���������*

Tidx0*
T0

initNoOp
�
init_all_tablesNoOp:^transform/transform/string_to_index/hash_table/table_init<^transform/transform_1/string_to_index/hash_table/table_init
R
save_1/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
�
save_1/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_da9d68c10f3a48459ac1aa15dda862db/part*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
S
save_1/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 
�
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
�
save_1/SaveV2/tensor_namesConst*
dtype0*e
value\BZBglobal_stepBlinear/bias_weightB/linear/review_weighted_by_review_weight/weights*
_output_shapes
:
�
save_1/SaveV2/shape_and_slicesConst*
dtype0*1
value(B&B B1 0,1B10001 1 0,10001:0,1*
_output_shapes
:
�
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesglobal_steplinear/bias_weight/part_0/read;linear/review_weighted_by_review_weight/weights/part_0/read*
dtypes
2	
�
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*)
_class
loc:@save_1/ShardedFilename*
T0*
_output_shapes
: 
�
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
N*

axis *
T0*
_output_shapes
:
�
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
�
save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints*
T0*
_output_shapes
: 
q
save_1/RestoreV2/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
j
!save_1/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2	*
_output_shapes
:
�
save_1/AssignAssignglobal_stepsave_1/RestoreV2*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 
z
save_1/RestoreV2_1/tensor_namesConst*
dtype0*'
valueBBlinear/bias_weight*
_output_shapes
:
q
#save_1/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueBB1 0,1*
_output_shapes
:
�
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_1Assignlinear/bias_weight/part_0save_1/RestoreV2_1*
validate_shape(*,
_class"
 loc:@linear/bias_weight/part_0*
use_locking(*
T0*
_output_shapes
:
�
save_1/RestoreV2_2/tensor_namesConst*
dtype0*D
value;B9B/linear/review_weighted_by_review_weight/weights*
_output_shapes
:

#save_1/RestoreV2_2/shape_and_slicesConst*
dtype0*(
valueBB10001 1 0,10001:0,1*
_output_shapes
:
�
save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_1/Assign_2Assign6linear/review_weighted_by_review_weight/weights/part_0save_1/RestoreV2_2*
validate_shape(*I
_class?
=;loc:@linear/review_weighted_by_review_weight/weights/part_0*
use_locking(*
T0*
_output_shapes
:	�N
P
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2
1
save_1/restore_allNoOp^save_1/restore_shard

init_1NoOp
�
init_all_tables_1NoOp:^transform/transform/string_to_index/hash_table/table_init<^transform/transform_1/string_to_index/hash_table/table_init
/

group_depsNoOp^init_1^init_all_tables_1
R
save_2/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
�
save_2/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_2e46391b34bf425dbd6b8c016bfb8539/part*
_output_shapes
: 
{
save_2/StringJoin
StringJoinsave_2/Constsave_2/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
S
save_2/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
^
save_2/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 
�
save_2/ShardedFilenameShardedFilenamesave_2/StringJoinsave_2/ShardedFilename/shardsave_2/num_shards*
_output_shapes
: 
�
save_2/SaveV2/tensor_namesConst*
dtype0*e
value\BZBglobal_stepBlinear/bias_weightB/linear/review_weighted_by_review_weight/weights*
_output_shapes
:
�
save_2/SaveV2/shape_and_slicesConst*
dtype0*1
value(B&B B1 0,1B10001 1 0,10001:0,1*
_output_shapes
:
�
save_2/SaveV2SaveV2save_2/ShardedFilenamesave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesglobal_steplinear/bias_weight/part_0/read;linear/review_weighted_by_review_weight/weights/part_0/read*
dtypes
2	
�
save_2/control_dependencyIdentitysave_2/ShardedFilename^save_2/SaveV2*)
_class
loc:@save_2/ShardedFilename*
T0*
_output_shapes
: 
�
-save_2/MergeV2Checkpoints/checkpoint_prefixesPacksave_2/ShardedFilename^save_2/control_dependency*
N*

axis *
T0*
_output_shapes
:
�
save_2/MergeV2CheckpointsMergeV2Checkpoints-save_2/MergeV2Checkpoints/checkpoint_prefixessave_2/Const*
delete_old_dirs(
�
save_2/IdentityIdentitysave_2/Const^save_2/control_dependency^save_2/MergeV2Checkpoints*
T0*
_output_shapes
: 
q
save_2/RestoreV2/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
j
!save_2/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
�
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices*
dtypes
2	*
_output_shapes
:
�
save_2/AssignAssignglobal_stepsave_2/RestoreV2*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 
z
save_2/RestoreV2_1/tensor_namesConst*
dtype0*'
valueBBlinear/bias_weight*
_output_shapes
:
q
#save_2/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueBB1 0,1*
_output_shapes
:
�
save_2/RestoreV2_1	RestoreV2save_2/Constsave_2/RestoreV2_1/tensor_names#save_2/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/Assign_1Assignlinear/bias_weight/part_0save_2/RestoreV2_1*
validate_shape(*,
_class"
 loc:@linear/bias_weight/part_0*
use_locking(*
T0*
_output_shapes
:
�
save_2/RestoreV2_2/tensor_namesConst*
dtype0*D
value;B9B/linear/review_weighted_by_review_weight/weights*
_output_shapes
:

#save_2/RestoreV2_2/shape_and_slicesConst*
dtype0*(
valueBB10001 1 0,10001:0,1*
_output_shapes
:
�
save_2/RestoreV2_2	RestoreV2save_2/Constsave_2/RestoreV2_2/tensor_names#save_2/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
�
save_2/Assign_2Assign6linear/review_weighted_by_review_weight/weights/part_0save_2/RestoreV2_2*
validate_shape(*I
_class?
=;loc:@linear/review_weighted_by_review_weight/weights/part_0*
use_locking(*
T0*
_output_shapes
:	�N
P
save_2/restore_shardNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_2
1
save_2/restore_allNoOp^save_2/restore_shard"B
save_2/Const:0save_2/Identity:0save_2/restore_all (5 @F8" 
global_step

global_step:0"�
trainable_variables��
�
8linear/review_weighted_by_review_weight/weights/part_0:0=linear/review_weighted_by_review_weight/weights/part_0/Assign=linear/review_weighted_by_review_weight/weights/part_0/read:0"?
/linear/review_weighted_by_review_weight/weights�N  "�N
�
linear/bias_weight/part_0:0 linear/bias_weight/part_0/Assign linear/bias_weight/part_0/read:0"
linear/bias_weight ""�
	variables��
7
global_step:0global_step/Assignglobal_step/read:0
�
8linear/review_weighted_by_review_weight/weights/part_0:0=linear/review_weighted_by_review_weight/weights/part_0/Assign=linear/review_weighted_by_review_weight/weights/part_0/read:0"?
/linear/review_weighted_by_review_weight/weights�N  "�N
�
linear/bias_weight/part_0:0 linear/bias_weight/part_0/Assign linear/bias_weight/part_0/read:0"
linear/bias_weight ""�
table_initializerz
x
9transform/transform/string_to_index/hash_table/table_init
;transform/transform_1/string_to_index/hash_table/table_init" 
legacy_init_op


group_deps"l
model_variablesY
W
8linear/review_weighted_by_review_weight/weights/part_0:0
linear/bias_weight/part_0:0"c
linearY
W
8linear/review_weighted_by_review_weight/weights/part_0:0
linear/bias_weight/part_0:0*�
default_input_alternative:None�
*
inputs 
Placeholder:0���������3
classes(
predictions/classes:0	���������<
scores2
predictions/probabilities:0���������tensorflow/serving/classify*�
serving_default�
*
inputs 
Placeholder:0���������3
classes(
predictions/classes:0	���������<
scores2
predictions/probabilities:0���������tensorflow/serving/classify