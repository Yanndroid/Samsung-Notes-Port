.class public Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public baseColor:I

.field public dashedLineBackgroundColor:I

.field public dashedLineColor:I

.field public dashedLineSegment:[F

.field public isDashedLineEnabled:Z

.field public movedColor:I

.field public pointBorderColor:I

.field public rotationHandleDistance:F

.field public rotationHandleSize:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->baseColor:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->movedColor:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->pointBorderColor:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->dashedLineBackgroundColor:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->dashedLineColor:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->isDashedLineEnabled:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->dashedLineSegment:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->rotationHandleSize:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->rotationHandleDistance:F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->baseColor:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->movedColor:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->pointBorderColor:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->dashedLineBackgroundColor:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->dashedLineColor:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->isDashedLineEnabled:Z

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->dashedLineSegment:[F

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->rotationHandleSize:F

    iput v2, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->rotationHandleDistance:F

    iget v2, p1, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->baseColor:I

    iput v2, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->baseColor:I

    iget v2, p1, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->movedColor:I

    iput v2, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->movedColor:I

    iget v2, p1, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->pointBorderColor:I

    iput v2, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->pointBorderColor:I

    iget v2, p1, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->dashedLineBackgroundColor:I

    iput v2, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->dashedLineBackgroundColor:I

    iget v2, p1, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->dashedLineColor:I

    iput v2, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->dashedLineColor:I

    iget-boolean v2, p1, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->isDashedLineEnabled:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->isDashedLineEnabled:Z

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->dashedLineSegment:[F

    aget v3, v2, v0

    aput v3, v1, v0

    const/4 v0, 0x1

    aget v2, v2, v0

    aput v2, v1, v0

    iget v0, p1, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->rotationHandleSize:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->rotationHandleSize:F

    iget p1, p1, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->rotationHandleDistance:F

    iput p1, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->rotationHandleDistance:F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->baseColor:I

    check-cast p1, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;

    iget v2, p1, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->baseColor:I

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->movedColor:I

    iget v2, p1, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->movedColor:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->pointBorderColor:I

    iget v2, p1, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->pointBorderColor:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->dashedLineBackgroundColor:I

    iget v2, p1, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->dashedLineBackgroundColor:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->dashedLineColor:I

    iget v2, p1, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->dashedLineColor:I

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->isDashedLineEnabled:Z

    iget-boolean v2, p1, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->isDashedLineEnabled:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->dashedLineSegment:[F

    aget v2, v0, v1

    iget-object v4, p1, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->dashedLineSegment:[F

    aget v5, v4, v1

    cmpl-float v2, v2, v5

    if-nez v2, :cond_1

    aget v0, v0, v3

    aget v2, v4, v3

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->rotationHandleSize:F

    iget v2, p1, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->rotationHandleSize:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->rotationHandleDistance:F

    iget p1, p1, Lcom/samsung/android/sdk/pen/control/SpenControlStyleInfo;->rotationHandleDistance:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    move v1, v3

    :cond_1
    return v1
.end method
