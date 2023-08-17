.class public Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf$ResultValues;
    }
.end annotation


# static fields
.field public static final ERR_CONVERT_PDF:I = 0x2

.field public static final ERR_IO:I = 0x1

.field public static final ERR_NONE:I = 0x0

.field private static final FEATURE_BACKUP_NOTE:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final TEMP_RENAME_FILE_POSTFIX:Ljava/lang/String; = "_origin_bak"

.field private static final TEMP_SAVED_FILE_POSTFIX:Ljava/lang/String; = "_bak"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PwTaskSavePdf"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;-><init>()V

    return-void
.end method

.method private backupToDocFile(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)V
    .locals 0

    return-void
.end method

.method private isValidPdf(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    :try_start_0
    const-string v1, ""

    const/high16 v2, 0x447a0000    # 1000.0f

    invoke-virtual {v0, p2, v1, p1, v2}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->getPageBitmap(Ljava/lang/String;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf;->TAG:Ljava/lang/String;

    const-string v1, "isValidPdf# bitmap is null"

    invoke-static {p2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->close()V

    return p1

    :cond_0
    :try_start_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->close()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidPdf# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->close()V

    return p1

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->close()V

    throw p1
.end method

.method private renameTo(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Z
    .locals 9

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->getDestPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "renameTo# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwDocInfo;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwDocInfo;->getPdfFileInfo()Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;->isSaveAs()Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "application/pdf"

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "renameTo# fail to rename src to dest save as"

    :goto_0
    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/UriHelper;->requestScanFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "renameTo# SaveAs"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_origin_bak"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string p1, "renameTo# fail to rename dest file"

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string p1, "renameTo# dest file is exist after dest rename"

    goto :goto_0

    :cond_3
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "renameTo# fail to rename src to dest"

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/UriHelper;->requestScanFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "renameTo# fail to delete destBackupFile"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v4
.end method


# virtual methods
.method public cancel(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ICancelCallback;)V
    .locals 0

    return-void
.end method

.method public saveAsPdfFile(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)V
    .locals 9

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultHeight()I

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->getDestPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->getDestPath()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x1

    add-int/2addr v0, v7

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->getDestPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_bak"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskShareCommon;->mShareToOtherAppHandler:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getMakeUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf;->mSpenNotePdfExport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper;->makePdf(Landroid/content/Context;Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfExport;ILjava/lang/String;Z)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper$MakePdfResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper$MakePdfResult;->getResultPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf;->isValidPdf(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf;->TAG:Ljava/lang/String;

    const-string v1, "saveAsPdfFile# invalid pdf"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf;->backupToDocFile(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf$ResultValues;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf$ResultValues;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v8, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void

    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf;->renameTo(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf;->backupToDocFile(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf$ResultValues;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf$ResultValues;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v8, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void

    :cond_2
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf$ResultValues;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->getDestPath()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf$ResultValues;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v7, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void

    :cond_3
    :goto_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf;->TAG:Ljava/lang/String;

    const-string v2, "saveAsPdfFile# fail"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf$ResultValues;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskMakePdf$InputValues;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/MakeUriHelper$MakePdfResult;->getResultType()Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->RESULT_TYPE_ERROR_IO:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_4
    move v7, v8

    :goto_1
    invoke-direct {v1, p1, v7}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/task/PwTaskSavePdf$ResultValues;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v8, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void
.end method
