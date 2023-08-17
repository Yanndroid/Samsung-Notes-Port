.class public Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_DENOMINATOR_SCALE:F = 1744.7f

.field private static final DEFAULT_FILTER_ALPHA:F = 0.3f

.field private static final DEFAULT_NORMALIZED_VELOCITY:F = 3000.0f

.field private static final LOG_TAG:Ljava/lang/String; = "SpenScaleStabilizer"

.field private static final TOUCH_INTERVAL_THRESHOLD:F = 10.0f


# instance fields
.field private final mDenominatorScale:F

.field private final mDensity:F

.field private final mGestureValueFilter:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;

.field private final mPivotXFilter:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;

.field private final mPivotYFilter:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;

.field private final mPreviousScaleInfo:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;

.field private mPreviousTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->mPreviousTime:J

    new-instance v0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->mPreviousScaleInfo:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;

    new-instance v0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->mGestureValueFilter:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;

    new-instance v0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->mPivotXFilter:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;

    new-instance v0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->mPivotYFilter:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;

    iput p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->mDensity:F

    div-float/2addr p2, p1

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->calcDenominatorScale(F)F

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->mDenominatorScale:F

    sget-object v0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JavaGesture] mDensity ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", mDenominatorScale="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private calcDenominatorScale(F)F
    .locals 2

    const v0, 0x44da1666    # 1744.7f

    div-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    move p1, v0

    :cond_1
    return p1
.end method

.method private getPinchZoomEffectAlpha(Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;)F
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->getPinchZoomPossibility(Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;)F

    move-result p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->mPreviousTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/high16 v0, 0x40400000    # 3.0f

    const/high16 v1, 0x41100000    # 9.0f

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr p1, v2

    sub-float/2addr v1, p1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    sub-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float p1, v0, p1

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->mDenominatorScale:F

    div-float/2addr p1, v0

    return p1
.end method

.method private getPinchZoomPossibility(Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;)F
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->getVelocity(Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;)D

    move-result-wide v0

    double-to-float p1, v0

    const v0, 0x453b8000    # 3000.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    add-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    return v0
.end method

.method private getPivotMovementLength(Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;)D
    .locals 4

    iget v0, p1, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;->pivotX:F

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->mPreviousScaleInfo:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;

    iget v2, v1, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;->pivotX:F

    sub-float/2addr v0, v2

    float-to-double v2, v0

    iget p1, p1, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;->pivotY:F

    iget v0, v1, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;->pivotY:F

    sub-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    iget p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->mDensity:F

    float-to-double v2, p1

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private getVelocity(Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;)D
    .locals 6

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->getPivotMovementLength(Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-nez p1, :cond_0

    return-wide v2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->mPreviousTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    const-wide v0, 0x47efffffe0000000L    # 3.4028234663852886E38

    return-wide v0

    :cond_1
    long-to-float p1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr p1, v2

    float-to-double v2, p1

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public reset(Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->mPreviousScaleInfo:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;->copyTo(Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->mPreviousTime:J

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->mGestureValueFilter:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;

    iget v1, p1, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;->span:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;->reset(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->mPivotXFilter:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;

    iget v1, p1, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;->pivotX:F

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;->reset(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->mPivotYFilter:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;

    iget p1, p1, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;->pivotY:F

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;->reset(F)V

    return-void
.end method

.method public stabilizeScaleInfo(Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;)Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->getPinchZoomEffectAlpha(Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;)F

    move-result v0

    new-instance v1, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->mGestureValueFilter:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;

    iget v3, p1, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;->span:F

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;->correct(FF)F

    move-result v0

    iput v0, v1, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;->span:F

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->mPivotXFilter:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;

    iget v2, p1, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;->pivotX:F

    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;->correct(FF)F

    move-result v0

    iput v0, v1, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;->pivotX:F

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->mPivotYFilter:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;

    iget v2, p1, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;->pivotY:F

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;->correct(FF)F

    move-result v0

    iput v0, v1, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;->pivotY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->mPreviousTime:J

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer;->mPreviousScaleInfo:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;->copyTo(Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenScaleStabilizer$ScaleInfo;)V

    return-object v1
.end method
