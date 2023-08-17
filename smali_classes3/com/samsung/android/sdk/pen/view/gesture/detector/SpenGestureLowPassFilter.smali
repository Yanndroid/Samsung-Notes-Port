.class public Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCorrectValue:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;->mCorrectValue:F

    return-void
.end method


# virtual methods
.method public correct(FF)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    iget v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;->mCorrectValue:F

    mul-float/2addr v0, v1

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    iput v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;->mCorrectValue:F

    return v0
.end method

.method public reset(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenGestureLowPassFilter;->mCorrectValue:F

    return-void
.end method
