.class public Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenRoundClipHelper"


# instance fields
.field public mHasRoundCorner:Z

.field public mRadii:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;->mRadii:[F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;->mHasRoundCorner:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private updateRoundCorner()V
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Float;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;->mRadii:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;->mRadii:[F

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;->mRadii:[F

    const/4 v4, 0x2

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;->mRadii:[F

    const/4 v4, 0x3

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;->mRadii:[F

    const/4 v4, 0x4

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;->mRadii:[F

    const/4 v4, 0x5

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;->mRadii:[F

    const/4 v4, 0x6

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;->mRadii:[F

    const/4 v4, 0x7

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/Float;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Ljava/lang/Float;-><init>(F)V

    invoke-static {v0, v1}, Ljava/util/Collections;->frequency(Ljava/util/Collection;Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;->mRadii:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;->mHasRoundCorner:Z

    return-void
.end method


# virtual methods
.method public applyRoundClip(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;->mHasRoundCorner:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;->mRadii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void
.end method

.method public getCornerRadii()[F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;->mRadii:[F

    return-object v0
.end method

.method public hasRoundCorner()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;->mHasRoundCorner:Z

    return v0
.end method

.method public setCorner(F)V
    .locals 0

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;->setCorner(FFFF)V

    return-void
.end method

.method public setCorner(FFFF)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCorner() ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenRoundClipHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;->mRadii:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x2

    aput p2, v0, p1

    const/4 p1, 0x3

    aput p2, v0, p1

    const/4 p1, 0x4

    aput p3, v0, p1

    const/4 p1, 0x5

    aput p3, v0, p1

    const/4 p1, 0x6

    aput p4, v0, p1

    const/4 p1, 0x7

    aput p4, v0, p1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;->updateRoundCorner()V

    return-void
.end method

.method public setCornerRadii([F)V
    .locals 3

    if-eqz p1, :cond_1

    array-length v0, p1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;->mRadii:[F

    array-length v2, v1

    if-ne v0, v2, :cond_1

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;->mRadii:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/util/SpenRoundClipHelper;->updateRoundCorner()V

    :cond_1
    :goto_0
    return-void
.end method
