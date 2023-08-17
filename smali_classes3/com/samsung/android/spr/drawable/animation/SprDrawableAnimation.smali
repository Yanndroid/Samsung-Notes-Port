.class public abstract Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_FRAME_DURATION:I = 0x10

.field public static final TYPE_FRAMEANIMATION:B = 0x2t

.field public static final TYPE_NONE:B = 0x0t

.field public static final TYPE_VALUEANIMATION:B = 0x1t


# instance fields
.field public final mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

.field public final mDrawable:Landroid/graphics/drawable/Drawable;

.field public final mInterval:I

.field public mIsRunning:Z

.field public final mType:B


# direct methods
.method public constructor <init>(BLandroid/graphics/drawable/Drawable;Lcom/samsung/android/spr/drawable/document/SprDocument;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->mIsRunning:Z

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    iput-byte p1, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->mType:B

    iput-object p2, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->mDocument:Lcom/samsung/android/spr/drawable/document/SprDocument;

    iget p1, p3, Lcom/samsung/android/spr/drawable/document/SprDocument;->mAnimationInterval:I

    const/16 p2, 0x10

    if-ge p1, p2, :cond_0

    move p1, p2

    :cond_0
    iput p1, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->mInterval:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "A document is not allocated."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "A drawable is not allocated."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAnimationIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->mIsRunning:Z

    return v0
.end method

.method public start()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->mIsRunning:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->stop()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->mIsRunning:Z

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/spr/drawable/animation/SprDrawableAnimation;->mIsRunning:Z

    return-void
.end method

.method public update()V
    .locals 0

    return-void
.end method
