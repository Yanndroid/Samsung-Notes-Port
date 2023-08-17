.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadWebCardTask;
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
    name = "DownloadWebCardTask"
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
.field public mCachePath:Ljava/lang/String;

.field public mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;

.field public mContext:Landroid/content/Context;

.field public mIsEnabledPreview:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadWebCardTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadWebCardTask;->mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadWebCardTask;->mCachePath:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadWebCardTask;->mIsEnabledPreview:Z

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadWebCardTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadWebCardTask;->mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadWebCardTask;->mCachePath:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadWebCardTask;->mIsEnabledPreview:Z

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/WebCardData;->createWebCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/web/WebCardData;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadWebCardTask;->mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;

    iget-object v5, v3, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/WebCardDataBase;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->setPath(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadWebCardTask;->mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;

    iget-object v5, v3, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/WebCardDataBase;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;->setTitle(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadWebCardTask;->mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;

    iget-object v5, v3, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/WebCardDataBase;->description:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;->setDescription(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadWebCardTask;->mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;

    iget v3, v3, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/web/WebCardDataBase;->imageTypeId:I

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$WebCard;->setImageTypeId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadWebCardTask# result - "

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

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadWebCardTask;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
