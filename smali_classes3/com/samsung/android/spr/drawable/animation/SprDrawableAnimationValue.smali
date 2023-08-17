.class public Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue;
.super Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;
    }
.end annotation


# instance fields
.field private final mAnimatingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/samsung/android/spr/drawable/document/SprDocument;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;-><init>(BLandroid/graphics/drawable/Drawable;Lcom/samsung/android/spr/drawable/document/SprDocument;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->mIsRunning:Z

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;

    iget-boolean v5, v4, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->isRunning:Z

    const/4 v6, 0x1

    iget-wide v7, v4, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->startTime:J

    if-eqz v5, :cond_4

    iget-wide v9, v4, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->duration:J

    add-long/2addr v7, v9

    cmp-long v5, v2, v7

    if-lez v5, :cond_2

    invoke-virtual {p0, v4, v6}, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue;->updateAnimatorData(Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;Z)Z

    move-result v5

    iget-object v7, v4, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->cancel()V

    iget v7, v4, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->repeatCount:I

    if-eqz v7, :cond_1

    iget-object v7, v4, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    iput-wide v2, v4, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->startTime:J

    iget v7, v4, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->repeatCount:I

    if-lez v7, :cond_3

    add-int/lit8 v7, v7, -0x1

    iput v7, v4, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->repeatCount:I

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v4, v1}, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue;->updateAnimatorData(Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;Z)Z

    move-result v5

    :cond_3
    :goto_1
    if-eqz v5, :cond_5

    iget-object v4, v4, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->object:Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    iget-object v5, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v4, v5}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->preDraw(Lcom/samsung/android/spr/drawable/document/SprDocument;)V

    goto :goto_2

    :cond_4
    cmp-long v5, v2, v7

    if-lez v5, :cond_5

    iget-object v5, v4, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    iput-wide v2, v4, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->startTime:J

    iput-boolean v6, v4, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->isRunning:Z

    :cond_5
    :goto_2
    add-int/2addr v0, v6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->mInterval:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v2, v3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .locals 13

    invoke-super {p0}, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->start()V

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {v2}, Lcom/samsung/android/spr/drawable/document/SprDocument;->getValueAnimationObjects()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    iget-object v4, v3, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;

    iget-byte v11, v10, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;->mType:B

    const/16 v12, 0x20

    if-eq v11, v12, :cond_4

    const/16 v12, 0x23

    if-eq v11, v12, :cond_3

    const/16 v12, 0x40

    if-eq v11, v12, :cond_2

    const/16 v12, 0x61

    if-eq v11, v12, :cond_1

    goto :goto_1

    :cond_1
    move-object v6, v10

    check-cast v6, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeAnimatorSet;

    goto :goto_1

    :cond_2
    move-object v9, v10

    check-cast v9, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;

    goto :goto_1

    :cond_3
    move-object v8, v10

    check-cast v8, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStroke;

    goto :goto_1

    :cond_4
    move-object v7, v10

    check-cast v7, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    goto :goto_1

    :cond_5
    if-eqz v6, :cond_0

    new-instance v4, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;

    invoke-direct {v4, v5}, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;-><init>(Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$1;)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, v4, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeAnimatorSet;->getAnimators()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const/4 v5, 0x0

    if-nez v7, :cond_7

    iget-boolean v7, v3, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->hasFillAnimation:Z

    if-eqz v7, :cond_6

    new-instance v7, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    invoke-direct {v7}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>()V

    goto :goto_2

    :cond_6
    new-instance v7, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    invoke-direct {v7, v5, v5}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;-><init>(BI)V

    :goto_2
    invoke-virtual {v3}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    :try_start_0
    invoke-virtual {v7}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->clone()Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3, v7}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    :goto_3
    if-nez v8, :cond_9

    iget-boolean v8, v3, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->hasStrokeAnimation:Z

    if-eqz v8, :cond_8

    new-instance v5, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStroke;

    invoke-direct {v5}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStroke;-><init>()V

    goto :goto_4

    :cond_8
    new-instance v8, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStroke;

    invoke-direct {v8, v5, v5}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStroke;-><init>(BI)V

    move-object v5, v8

    :goto_4
    invoke-virtual {v3}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    :try_start_1
    invoke-virtual {v5}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->clone()Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStroke;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v3, v8}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    goto :goto_5

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_9
    :goto_5
    if-nez v9, :cond_a

    new-instance v5, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;

    invoke-direct {v5}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;-><init>()V

    invoke-virtual {v3}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->getIntrinsic()Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    :try_start_2
    invoke-virtual {v5}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;->clone()Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {v3, v9}, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->appendAttribute(Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeBase;)V

    goto :goto_6

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_a
    :goto_6
    iput-object v9, v4, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->matrix:Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;

    iput-object v7, v4, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->fillPaint:Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    iput-object v8, v4, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->strokePaint:Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStroke;

    iput-object v3, v4, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->object:Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    iput-wide v0, v4, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->startTime:J

    iget v3, v6, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeAnimatorSet;->duration:I

    int-to-long v7, v3

    iput-wide v7, v4, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->duration:J

    iget v3, v6, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeAnimatorSet;->repeatCount:I

    iput v3, v4, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->repeatCount:I

    iget-object v3, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p0, v0, v1}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public stop()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->stop()V

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;

    iget-object v1, v1, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public update()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->update()V

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue;->mAnimatingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue;->updateAnimatorData(Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;Z)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateAnimatorData(Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;Z)Z
    .locals 5

    iget-object v0, p1, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;

    iput-boolean p2, v0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->isLastFrame:Z

    const/4 p2, 0x0

    iput-boolean p2, v0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedStrokeColor:Z

    iput-boolean p2, v0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedFillColor:Z

    iput-boolean p2, v0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedTranslate:Z

    iput-boolean p2, v0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedRotate:Z

    iput-boolean p2, v0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedScale:Z

    iget-object v1, p1, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->object:Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    iget v1, v1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->alpha:F

    iput v1, v0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->alpha:F

    iget-object v0, p1, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    check-cast v1, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;

    iget-object v2, p1, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase;->update(Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->matrix:Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;

    invoke-virtual {v0}, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;->reset()V

    iget-object v0, p1, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;

    iget-boolean v1, v0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedScale:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->matrix:Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;

    iget-object v1, v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;->matrix:Landroid/graphics/Matrix;

    iget v2, v0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->scaleX:F

    iget v3, v0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->scaleY:F

    iget v4, v0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->scalePivotX:F

    iget v0, v0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->scalePivotY:F

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_2
    iget-object v0, p1, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;

    iget-boolean v1, v0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedRotate:Z

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->matrix:Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;

    iget-object v1, v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;->matrix:Landroid/graphics/Matrix;

    iget v2, v0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->rotateDegree:F

    iget v3, v0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->rotatePivotX:F

    iget v0, v0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->rotatePivotY:F

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_3
    iget-object v0, p1, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;

    iget-boolean v1, v0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedTranslate:Z

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->matrix:Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;

    iget-object v1, v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeMatrix;->matrix:Landroid/graphics/Matrix;

    iget v2, v0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->translateDx:F

    iget v0, v0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->translateDy:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_4
    iget-object v0, p1, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;

    iget-boolean v1, v0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedFillColor:Z

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->fillPaint:Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeFill;

    iget v2, v0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->fillColor:I

    iput v2, v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->color:I

    :cond_5
    iget-boolean v1, v0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->isUpdatedStrokeColor:Z

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->strokePaint:Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeStroke;

    iget v2, v0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->strokeColor:I

    iput v2, v1, Lcom/samsung/android/spr/drawable/document/attribute/SprAttributeColor;->color:I

    :cond_6
    iget-object p1, p1, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationValue$AnimatorData;->object:Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;

    iget v0, v0, Lcom/samsung/android/spr/drawable/document/animator/SprAnimatorBase$UpdateParameter;->alpha:F

    iput v0, p1, Lcom/samsung/android/spr/drawable/document/shape/SprObjectBase;->alpha:F

    return p2
.end method
