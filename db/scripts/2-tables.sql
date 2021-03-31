create table if not EXISTS _ResultShifts(
    Id_ResultShift serial PRIMARY KEY,
    Id_Openpit int,
    ShiftNaryadTmin real,
    ShiftPeresmenkaTmin int,
    ShiftTmin int,
    ShiftKweek real,
    PeriodKshift real,
    PeriodTday real,
    DollarCtg real,
    ExpensesYearC1000tg int,
    ResultStrippingCoef real

);
create table IF NOT EXISTS _ResultShiftBlocks(
    Id_ResultShiftBlock serial PRIMARY KEY,
    Id_ResultShift int REFERENCES _ResultShifts,
    Id_Block int,
    Id_RoadCoat int,
    RoadCoat varchar(50),
    Lsm int,
    BuildingC1000tg real,
    KeepingYearC1000tg real,
    AmortizationR real

);
create table IF NOT EXISTS _ResultShiftAutos(
    Id_ResultShiftAuto serial PRIMARY KEY,
    Id_ResultShift int REFERENCES _ResultShifts,
    Id_DumpModel int,
    DumpModel varchar(50),
    DumpNo int,
    DumpYear int,
    DumpPtn real,
    DumpQtn real,
    DumpMaxTsec real,
    DumpMaxNkVt real,
    DumpC1000tg real,
    DumpAmortizationKind int,
    DumpAmortizationRate real,
    DumpTyresN int,
    DumpTyreC1000tg real,
    DumpTyresAmortizationR1000km real,
    DumpTransmissionKPD real,
    DumpEngineKPD real,
    DumpWorkState boolean

);
create table IF NOT EXISTS _ResultEconomDistributation(
    Id_ResultEconomDistributation serial PRIMARY KEY,
    Id_ResultShift int REFERENCES _ResultShifts,
    Id_DumpModel int,
    DumpModel varchar(50),
    Kind smallint,
    IsChangeable boolean,
    RecordNo int,
    RecordName varchar(10),
    Name varchar(255),
    Value real

);
 create table if not EXISTS _ResultShiftUnloadingPunkts(
    Id_ResultShiftUnloadingPunkt serial PRIMARY KEY,
    Id_ResultShift int REFERENCES _ResultShifts,
    Id_UnloadingPunkt int,
    Horizont real,
    MaxV1000m3 real,
    Kind smallint,
    UnloadingAutosCount int,
    UnloadingTmin real,
    ManeuvrTmin real,
    RockVm3 real,
    RockQtn real,
    RockQua real,
    Excv real

);
 create table IF NOT EXISTS _ResultEconomReports(
    Id_ResultEconomReport serial PRIMARY KEY,
    Id_ResultShift int REFERENCES _ResultShifts,
    IsChangeable boolean,
    RecordNo int,
    RecordName varchar(10),
    Name varchar(255),
    Value real

);
 create table IF NOT EXISTS _ResultShiftAutoEvents(
    Id_ResultShiftAutoEvent serial PRIMARY KEY,
    Id_ResultShiftAuto int REFERENCES _ResultShiftAutos,
    Kind smallint,
    Direction smallint,
    Sm real,
    Tmin real,
    Gx real,
    Id_Punkt0 bigint,
    Horizont0 real,
    Id_Punkt1 int,
    Horizont1 real,
    Id_Rock int,
    Rock varchar(50),
    RockIsMineralWealth boolean,
    RockVm3 real,
    RockQtn real,
    WAvgHmNum real,
    WAvgHmDen real,
    AvgVkmhNum real,
    AvgVkmhDen real,
    WAvgLoadingSkmNum real,
    WAvgLoadingSkmDen real,
    RockQua real,
    Excv real

);
 create table IF NOT EXISTS _ResultShiftAutoReports(
    Id_ResultShiftAutoReports serial PRIMARY KEY,
    Id_ResultShift int REFERENCES _ResultShifts,
    Id_ResultShiftAuto int REFERENCES _ResultShiftAutos,
    Id_DumpModel int,
    DumpModel varchar(50),
    Kind smallint,
    IsChangeable boolean,
    RecordNo int,
    RecordName varchar(10),
    Name varchar(255),
    Value real

);
 
 create table IF NOT EXISTS _ResultShiftBlockReports(
    Id_ResultShiftBlockReport serial PRIMARY KEY,
    Id_ResultShift int REFERENCES _ResultShifts,
    Id_ResultShiftBlock int REFERENCES _ResultShiftBlocks,
    Id_RoadCoat int,
    RoadCoat varchar(50),
    Lsm int,
    Kind smallint,
    IsChangeable boolean,
    RecordNo int,
    RecordName varchar(10),
    Name varchar(255),
    Value real

);
 
 create table IF NOT EXISTS _ResultShiftExcavatorEvents(
    Id_ResultExcavatorEvent serial PRIMARY KEY,
    Id_ResultShiftExcavator int,
    Kind smallint,
    Tmin real,
    Gx real,
    Id_Rock int,
    Rock varchar(50),
    RockIsMineralWealth boolean,
    RockVm3 real,
    RockQtn real,
    Id_DumpModel int,
    DumpModel varchar(50),
    DumpNo int,
    RockQua real,
    Excv real

);
 create table IF NOT EXISTS _ResultShiftExcavatorReports(
    Id_ResultExcavatorReport serial PRIMARY KEY,
    Id_ResultShift int REFERENCES _ResultShifts,
    Id_ResultShiftExcavator int,
    Id_DumpModel int,
    DumpModel varchar(50),
    Kind smallint,
    IsChangeable boolean,
    RecordNo int,
    RecordName varchar(10),
    Name varchar(255),
    Value real

);
 create table IF NOT EXISTS _ResultShiftExcavators(
    Id_ResultExcavator serial PRIMARY KEY,
    Id_ResultShift int REFERENCES _ResultShifts,
    Id_DumpModel int,
    DumpModel varchar(50),
    DumpNo int,
    DumpYear int,
    DumpTsec real,
    DumpMaxVm3 real,
    DumpMaxNkVt real,
    DumpEngineKIM real,
    DumpEngineKPD real,
    DumpC1000tg real,
    DumpMaterialsMonthC1000tg real,
    DumpUnAccountedMonthC1000tg real,
    Id_LoadingPunkt int,
    Horizont real,
    DumpWorkState boolean

);
 create table if not EXISTS _ResultShiftUnloadingPunktEvents(
    Id_ResultShiftUnloadingPunktEvent serial PRIMARY KEY,
    Id_ResultShiftUnloadingPunkt int REFERENCES _ResultShiftUnloadingPunkts,
    Kind smallint,
    Tmin real,
    Id_Rock int,
    Rock varchar(50),
    RockIsMineralWealth boolean,
    RockVm3 real,
    RockQtn real,
    Id_DumpModel int,
    DumpModel varchar(50),
    DumpNo int,
    RockQua real,
    Excv real

);
 create table if not EXISTS _ResultShiftUnloadingPunktRocks(
    Id_ResultShiftUnloadingPunktRock serial PRIMARY KEY,
    Id_ResultShiftUnloadingPunkt int REFERENCES _ResultShiftUnloadingPunkts,
    UnloadingAutosCount int,
    RockVm3 real,
    RockQtn real,
    Id_Rock int,
    Rock varchar(50),
    RockIsMineralWealth boolean,
    RequiredContent real,
    Content real,
    RockQua real,
    Excv real

);

 create table if not EXISTS _ResultTechnologicAutoParams(
    Id_ResultTechnologicAutoParam serial PRIMARY KEY,
    Id_ResultShift int REFERENCES _ResultShifts,
    Id_DumpModel int,
    DumpModel varchar(50),
    IsChangeable boolean,
    RecordNo int,
    RecordName varchar(10),
    Name varchar(255),
    Value real

);
create table if not EXISTS _ResultTechnologicRockParams(
    Id_ResultTechnologicRockParam serial PRIMARY KEY,
    Id_ResultShift int REFERENCES _ResultShifts,
    Id_Rock int,
    Rock varchar(50),
    RockIsMineralWealth boolean,
    IsChangeable boolean,
    RecordNo int,
    RecordName varchar(10),
    Name varchar(255),
    Value real

);
 create table if not EXISTS _ResultVariants(
    Id_ResultVariant serial PRIMARY KEY,
    SortIndex int,
    IsPrint boolean,
    Variant varchar(100),
    VariantDate timestamp without time zone,
    PeriodTday real,
    PeriodKshift real,
    ShiftTmin real,
    ShiftTurnoverTmin real,
    ShiftNaryadFactTmin real,
    ShiftKweek real,
    DollarCtg real,
    Autos varchar(255),
    AutosAutosCount0 real,
    AutosAutosCount1 real,
    AutosTripsCountNulled real,
    AutosTripsCountLoading real,
    AutosTripsCountUnLoading real,
    AutosRockVm3 real,
    AutosRockQtn real,
    AutosSkmNulled real,
    AutosSkmLoading real,
    AutosSkmUnLoading real,
    AutosLoadingWAvgSkm real,
    AutosLoadingAvgSkm real,
    AutosWAvgHm real,
    AutosShiftAvgSkm real,
    AutosShiftAvgSkm_reis real,
    AutosAvgVkmhNulled real,
    AutosAvgVkmhLoading real,
    AutosAvgVkmhUnLoading real,
    AutosAvgTechVkmh real,
    AutosGxWork real,
    AutosGxWaiting real,
    AutosGxNulled real,
    AutosGxLoading real,
    AutosGxUnLoading real,
    AutosUdGx_gr_tkm real,
    AutosGxCtg real,
    AutosTminMoving real,
    AutosTminWaiting real,
    AutosTminManevr real,
    AutosTminOnLoading real,
    AutosTminOnUnLoading real,
    AutosTminNulled real,
    AutosTminLoading real,
    AutosTminUnLoading real,
    AutosReysAvgTminNulled real,
    AutosReysAvgTminLoading real,
    AutosReysAvgTminUnLoading real,
    AutosAvgTimeUsingCoef real,
    AutosTyresCount real,
    AutosTyresSkm real,
    AutosUsedTyresCount real,
    AutosTyresCtg real,
    AutosWorkSumGxCtg real,
    AutosWorkSumTyresCtg real,
    AutosWorkSparesCtg real,
    AutosWorkMaterialsCtg real,
    AutosWorkMaintenancesCtg real,
    AutosWorkSalariesCtg real,
    AutosWaitingSumGxCtg real,
    AutosWaitingSparesCtg real,
    AutosWaitingMaterialsCtg real,
    AutosWaitingMaintenancesCtg real,
    AutosWaitingSalariesCtg real,
    AutosAmortizationCtg real,
    BlocksBlocksCount real,
    BlocksLm real,
    BlocksRockVm3 real,
    BlocksRockQtn real,
    BlocksAutosCountNulled real,
    BlocksAutosCountLoading real,
    BlocksAutosCountUnLoading real,
    BlocksWaitingsCountNulled real,
    BlocksWaitingsCountLoading real,
    BlocksWaitingsCountUnLoading real,
    BlocksAvgVkmhNulled real,
    BlocksAvgVkmhLoading real,
    BlocksAvgVkmhUnLoading real,
    BlocksMovingAvgTminNulled real,
    BlocksMovingAvgTminLoading real,
    BlocksMovingAvgTminUnLoading real,
    BlocksWaitingAvgTminNulled real,
    BlocksWaitingAvgTminLoading real,
    BlocksWaitingAvgTminUnLoading real,
    BlocksEmploymentCoef real,
    BlocksGxNulled real,
    BlocksGxLoading real,
    BlocksGxUnLoading real,
    BlocksUdGx_l_m real,
    BlocksRepairCtg real,
    BlocksAmortizationCtg real,
    Excavators varchar(255),
    ExcavatorsExcavatorsCount0 real,
    ExcavatorsExcavatorsCount1 real,
    ExcavatorsAutosCount real,
    ExcavatorsRockVm3 real,
    ExcavatorsRockQtn real,
    ExcavatorsPlanRockVm3 real,
    ExcavatorsPlanRockQtn real,
    ExcavatorsGxWork real,
    ExcavatorsGxWaiting real,
    ExcavatorsTminWork real,
    ExcavatorsTminWaiting real,
    ExcavatorsTminManevr real,
    ExcavatorsUsingPunktCoef real,
    ExcavatorsUsingTimeCoef real,
    ExcavatorsWorkSumGxCtg real,
    ExcavatorsWorkMaterialsCtg real,
    ExcavatorsWorkUnAccountedCtg real,
    ExcavatorsWorkSalariesCtg real,
    ExcavatorsWaitingSumGxCtg real,
    ExcavatorsWaitingMaterialsCtg real,
    ExcavatorsWaitingUnAccountedCtg real,
    ExcavatorsWaitingSalariesCtg real,
    ExcavatorsAmortizationCtg real,
    EconomExpensesCtg real,
    IsBaseVariant boolean,
    ProductOutPutPercent real,
    ProductPriceCtg real,
    MTWorkByScheduleCtg real,
    TruckCostCtg real,
    ServiceExpensesCtg real,
    BaseVariantExpenesCtg real,
    PlannedRockVolumeCm real,
    CurrOreQtn real,
    CurrOreVm3 real,
    CurrStrippingQtn real,
    CurrStrippingVm3 real,
    Ks real
);
CREATE TABLE IF NOT EXISTS AutoEngines (
	Id_Engine serial PRIMARY KEY,
	SortIndex int,
	Name varchar(50),
	Nmax real
);
CREATE TABLE IF NOT EXISTS Autos (
	Id_Auto serial PRIMARY KEY,
	SortIndex int,
	Id_Engine int REFERENCES AutoEngines,
	Name varchar(50),
	BodySpace real,
	Tonnage real,
	P real,
	F real,
	Ro real,
	TransmissionKind int,
	TransmissionKPD real,
	t_r real,
	Rmin real,
	TyresCount int,
	ALength real,
	AWidth real,
	AHeight real,
	BalanceC1000tg real,
	Note text
);

