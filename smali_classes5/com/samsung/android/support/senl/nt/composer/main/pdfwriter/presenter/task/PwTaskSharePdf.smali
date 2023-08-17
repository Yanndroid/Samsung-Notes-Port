.class public Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$ResultValues;,
        Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon<",
        "Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;",
        "Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$ResultValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PwTaskSharePdf"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon;-><init>()V

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf;Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf;->pwExportPdf(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf;Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf;->pwSharePdf(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;)V

    return-void
.end method

.method private pwExportPdf(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;)V
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;ZZ)I

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/pdf"

    invoke-static {v0, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/UriHelper;->requestScanFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$ResultValues;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;)Landroid/content/Context;

    move-result-object v3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v3, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$ResultValues;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf;->TAG:Ljava/lang/String;

    const-string v0, "pwExportPdf# copyFile fail."

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    :goto_0
    return-void
.end method

.method private pwSharePdf(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;)V
    .locals 8

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;->getContextShareDir(Landroid/content/Context;Z)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mDir:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mDir:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v7, "pdf"

    invoke-static {v4, v3, v5, v6, v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareUtils;->generateNewFilePath(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-static {v4, v5, v6, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;ZZ)I

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v4, p1, v3, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->startPdfChooserActivity(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;I)V

    invoke-virtual {p0, v6, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf;->TAG:Ljava/lang/String;

    const-string v0, "pwSharePdf# copyFile fail."

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V
    :try_end_0
    .catch Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pwSharePdf# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void

    :cond_2
    :goto_2
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf;->TAG:Ljava/lang/String;

    const-string v0, "pwSharePdf#  failed to getPathForShare"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;)V

    return-void
.end method

.method public executeTask(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf;Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSharePdf$InputValues;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
