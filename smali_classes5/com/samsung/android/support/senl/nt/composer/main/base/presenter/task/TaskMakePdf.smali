.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$PdfShareType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mSpenNotePdfExport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "TaskMakePdf"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon;-><init>()V

    return-void
.end method

.method public static bridge synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->exportPdf(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->exportPdf(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    return-void
.end method

.method private exportPdf(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)V
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultWidth()I

    move-result v5

    new-instance v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Landroid/content/Context;

    move-result-object v3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x3e8

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;-><init>(Landroid/content/Context;Ljava/lang/String;IIZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->exportPdf(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->closeDoc(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_1
    :try_start_2
    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeTask# new SpenWNote fail e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :goto_2
    return-void

    :catchall_1
    move-exception v0

    :goto_3
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->closeDoc(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)V

    throw v0
.end method

.method private exportPdf(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exportPdf# exportType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$PdfShareType;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$PdfShareType;->exportType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon;->mIsCanceled:Z

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isPDFReaderMode()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setPDFReaderMode(Z)V

    new-instance v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$PdfShareType;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$PdfShareType;->exportType:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->mSpenNotePdfExport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->exportPdfForNormal(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->exportPdfForPrint(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->mSpenNotePdfExport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->close()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->mSpenNotePdfExport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;

    return-void
.end method

.method private exportPdfForNormal(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)V
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->sharePdf(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->saveAsPdfFile(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exportPdfForNormal# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    :goto_0
    return-void
.end method

.method private exportPdfForPrint(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)V
    .locals 7

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;->getContextShareDir(Landroid/content/Context;Z)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mDir:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultHeight()I

    move-result v1

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper$ReturnValueForShareDir;->mDir:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;->getLastModifiedTime()J

    move-result-wide v4

    const-string v6, "pdf"

    invoke-static {v0, v3, v4, v5, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareUtils;->generateNewFilePath(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_main_background_light:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->mSpenNotePdfExport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;

    invoke-virtual {v4, v3}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->setTransparentBackgroundColor(I)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getMakeUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;

    move-result-object v3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->mSpenNotePdfExport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;

    invoke-virtual {v3, v4, v5, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;->makePdf(Landroid/content/Context;Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Landroid/content/Context;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->TAG:Ljava/lang/String;

    const-string v1, "exportPdfForPrint# failed to getPathForShare"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void
.end method

.method private sharePdf(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)V
    .locals 7

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultHeight()I

    move-result v4

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->mSpenNotePdfExport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->sharePdf(Landroid/content/Context;Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;ILcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareData;I)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/TaskContract$IBeamController;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->TAG:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/TaskContract$IBeamController;->pause(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void
.end method


# virtual methods
.method public cancel(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ICancelCallback;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->mSpenNotePdfExport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->TAG:Ljava/lang/String;

    const-string v0, "cancel# cancelExportFile"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->mSpenNotePdfExport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;->cancelExportFile()V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon;->mIsCanceled:Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->cancel()V

    return-void
.end method

.method public closeDoc(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isClosed()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeTask# close SpenWNote fail e : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public bridge synthetic executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)V

    return-void
.end method

.method public executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveAsPdfFile(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)V
    .locals 5

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getMakeUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->mSpenNotePdfExport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;->makePdf(Landroid/content/Context;Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Landroid/content/Context;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon$ResultValues;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    :goto_0
    return-void
.end method