CREATE TABLE IF NOT EXISTS ExcavatorEngines (
	Id_Engine serial PRIMARY KEY,
	SortIndex int,
	Name varchar(50),
	Nmax real
);

CREATE TABLE IF NOT EXISTS Openpits (
	Id_Openpit serial PRIMARY KEY,
	Name varchar(50),
	DateCreate timestamp without time zone,
	MinX real,
	MinY real,
	MinZ real,
	MaxX real,
	MaxY real,
	MaxZ real,
	Note varchar(200),
	TotalKurs real,
	TotalExpenses real,
	TotalSalaryCoef real,
	TotalShiftUsingCoefNormal real,
	TotalShiftUsingCoefDayShift real,
	TotalShiftUsingCoefExplosion real,
	TotalShiftUsingCoefExplosionCount real,
	ExcavsSalaryMashinist0 real,
	ExcavsSalaryMashinist1 real,
	ExcavsSalaryAssistant0 real,
	ExcavsSalaryAssistant1 real,
	ExcavsWorkShiftsCount int, 
	ExcavsWorkShiftDuration real,
	ExcavsShiftTurnoverTime int,
	ExcavsEnergyCost real,
	ExcavsAmortazationNorm real,
	AutosSalary0 real,
	AutosSalary1 real,
	AutosWorkShiftsCount int,
	AutosWorkShiftDuration real,
	AutosShiftTurnoverTime int,
	AutosFuelCostWinter real,
	AutosFuelCostSummer real,
	AutosWinterMonthCount int,
	AutosFuelCostTarif int,
	WorkRegimeKind int,
	WorkRegimeIsStrippingCoefUsing boolean,
	ParamsShiftDuration int,
	ParamsPeriodDuration int,
	ParamsIsAccumulateData boolean,
	ParamsAnimationTimeScale int,
	ResultStrippingCoef real,
	ResultTnaryadSec int,
	ResultPeriodCoef real,
	ResultWorkedAutoCount int,
	ResultWorkedExcavatorCount int 

);

