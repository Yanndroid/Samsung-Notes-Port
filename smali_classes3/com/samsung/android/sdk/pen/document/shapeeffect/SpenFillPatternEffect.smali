.class public Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillPatternEffect;
.super Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillEffectBase;
.source "SourceFile"


# instance fields
.field private mBackgroundColor:I

.field private mForegroundColor:I

.field private final mPattern:[C


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillEffectBase;-><init>(I)V

    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillPatternEffect;->mPattern:[C

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillPatternEffect;->mForegroundColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillPatternEffect;->mBackgroundColor:I

    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillPatternEffect;->mBackgroundColor:I

    return v0
.end method

.method public getForegroundColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillPatternEffect;->mForegroundColor:I

    return v0
.end method

.method public getPattern()[C
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillPatternEffect;->mPattern:[C

    return-object v0
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillPatternEffect;->mBackgroundColor:I

    return-void
.end method

.method public setForegroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillPatternEffect;->mForegroundColor:I

    return-void
.end method

.method public setPattern([C)V
    .locals 3

    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/document/shapeeffect/SpenFillPatternEffect;->mPattern:[C

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Pattern length is not valid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
