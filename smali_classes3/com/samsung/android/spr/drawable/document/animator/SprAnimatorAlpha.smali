.class public Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorAlpha;
.super Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;
.source "SourceFile"


# instance fields
.field private from:F

.field private to:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;-><init>(B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorAlpha;->from:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorAlpha;->to:F

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;-><init>(B)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorAlpha;->from:F

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorAlpha;->to:F

    invoke-virtual {p0, p1}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorAlpha;->fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    invoke-direct {p0}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorAlpha;->init()V

    return-void
.end method

.method private init()V
    .locals 5

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorAlpha;->from:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorAlpha;->from:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v2

    if-lez v3, :cond_1

    move v0, v2

    :cond_1
    iput v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorAlpha;->from:F

    iget v3, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorAlpha;->to:F

    cmpg-float v4, v3, v1

    if-gez v4, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    iput v1, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorAlpha;->to:F

    cmpl-float v3, v1, v2

    if-lez v3, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    iput v2, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorAlpha;->to:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v0, v1, v3

    const/4 v0, 0x1

    aput v2, v1, v0

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-void
.end method


# virtual methods
.method public fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorAlpha;->from:F

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorAlpha;->to:F

    return-void
.end method

.method public getSPRSize()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->getSPRSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public set(FF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorAlpha;->from:F

    iput p2, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorAlpha;->to:F

    invoke-direct {p0}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorAlpha;->init()V

    return-void
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->toSPR(Ljava/io/DataOutputStream;)V

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorAlpha;->from:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorAlpha;->from:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v2

    if-lez v3, :cond_1

    move v0, v2

    :cond_1
    iput v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorAlpha;->from:F

    iget v3, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorAlpha;->to:F

    cmpg-float v4, v3, v1

    if-gez v4, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    iput v1, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorAlpha;->to:F

    cmpl-float v3, v1, v2

    if-lez v3, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    iput v2, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorAlpha;->to:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorAlpha;->to:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    return-void
.end method

.method public updateValues(Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;)Z
    .locals 1

    iget-boolean v0, p1, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->isLastFrame:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorAlpha;->to:F

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    iput v0, p1, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->alpha:F

    const/4 p1, 0x0

    return p1
.end method
