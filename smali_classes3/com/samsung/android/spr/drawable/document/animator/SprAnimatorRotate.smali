.class public Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorRotate;
.super Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;
.source "SourceFile"


# instance fields
.field private from:F

.field private pivotX:F

.field private pivotY:F

.field private to:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;-><init>(B)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;-><init>(B)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorRotate;->fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    invoke-direct {p0}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorRotate;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorRotate;->from:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorRotate;->to:F

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-void
.end method


# virtual methods
.method public fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->fromSPR(Lcom/samsung/android/spr/drawable/document/SprInputStream;)V

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorRotate;->pivotX:F

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorRotate;->pivotY:F

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorRotate;->from:F

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorRotate;->to:F

    return-void
.end method

.method public getSPRSize()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->getSPRSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public set(FFFF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorRotate;->from:F

    iput p2, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorRotate;->to:F

    iput p3, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorRotate;->pivotX:F

    iput p4, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorRotate;->pivotY:F

    invoke-direct {p0}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorRotate;->init()V

    return-void
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->toSPR(Ljava/io/DataOutputStream;)V

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorRotate;->pivotX:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorRotate;->pivotY:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorRotate;->from:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorRotate;->to:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    return-void
.end method

.method public updateValues(Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedRotate:Z

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorRotate;->pivotX:F

    iput v0, p1, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->rotatePivotX:F

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorRotate;->pivotY:F

    iput v0, p1, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->rotatePivotY:F

    iget-boolean v0, p1, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->isLastFrame:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorRotate;->to:F

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    iput v0, p1, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->rotateDegree:F

    const/4 p1, 0x0

    return p1
.end method
