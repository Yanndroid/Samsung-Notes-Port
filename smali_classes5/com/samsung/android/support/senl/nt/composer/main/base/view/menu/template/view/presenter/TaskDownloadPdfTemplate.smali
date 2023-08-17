.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$InputValues;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$InputValues;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAXIMUM_PDF_TEMPLATE_SIZE_MB:I = 0x5

.field private static final PROGRESS_DIALOG:Ljava/lang/String; = "pdf_template_dialog"

.field private static final TAG:Ljava/lang/String;

.field public static final VERSION_PRE_FIX:Ljava/lang/String; = "_v"


# instance fields
.field private mErrorCode:I

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final mHandler:Landroid/os/Handler;

.field private rNotification:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TaskDownloadPdfTemplate"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CTLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->mErrorCode:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->mErrorCode:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;)Landroidx/fragment/app/FragmentManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-object p0
.end method

.method public static clearCachePath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->getPreFixPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_4

    :cond_3
    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->rNotification:Ljava/lang/Runnable;

    return-void
.end method

.method private defaultTemplatePdfDownload(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$array;->comp_change_template_pdf_template_raw_res:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->getCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->needToDownloadDefaultTemplate(Landroid/content/res/TypedArray;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->TAG:Ljava/lang/String;

    const-string p2, "defaultTemplatePdfDownload# skip."

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->showProgressDialog()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->getFileNameFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->getCachePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-direct {p0, p1, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->downloadTemplatePdf(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->setPdfFilePath(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail;->makeThumbnail(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->checkDefaultTemplateData()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_2
    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defaultTemplatePdfDownload# Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_3
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->TAG:Ljava/lang/String;

    const-string p2, "defaultTemplatePdfDownload# done"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private downloadTemplatePdf(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->getCachePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/AddPdfUtil;->getMaximumPdfSize()J

    move-result-wide v1

    invoke-static {p1, v0, p3, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils;->downloadPdf(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;J)Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$DownloadFileResult;

    move-result-object p1

    iget p3, p1, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$DownloadFileResult;->mSaveResult:I

    const-string v0, ""

    if-eqz p3, :cond_3

    const/4 p1, 0x1

    if-eq p3, p1, :cond_2

    const/4 p1, 0x2

    if-eq p3, p1, :cond_1

    const/4 p1, 0x3

    if-eq p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x10000

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->setErrorCode(I)V

    return-object v0

    :cond_1
    const/high16 p1, 0x4000000

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->setErrorCode(I)V

    return-object v0

    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->RESULT_TYPE_CANCEL:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->setErrorCode(I)V

    return-object v0

    :cond_3
    iget-object p3, p1, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$DownloadFileResult;->mFilePath:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    const/high16 p1, 0x1000000

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->setErrorCode(I)V

    return-object v0

    :cond_4
    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$DownloadFileResult;->mFilePath:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->setPdfFilePath(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->handlePdfError(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->getPdfFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    return-object v0

    :cond_5
    new-instance p1, Ljava/io/File;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->getPdfFilePath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_6

    const/high16 p1, 0x100000

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->setErrorCode(I)V

    return-object v0

    :cond_6
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "downloadTemplatePdf#, path : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->getPdfFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->getPdfFilePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private downloadTemplatePdf(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 p2, 0x2800

    :try_start_2
    new-array p2, p2, [B

    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p3, p2, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    :try_start_5
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p3

    :try_start_6
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p2

    if-eqz p1, :cond_1

    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadTemplatePdf# IOException : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->defaultTemplatePdfDownload(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;ZLcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->runNotifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;Ljava/util/List;Z)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->uriDownloadPdf(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getPreFixPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "_v"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, ".pdf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static bridge synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private handlePdfError(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->getSpenNotePdfImport()Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->getPdfFilePath()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->hasOwnerPermission(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->RESULT_TYPE_ERROR_PASSWORD:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->RESULT_TYPE_ERROR_PROTECTED:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->setErrorCode(I)V

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/AddPdfUtil;->getConvertErrorCode(I)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private needToDownloadDefaultTemplate(Landroid/content/res/TypedArray;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->getFileNameFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->clearCachePath(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private removeAppData(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->getPdfFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->getPdfFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->getSpenNotePdfImport()Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->getPdfFilePath()Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {v1, v0, v2, p1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->removeAppData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method private runNotifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->rNotification:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;ZLcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->rNotification:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setErrorCode(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->mErrorCode:I

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/AddPdfUtil;->getConvertErrorCode(I)I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->mErrorCode:I

    return-void
.end method

.method private uriDownloadPdf(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 5

    invoke-static {p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/ClipboardHelper;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const-string v2, "pdf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {p1, p3}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->getFileNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p4, :cond_1

    :try_start_0
    new-instance p4, Ljava/io/File;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->getCachePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p4, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->getCachePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->clearCachePath(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, p4

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->getCachePath()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->generateUniqueFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    move-object v2, p4

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_1
    sget-object p4, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uriDownloadPdf# clearCachePath Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->downloadTemplatePdf(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "uriDownloadPdf# pdfFilePath has some problem. uri:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uriDownloadPdf# pdfFileName is empty. uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p4

    goto :goto_3

    :cond_4
    invoke-static {p4, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p2, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;->setPdfFilePath(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->removeAppData(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;)V

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail;->makeThumbnail(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    return-object v2

    :cond_6
    :goto_4
    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    const/high16 p1, 0x100000

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->setErrorCode(I)V

    return-object v1

    :cond_7
    :goto_5
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "UriDownloadPdf# mimeType is wrong. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->RESULT_TYPE_ERROR_FORMAT:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->setErrorCode(I)V

    return-object v1
.end method

.method private uriDownloadPdf(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;Ljava/util/List;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->showProgressDialog()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-direct {p0, p1, p2, v1, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->uriDownloadPdf(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/PdfTemplateThumbnail$PdfTemplateInfo;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->TAG:Ljava/lang/String;

    const-string v1, "clear "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->rNotification:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->rNotification:Ljava/lang/Runnable;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->dismissProgressDialog()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->mErrorCode:I

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->clear()V

    return-void
.end method

.method public dismissProgressDialog()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->TAG:Ljava/lang/String;

    const-string v1, "dismissProgressDialog# manager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->TAG:Ljava/lang/String;

    const-string v1, "dismissProgressDialog()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "pdf_template_dialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    return-void
.end method

.method public bridge synthetic executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$InputValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$InputValues;)V

    return-void
.end method

.method public executeTask(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$InputValues;)V
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$InputValues;)Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$InputValues;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$InputValues;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$InputValues;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isNeedToCheckNoteSize()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showProgressDialog()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->rNotification:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->rNotification:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