CREATE TABLE IF NOT EXISTS Excavators (
	Id_Excavator serial PRIMARY KEY,
	SortIndex int,
	Id_Engine int REFERENCES ExcavatorEngines,
	Name varchar(50),
	BucketCapacity real,
	CycleTime real,
	ELength real,
	EWidth real,
	EHeight real, 
	BalanceC1000tg real,
	Note text
);
CREATE TABLE IF NOT EXISTS OpenpitRocks (
	Id_Rock serial PRIMARY KEY,
	SortIndex int,
	Id_Openpit int REFERENCES Openpits,
	Name varchar(50), 
	IsMineralWealth boolean
);

CREATE TABLE IF NOT EXISTS OpenpitDeportExcavators (
	Id_DeportExcavator serial PRIMARY KEY,
	SortIndex int,
	Id_Openpit int REFERENCES Openpits,
	Id_Excavator int REFERENCES Excavators,
	ParkNo int,
	EYear int,
	WorkState boolean,
	Cost real,
	FactCycleTime real,
	AddCostMaterials real,
	AddCostUnAccounted real,
	EngineKIM real,
	EngineKPD real,
	SENAmortizationRate real
);
CREATE TABLE IF NOT EXISTS RoadCoats (
	Id_RoadCoat serial PRIMARY KEY,
	SortIndex int,
	Name varchar(100),
	ShortName varchar(20)
);

