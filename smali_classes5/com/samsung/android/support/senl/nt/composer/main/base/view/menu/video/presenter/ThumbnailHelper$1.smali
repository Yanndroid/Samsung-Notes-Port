.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;->loadPreviews(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$duration:J


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;JLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;

    iput-wide p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$1;->val$duration:J

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPreviews# duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$1;->val$duration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const-wide/16 v2, 0x0

    :goto_0
    iget-wide v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$1;->val$duration:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$Contract;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5, v6, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$Contract;->onPreviewLoaded(ILandroid/graphics/Bitmap;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    goto :goto_0

    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$Contract;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_3

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_5
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadPreviews# e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$Contract;

    move-result-object v1

    if-eqz v1, :cond_3

    :goto_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$Contract;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$Contract;->onPreviewsLoaded(Ljava/util/List;)V

    :cond_3
    return-void

    :goto_4
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$Contract;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$Contract;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/presenter/ThumbnailHelper$Contract;->onPreviewsLoaded(Ljava/util/List;)V

    :cond_4
    throw v1
.end method
