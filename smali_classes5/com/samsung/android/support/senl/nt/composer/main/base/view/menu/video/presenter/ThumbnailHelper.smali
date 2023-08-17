.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$Contract;
    }
.end annotation


# static fields
.field private static final PREVIEW_INTERVAL:I = 0x7d0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final THUMBNAIL_HELPER_EXECUTOR:Ljava/util/concurrent/Executor;

.field private mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$Contract;

.field private mVideoUri:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ThumbnailHelper"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/common/VideoLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;->THUMBNAIL_HELPER_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$Contract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$Contract;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;->mVideoUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static bridge synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getPreviewThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;->mVideoUri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreviewThumbnail# e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviewThumbnail# thumbnail: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    const-string v2, "null"

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public loadPreviews(Landroid/content/Context;J)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;->THUMBNAIL_HELPER_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;JLandroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setContract(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$Contract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$Contract;

    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;->mVideoUri:Landroid/net/Uri;

    return-void
.end method
