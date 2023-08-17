.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadGifTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadGifTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Image;

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Image;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadGifTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadGifTask;->mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Image;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadGifTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadGifTask;->mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Image;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadBitmap;->isValidGif(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadGifTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadGifTask;->mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Image;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->getUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadGifTask;->mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Image;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/util/UriFileUtils;->saveUriToFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadGifTask# result - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadGifTask;->mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Image;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;->setError(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadGifTask;->mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Image;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->setPath(Ljava/lang/String;)V

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadGifTask;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
