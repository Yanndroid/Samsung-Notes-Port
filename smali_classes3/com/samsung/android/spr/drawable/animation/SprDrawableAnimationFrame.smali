.class public Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationFrame;
.super Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;
.source "SourceFile"


# instance fields
.field private mCurrentFrameIndex:I

.field private final mFrameCount:I

.field private final mTotalFrameCount:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/samsung/android/spr/drawable/document/SprDocument;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;-><init>(BLandroid/graphics/drawable/Drawable;Lcom/samsung/android/spr/drawable/document/SprDocument;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationFrame;->mCurrentFrameIndex:I

    iget-object p1, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    invoke-virtual {p1}, Lcom/samsung/android/spr/drawable/document/SprDocument;->getFrameAnimationCount()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationFrame;->mFrameCount:I

    iget-object p2, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget p2, p2, Lcom/samsung/android/spr/drawable/document/SprDocument;->mRepeatCount:I

    mul-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationFrame;->mTotalFrameCount:I

    return-void
.end method


# virtual methods
.method public getAnimationIndex()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget-byte v0, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mRepeatMode:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationFrame;->mCurrentFrameIndex:I

    iget v1, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationFrame;->mFrameCount:I

    rem-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationFrame;->mCurrentFrameIndex:I

    iget v1, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationFrame;->mFrameCount:I

    mul-int/lit8 v2, v1, 0x2

    rem-int/2addr v0, v2

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    rem-int/2addr v0, v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    :goto_0
    return v0
.end method

.method public run()V
    .locals 5

    iget v0, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationFrame;->mCurrentFrameIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationFrame;->mCurrentFrameIndex:I

    iget-object v1, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v1, v1, Lcom/samsung/android/spr/drawable/document/SprDocument;->mRepeatCount:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationFrame;->mTotalFrameCount:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->mIsRunning:Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget v3, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->mInterval:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget v0, v0, Lcom/samsung/android/spr/drawable/document/SprDocument;->mRepeatCount:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationFrame;->mCurrentFrameIndex:I

    iget v1, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationFrame;->mFrameCount:I

    mul-int/lit8 v2, v1, 0x2

    if-le v0, v2, :cond_2

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationFrame;->mCurrentFrameIndex:I

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->start()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimationFrame;->mCurrentFrameIndex:I

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method