CREATE TABLE IF NOT EXISTS OpenpitPoints (
	Id_Point serial PRIMARY KEY,
	Id_Openpit int REFERENCES Openpits,
	X real,
	Y real,
	Z real
);

CREATE TABLE IF NOT EXISTS OpenpitCourses (
	Id_Course serial PRIMARY KEY,
	Id_Openpit int REFERENCES Openpits,
	Id_Point0 int,
	Id_Point1 int,
	Kind int
);

CREATE TABLE IF NOT EXISTS OpenpitShiftPunkts (
	Id_ShiftPunkt serial PRIMARY KEY,
	SortIndex int,
	Id_Openpit int REFERENCES Openpits,
	Id_Point int REFERENCES OpenpitPoints
);

CREATE TABLE IF NOT EXISTS OpenpitLoadingPunkts (
	Id_LoadingPunkt serial PRIMARY KEY,
	SortIndex int,
	Id_Openpit int REFERENCES Openpits,
	Id_Point int REFERENCES OpenpitPoints,
	Id_DeportExcavator int REFERENCES OpenpitDeportExcavators
);

CREATE TABLE IF NOT EXISTS AutoFKs (
	Id_FK serial PRIMARY KEY,
	Id_Auto int REFERENCES Autos,
	V real,
	Fk real
);
CREATE TABLE IF NOT EXISTS OpenpitBlocks (
	Id_Block serial PRIMARY KEY,
	Id_Openpit int REFERENCES Openpits,
	Id_RoadCoat int REFERENCES RoadCoats,
	StripCount smallint,
	StripWidth real,
	Kind smallint,
	LoadingVmax real,
	UnLoadingVmax real
);

