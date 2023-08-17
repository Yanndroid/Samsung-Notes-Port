.class public Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mClipRect:Landroid/graphics/Rect;

.field public mScreenHeight:I

.field public mScreenWidth:I

.field public mTransformMatrix:[F


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;II[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;->mClipRect:Landroid/graphics/Rect;

    iput p2, p0, Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;->mScreenWidth:I

    iput p3, p0, Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;->mScreenHeight:I

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;->mTransformMatrix:[F

    invoke-direct {p0, p4}, Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;->setMatrix([F)V

    return-void
.end method

.method private setClipRect(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;->mClipRect:Landroid/graphics/Rect;

    return-void
.end method

.method private setMatrix([F)V
    .locals 3

    array-length v0, p1

    iget-object v1, p0, Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;->mTransformMatrix:[F

    array-length v1, v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;->mTransformMatrix:[F

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget v2, p1, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setSize(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;->mScreenWidth:I

    iput p2, p0, Lcom/samsung/android/spensdk/framework/SpenDrawGlInfo;->mScreenHeight:I

    return-void
.end method
