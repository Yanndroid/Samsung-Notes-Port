.class public Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public advancedSetting:Ljava/lang/String;

.field public color:I

.field public dashOffset:F

.field public dashType:I

.field public fromDarkColor:I

.field public fromLightColor:I

.field public isCurvable:Z

.field public isDpSize:Z

.field public isEraserEnabled:Z

.field public isFixedWidth:Z

.field public name:Ljava/lang/String;

.field public particleDensity:I

.field public particleSize:F

.field public secondaryColor:I

.field public size:F

.field public sizeLevel:I

.field public toDarkColor:I

.field public toLightColor:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.FountainPen"

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->secondaryColor:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isEraserEnabled:Z

    iput v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isDpSize:Z

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->fromLightColor:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->toLightColor:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->fromDarkColor:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->toDarkColor:I

    sget-object v0, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;->CONTINUOUS_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->dashType:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->dashOffset:F

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.FountainPen"

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->secondaryColor:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isEraserEnabled:Z

    iput v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isDpSize:Z

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->fromLightColor:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->toLightColor:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->fromDarkColor:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->toDarkColor:I

    sget-object v0, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;->CONTINUOUS_LINE:Lcom/samsung/android/sdk/pen/document/SpenObjectStroke$PenDashType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->dashType:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->dashOffset:F

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->secondaryColor:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->secondaryColor:I

    iget-boolean v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    iget-boolean v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isEraserEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isEraserEnabled:Z

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    iget-boolean v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->fromLightColor:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->fromLightColor:I

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->toLightColor:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->toLightColor:I

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->fromDarkColor:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->fromDarkColor:I

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->toDarkColor:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->toDarkColor:I

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->dashType:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->dashType:I

    iget p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->dashOffset:F

    iput p1, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->dashOffset:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->size:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->secondaryColor:I

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->secondaryColor:I

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    iget-boolean v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isCurvable:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isEraserEnabled:Z

    iget-boolean v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isEraserEnabled:Z

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleSize:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    iget-boolean v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->isFixedWidth:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->advancedSetting:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->fromLightColor:I

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->fromLightColor:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->toLightColor:I

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->toLightColor:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->fromDarkColor:I

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->fromDarkColor:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->toDarkColor:I

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->toDarkColor:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->dashType:I

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->dashType:I

    if-ne v0, v2, :cond_1

    iget p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->dashOffset:F

    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->dashOffset:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