CREATE TABLE IF NOT EXISTS ExcavatorEngines (
	Id_Engine serial PRIMARY KEY,
	SortIndex int,
	Name varchar(50),
	Nmax real
);

CREATE TABLE IF NOT EXISTS OpenpitAutoExcavAccordances (
	Id_AutoExcavAccordance serial PRIMARY KEY,
	Id_Openpit int REFERENCES Openpits,
	Id_Auto int REFERENCES Autos,
	Id_Excavator int REFERENCES  Excavators
);

CREATE TABLE IF NOT EXISTS OpenpitAutoOtherAccounts (
	Id_AutoOtherAccount serial PRIMARY KEY,
	Id_Openpit int REFERENCES Openpits,
	Id_Auto int REFERENCES Autos,
	Spares real,
	GreasingSubstance real,
	MaintenanceCost real
);

CREATE TABLE IF NOT EXISTS OpenpitBlockPoints (
	Id_BlockPoint serial PRIMARY KEY,
	Id_Block int REFERENCES OpenpitBlocks,
	Id_Point int REFERENCES OpenpitPoints
);


CREATE TABLE IF NOT EXISTS OpenpitCourseBlocks (
	Id_CourseBlock serial PRIMARY KEY,
	Id_Course int REFERENCES OpenpitCourses,
	Id_Block int REFERENCES OpenpitBlocks
);

