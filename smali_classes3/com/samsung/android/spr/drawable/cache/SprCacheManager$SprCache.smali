.class Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/spr/drawable/cache/SprCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SprCache"
.end annotation


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final dpi:I

.field public final height:I

.field public refCount:I

.field public final width:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;->refCount:I

    iput-object p1, p0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;->width:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;->height:I

    iput p2, p0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;->dpi:I

    iput v0, p0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;->refCount:I

    return-void
.end method


# virtual methods
.method public declared-synchronized lock()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;->refCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;->refCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unlock()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;->refCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/spr/drawable/cache/SprCacheManager$SprCache;->refCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
