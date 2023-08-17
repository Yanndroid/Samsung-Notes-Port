.class public Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;
.super Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask$Contract;,
        Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity<",
        "Ljava/util/List<",
        "Landroid/net/Uri;",
        ">;",
        "Ljava/lang/Void;",
        "Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_HEIGHT:I = 0x5f7

.field private static final DEFAULT_WIDTH:I = 0x438

.field public static final TAG:Ljava/lang/String; = "PdfImportTask"


# instance fields
.field private final mBackgroundColor:I

.field private final mCacheDir:Ljava/lang/String;

.field private mContract:Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask$Contract;

.field public mErrorCode:I

.field private final mFolderUuid:Ljava/lang/String;

.field private final mSPenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

.field private final mTemplateType:I

.field private final mTemplateUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAsyncTaskManager()Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;-><init>(Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->mFolderUuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->mSPenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$color;->background_color_white:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getDefaultBackgroundColor(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->mBackgroundColor:I

    const-string p1, "Settings"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p2

    const-string p3, "settings_template_type"

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->mTemplateType:I

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/base/common/constants/SettingsConstants$Default;->SETTINGS_PAGE_TEMPLATE:Ljava/lang/String;

    const-string p3, "settings_page_template"

    invoke-virtual {p1, p3, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->mTemplateUri:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "PdfImportTask"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->mCacheDir:Ljava/lang/String;

    return-void
.end method

.method private addErrorCode(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->mErrorCode:I

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/AddPdfUtil;->getConvertErrorCode(I)I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->mErrorCode:I

    return-void
.end method

.method private addPageToSPenWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;)V
    .locals 1
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->appendPage()Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setBackgroundColor(I)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->setTemplate(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;)V

    return-void
.end method

.method private createEmptySPenWNoteForPdfImport(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->getPageMode(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;->PORTRAIT:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;

    const/16 v2, 0x438

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/DocumentConstructor;->makeSpenWNote(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$Orientation;IZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setPageDefaultWidth(I)V

    const/16 v1, 0x5f7

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setPageDefaultHeight(I)V

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->addPageToSPenWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getTitle()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setText(Ljava/lang/String;)V

    return-object v0
.end method

.method private createNotesDocumentEntityForImportPdf(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setId(Ljava/lang/Long;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setUuid(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setFilePath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->mFolderUuid:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isPreDefinedFolderUuid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->mFolderUuid:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->setCategoryUuid(Ljava/lang/String;)V

    return-object v0
.end method

.method private downloadPdfFileToCacheDir(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->validateFileSizeFromUri(Landroid/net/Uri;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->mCacheDir:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils;->downloadPdf(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$DownloadFileResult;

    move-result-object p1

    iget v0, p1, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$DownloadFileResult;->mSaveResult:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->validateDownloadPdfResult(I)V

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$DownloadFileResult;->mFilePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->validateFilePath(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$DownloadFileResult;->mFilePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->validateFileSizeFromPath(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/base/common/util/ContentPickerUtils$DownloadFileResult;->mFilePath:Ljava/lang/String;

    return-object p1
.end method

.method private executePdfCollectorTask(I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/CollectController;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setPdfActionCaller(Ljava/lang/Class;)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v1

    const-string v2, "PdfImportTask"

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setPdfActionKey(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setActionType(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->build()Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;->postCollectorTask(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V

    return-void
.end method

.method private getNewDocPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/WDocUtils;->getNoteFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->extractFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ".sdocx"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private importPdfWithoutOpenComposer(Landroid/net/Uri;)Z
    .locals 9

    const-string v0, "importPdfWithoutOpenComposer# finally: "

    const-string v1, "PdfImportTask"

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->downloadPdfFileToCacheDir(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->validatePdfImportAvailable(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->getNewDocPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->getFileNameFromUriWithoutExt(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->createEmptySPenWNoteForPdfImport(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v2

    invoke-virtual {p0, v2, v4, v7}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->attachPdfFileToSPenWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->createNotesDocumentEntityForImportPdf(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->saveToDB(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    :try_start_2
    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v8, v4

    move-object v4, v2

    move-object v2, v8

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v4, v2

    :goto_0
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " pdfFilePath: "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isClosed()Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_4
    invoke-virtual {v4, v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    const/4 p1, 0x0

    :cond_1
    :goto_2
    return p1

    :catchall_1
    move-exception p1

    move-object v2, v4

    :goto_3
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2

    :try_start_5
    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_4
    throw p1
.end method

.method private initCacheDir()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->mCacheDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->makeDirectory(Ljava/lang/String;)Z

    return-void
.end method

.method private isValidFileSize(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    const-wide/32 v0, 0x40000000

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private pausePdfCollector()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->PAUSE_PDF:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->executePdfCollectorTask(I)V

    return-void
.end method

.method private resumePdfCollector()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->RESUME_PDF:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->executePdfCollectorTask(I)V

    return-void
.end method

.method private saveToDB(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z
    .locals 8

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "PdfImportTask"

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/support/senl/nt/data/resolver/DocumentWriteResolver;->save(Landroid/content/Context;ZLjava/lang/String;Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance v6, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentPostSaveOperation;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentPostSaveOperation;-><init>(Landroid/content/Context;ZLcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;Ljava/util/List;I)V

    const/16 p1, 0x18

    invoke-virtual {v6, p1}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentPostSaveOperation;->setStrategy(I)Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/DocumentPostSaveOperation;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler;->callable(Ljava/lang/Runnable;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->getIOThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->executeOn(Ljava/util/concurrent/Executor;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->execute()V

    :cond_0
    return p2
.end method

.method private setTemplate(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;)V
    .locals 6

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->mTemplateType:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->mTemplateUri:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    move-object v1, v2

    goto :goto_1

    :cond_0
    if-ne v0, v3, :cond_1

    const/16 v0, 0xc

    goto :goto_1

    :cond_1
    const/4 v5, 0x5

    if-eq v0, v5, :cond_2

    const/4 v5, 0x7

    if-ne v0, v5, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setTemplateType(I)V

    sget-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    if-ne p2, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x2

    :goto_2
    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setBackgroundImageMode(I)V

    invoke-virtual {p1, v1, v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setBackgroundImage(Ljava/lang/String;Z)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setTemplateURI(Ljava/lang/String;)V

    return-void
.end method

.method private updateIndividualPageNoteHeight(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 4
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultHeight()I

    move-result v1

    div-int v2, v0, v1

    rem-int/2addr v0, v1

    const/4 v3, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    div-int/2addr v1, v3

    add-int/2addr v2, v1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getWidth()I

    move-result p1

    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->setSize(II)Z

    return-void
.end method

.method private updateInvertBackgroundColor(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getInvertBackgroundColorType(Ljava/util/List;)Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;->None:Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil$InvertBackgroundColorType;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getDefaultBackgroundInvert()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->invertBackgroundColor(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateInvertBackgroundColor# isBackgroundColorInverted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isBackgroundColorInverted()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PdfImportTask"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public attachPdfFileToSPenWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->mSPenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->mSPenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v1, p2, v2}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->attachFile(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->RESULT_TYPE_SUCCESS:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    if-ne v0, p2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object p2

    sget-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->updateIndividualPageNoteHeight(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->updateInvertBackgroundColor(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->saveAsFile(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->addErrorCode(I)V

    new-instance p1, Ljava/lang/Exception;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "attachPdfFileToSPenWNote# attachFile errorCode: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearCacheDir()V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->mCacheDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;
    .locals 0
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->doInBackground([Ljava/util/List;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/util/List;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;
    .locals 5
    .param p1    # [Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;"
        }
    .end annotation

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->mErrorCode:I

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-direct {p0, v4}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->importPdfWithoutOpenComposer(Landroid/net/Uri;)Z

    move-result v4

    add-int/lit8 v2, v2, 0x1

    if-nez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->mContract:Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask$Contract;

    if-eqz v4, :cond_2

    invoke-interface {v4, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask$Contract;->onTaskProgressed(III)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask$Result;

    sub-int/2addr v2, v3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->mErrorCode:I

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    invoke-direct {p1, v2, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask$Result;-><init>(IIZ)V

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->doInBackground([Ljava/util/List;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;

    move-result-object p1

    return-object p1
.end method

.method public getPageMode(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->mSPenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->getPageMode(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;->PAGE_MODE_LIST:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->LIST:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    return-object p1

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;->PAGE_MODE_SINGLE:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$PageMode;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    return-object p1

    :cond_1
    const-string p1, "Settings"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    const-string v0, "settings_preferred_note_style"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne v1, p1, :cond_2

    sget-object p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->LIST:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    return-object p1

    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    return-object p1
.end method

.method public onPostExecute(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->onPostExecute(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager$TaskResult;)V

    const-string p1, "PdfImportTask"

    const-string p2, "onPostExecute# "

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->mContract:Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask$Contract;

    if-eqz p2, :cond_0

    const-string p2, "onPostExecute# call contract"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->mContract:Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask$Contract;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask$Contract;->onPostExecute()V

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->mSPenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->close()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->resumePdfCollector()V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->clearCacheDir()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPreExecute(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;->onPreExecute(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->initCacheDir()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->pausePdfCollector()V

    return-void
.end method

.method public setContract(Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask$Contract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->mContract:Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask$Contract;

    return-void
.end method

.method public validateDownloadPdfResult(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_2

    const/4 v0, 0x2

    if-eq v0, p1, :cond_1

    const/4 v0, 0x3

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    const/high16 p1, 0x10000

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->addErrorCode(I)V

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "validateDownloadPdfResult# download failed(low Storage)"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/high16 p1, 0x20000

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->addErrorCode(I)V

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "validateDownloadPdfResult# download failed(note over size)"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    sget-object p1, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->RESULT_TYPE_CANCEL:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->addErrorCode(I)V

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "validateDownloadPdfResult# download cancelled"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public validateFilePath(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 p1, 0x1000000

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->addErrorCode(I)V

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "validateFilePath# filePath is empty"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public validateFileSizeFromPath(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->isValidFileSize(J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/high16 p1, 0x20000

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->addErrorCode(I)V

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "isValidFileSizeFromFilePath# invalid file size "

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public validateFileSizeFromUri(Landroid/net/Uri;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->getFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->isValidFileSize(J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/high16 p1, 0x20000

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->addErrorCode(I)V

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "validateFileSizeFromUri# invalid file size"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public validatePdfImportAvailable(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->mSPenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->hasPassword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->mSPenNotePdfImport:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfImport;->hasOwnerPermission(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->RESULT_TYPE_ERROR_PROTECTED:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->addErrorCode(I)V

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "validatePdfImportAvailable# pdf has owner permission"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;->RESULT_TYPE_ERROR_PROTECTED:Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager$ResultType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->addErrorCode(I)V

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "validatePdfImportAvailable# pdf has password"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
