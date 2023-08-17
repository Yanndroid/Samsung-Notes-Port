.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadAudioTask;
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
    name = "DownloadAudioTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Audio;

.field public mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DownloadAudioTask"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadAudioTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Audio;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadAudioTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadAudioTask;->mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Audio;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadAudioTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadAudioTask;->mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Audio;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/AudioUtil;->getAudioFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadAudioTask;->TAG:Ljava/lang/String;

    const-string v4, "DownloadAudioTask# title is empty."

    :goto_0
    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadAudioTask;->mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Audio;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/AudioUtil;->getFilenameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Audio;->setTitle(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadAudioTask;->mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Audio;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadAudioTask;->mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Audio;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Audio;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/AudioUtil;->getAudioFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->setPath(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadAudioTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadAudioTask;->mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Audio;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->getUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadAudioTask;->mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Audio;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/samsung/android/support/senl/nt/base/common/util/UriFileUtils;->saveUriToFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadAudioTask;->mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Audio;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadAudioTask;->TAG:Ljava/lang/String;

    const-string v4, "DownloadAudioTask# file is not exist."

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadAudioTask;->mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Audio;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/AudioUtil;->isSupportedAudio(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadAudioTask;->TAG:Ljava/lang/String;

    const-string v4, "DownloadAudioTask# not supported audio file."
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    sget-object v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadAudioTask;->TAG:Ljava/lang/String;

    const-string v5, "DownloadAudioTask# exception "

    invoke-static {v4, v5, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadAudioTask;->mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Audio;

    const/16 v4, 0x100

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;->setError(I)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadAudioTask;->mContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Audio;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$DownloadAble;->setPath(Ljava/lang/String;)V

    :cond_4
    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadAudioTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadAudioTask# result - "

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

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/DownloadObjectHelper$DownloadAudioTask;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