CREATE TABLE IF NOT EXISTS OpenpitDeportAutos (
	Id_DeportAuto serial PRIMARY KEY,
	Id_Openpit int REFERENCES Openpits,
	SortIndex int,
	Id_Auto int REFERENCES Autos,
	Id_ShiftPunkt int REFERENCES OpenpitShiftPunkts,
	Id_Course int REFERENCES OpenpitCourses,
	ParkNo int,
	AYear int,
	FactTonnage int,
	WorkState boolean,
	Cost real,
	AmortizationKind int,
	AmortizationRate real,
	TransmissionKPD real,
	EngineKPD real,
	TyreCost real,
	TyresRaceRate real,
	ShiftPunkt varchar(50),
	Course varchar(100)
);

CREATE TABLE IF NOT EXISTS OpenpitLoadingPunktRocks (
	Id_LoadingPunktRock serial PRIMARY KEY,
	Id_LoadingPunkt int REFERENCES OpenpitLoadingPunkts,
	SortIndex int,
	Id_Rock int REFERENCES OpenpitRocks,
	DensityInBlock real,
	ShatteringCoef real,
	Content real,
	PlannedV1000m3 real
);

CREATE TABLE IF NOT EXISTS OpenpitRoadOtherAccounts (
	Id_RoadOtherAccount serial PRIMARY KEY,
	Id_Openpit int REFERENCES Openpits,
	Id_RoadCoat int REFERENCES RoadCoats,
	BuildingCosts real,
	KeepingCosts real,
	AmortizationNorm real
);

CREATE TABLE IF NOT EXISTS OpenpitUnLoadingPunkts (
	Id_UnloadingPunkt serial PRIMARY KEY,
	SortIndex int,
	Id_Openpit int REFERENCES Openpits,
	Id_Point int REFERENCES OpenpitPoints,
	MaxV1000m3 real, 
	AutoMaxCount int,
	Kind smallint
);

CREATE TABLE IF NOT EXISTS OpenpitUnLoadingPunktRocks (
	Id_UnLoadingPunktRock serial PRIMARY KEY,
	SortIndex int,
	Id_UnLoadingPunkt int REFERENCES OpenpitUnLoadingPunkts,
	Id_Rock int REFERENCES OpenpitRocks,
    RequiredContent real,
	InitialContent real,
	InitialV1000m3 real
);

CREATE TABLE IF NOT EXISTS RoadCoatUSKs (
	Id_USK serial PRIMARY KEY,
	Id_RoadCoat int REFERENCES RoadCoats,
	P real,
	ValueMin real,
	ValueMax real
);