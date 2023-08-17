.class public Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DocOpenTriggerActivity"


# instance fields
.field private mAddonsHandler:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

.field private mDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

.field private mImportTask:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask;

.field public final mIntentHandler:Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler;

.field private mIsAppUpdateShowing:Z

.field private mIsConverterCalled:Z

.field private mIsResultHandled:Z

.field private mIsStorageAvailable:Z

.field private mListTask:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerListCreationTask;

.field private mLockHelper:Lcom/samsung/android/support/senl/nt/app/trigger/lock/TriggerLockHelper;

.field private mPdfDownloadTask:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask;

.field private final mTaskCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mIntentHandler:Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mIsConverterCalled:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mIsResultHandled:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mIsStorageAvailable:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mIsAppUpdateShowing:Z

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$9;-><init>(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mTaskCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->lambda$showErrorToast$0(I)V

    return-void
.end method

.method private convertFromUri(Landroid/net/Uri;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "convertFromUri, uri is null"

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->finish(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/pdf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->openPDF(Landroid/net/Uri;)V

    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$7;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$7;-><init>(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;Landroid/net/Uri;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask$ICallback;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mImportTask:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private convertFromWidget(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "sdoc_uuid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertFromWidget, uuid is invalid : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->finish(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$8;-><init>(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;

    const-string v3, "doc_path"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory;->createTaskWithValidCheck(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Ljava/util/List;Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskFactory$IConvertTaskFactoryCallback;)Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->startConvert(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;)V

    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->lambda$showConvertProgressDialog$1()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mAddonsHandler:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    return-object p0
.end method

.method private finishWithErrorToast(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->showErrorToast(I)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->finish(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mIsAppUpdateShowing:Z

    return p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)Lcom/samsung/android/support/senl/nt/app/trigger/lock/TriggerLockHelper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mLockHelper:Lcom/samsung/android/support/senl/nt/app/trigger/lock/TriggerLockHelper;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mTaskCallback:Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;

    return-object p0
.end method

.method private initialize()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils;->isAvailableMemoryForNewMemo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mIsStorageAvailable:Z

    if-nez v0, :cond_1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->not_enough_space_content_for_open:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->composer_save_to_image_dir_galaxy:I

    goto :goto_0

    :cond_0
    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->composer_save_to_image_dir:I

    :goto_0
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$1;-><init>(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)V

    invoke-static {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->showNotEnoughStorageDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Landroidx/appcompat/app/AlertDialog;

    const-string v0, "DocOpenTriggerActivity"

    const-string v1, "NotEnoughStorage, finish is will be called."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/trigger/lock/TriggerLockHelper;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$2;-><init>(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/app/lock/LockManager;-><init>(Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/app/trigger/lock/TriggerLockHelper;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/samsung/android/support/senl/nt/app/lock/LockManager;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mLockHelper:Lcom/samsung/android/support/senl/nt/app/trigger/lock/TriggerLockHelper;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$3;-><init>(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/samsung/android/support/senl/nt/app/addons/IAddonsListener;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mAddonsHandler:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$4;-><init>(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;-><init>(Landroidx/fragment/app/FragmentActivity;ILcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$IDialogListener;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    return-void
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->finishWithErrorToast(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->openSDocWithCheckOldLock(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic l(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->showAppUpdateDialog()V

    return-void
.end method

.method private synthetic lambda$showConvertProgressDialog$1()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->showConvertProgressDialog()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showErrorToast$0(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static bridge synthetic m(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->showConvertProgressDialog()V

    return-void
.end method

.method public static bridge synthetic n(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->showErrorToastOnOpenReader(Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;)V

    return-void
.end method

.method public static bridge synthetic o(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->startComposerActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private openDocument(Landroid/content/Intent;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mIntentHandler:Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler;->getUuid(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->base_string_no_note:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openSDocFromUUID, uuid is invalid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->finishWithErrorToast(ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDeleted()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isSdocx()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mLockHelper:Lcom/samsung/android/support/senl/nt/app/trigger/lock/TriggerLockHelper;

    const/16 v1, 0x386

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mIntentHandler:Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, p0, v3, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler;->getStartComposerIntentBeforeUnlock(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/trigger/lock/TriggerLockHelper;->verifyLockedNote(ILandroid/content/Intent;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mIntentHandler:Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler;->getStartComposerIntentForExistingDoc(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->startComposerActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->openSDocWithCheckOldLock(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-string p1, "openDocument"

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->finishWithErrorToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private openDocumentToDrag()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NoteListToDrag;->getUuidForNoteListToDrag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "openDocumentToDrag, entry is null"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->finish(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isSdocx()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->startComposerActivity(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->startAddonsComposer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/NoteListToDrag;->clearNoteListTodDrag(Landroid/content/Context;)V

    return-void
.end method

.method private openSDocWithCheckOldLock(Ljava/lang/String;I)V
    .locals 2
    .param p2    # I
        .annotation build Lcom/samsung/android/support/senl/cm/base/common/constants/LockType;
        .end annotation
    .end param

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "highlighttext"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->startAddonsComposer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "DocOpenTriggerActivity"

    const-string p2, "openSDocFromUUID, lock type is spd/snb"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$string;->this_note_is_locked:I

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->startMemoListActivity()V

    return-void
.end method

.method public static bridge synthetic p(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->startComposerActivity(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic q(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->startConvert(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;)V

    return-void
.end method

.method public static bridge synthetic r(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->startConvert(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;)V

    return-void
.end method

.method private static runOnMainThread(Ljava/lang/Runnable;)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static bridge synthetic s(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->startMemoListActivity()V

    return-void
.end method

.method private showAppUpdateDialog()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mIsAppUpdateShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$6;-><init>(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->showAppUpdateDialog(Lcom/samsung/android/support/senl/nt/app/common/dialog/AppUpdateDialogFragment$AppUpdateDialogListener;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mIsAppUpdateShowing:Z

    return-void
.end method

.method private showConvertProgressDialog()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/trigger/a;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/trigger/a;-><init>(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showErrorToast(I)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/trigger/b;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/b;-><init>(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showErrorToastOnOpenReader(Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;->getErrorCode()I

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x400000

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->composer_can_not_open_password_protected_pdf_for_galaxy:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->composer_can_not_open_password_protected_pdf_opening:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;->getErrorCode()I

    move-result v0

    const/high16 v2, 0x800000

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->composer_can_not_open_copyright_protected_pdf_for_galaxy:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->composer_can_not_open_copyright_protected_pdf_opening:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Result;->showErrorToast(Landroid/content/Context;)V

    :goto_1
    return-void
.end method

.method private startAddonsComposer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mAddonsHandler:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->startAddonComposer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private startComposerActivity(Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->forceHideSoftInput(Landroid/content/Context;)Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->startComposerActivityByOption(Landroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startComposerActivity, uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sdoc_uuid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->finish(Ljava/lang/String;)V

    return-void
.end method

.method private startComposerActivity(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mIntentHandler:Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler;->getStartComposerIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->startComposerActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startConvert(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mIsConverterCalled:Z

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->connect(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->put(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTask;)V

    return-void
.end method

.method private startConvert(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mIsConverterCalled:Z

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->connect(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->put(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;)V

    return-void
.end method

.method private startMemoListActivity()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mIntentHandler:Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler;->getStartMemoListIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string v0, "startMemoListActivity"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->finish(Ljava/lang/String;)V

    return-void
.end method

.method private startMemoListAndRequestComposer(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mIntentHandler:Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler;

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler;->getStartMemoListAndRequestComposerIntent(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string p1, "startMemoListAndRequestComposer"

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->finish(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic t(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->startMemoListAndRequestComposer(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;)V

    return-void
.end method

.method public static bridge synthetic u(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public changeActivityFlags()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeActivityFlags flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DocOpenTriggerActivity"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v2, -0x1000001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-void
.end method

.method public checkPermission()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized finish(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "DocOpenTriggerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish,  msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mImportTask:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mImportTask:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mImportTask:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerImportTask;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mListTask:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerListCreationTask;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mListTask:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerListCreationTask;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mListTask:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerListCreationTask;

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mPdfDownloadTask:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mPdfDownloadTask:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mPdfDownloadTask:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask;

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public finishWithErrorToast(Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->unable_to_open_note:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->finishWithErrorToast(ILjava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult requestCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocOpenTriggerActivity"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mIsResultHandled:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mLockHelper:Lcom/samsung/android/support/senl/nt/app/trigger/lock/TriggerLockHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/trigger/lock/TriggerLockHelper;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mAddonsHandler:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    const-string p1, "onActivityResult#, addons result is canceled"

    goto :goto_0

    :cond_1
    const-string p1, "onActivityResult"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->finish(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mAddonsHandler:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const-string v0, "onBackPressed"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->finish(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "DocOpenTriggerActivity"

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object p1

    const-string v0, "TRIGGER"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->setIsRunning(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->isBlocked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Trigger is blocked"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->finish(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mIntentHandler:Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler;->isValid(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Intent is invalid"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogics()V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Fail to initialize spen"

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->initialize()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "DocOpenTriggerActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mAddonsHandler:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->onDestroy()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mLockHelper:Lcom/samsung/android/support/senl/nt/app/trigger/lock/TriggerLockHelper;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/trigger/lock/TriggerLockHelper;->onDestroy()V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "VerifyConvertPasswordDialog"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/DialogFragment;

    if-eqz v1, :cond_2

    const-string v2, "dismissVerifyDialog"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mIsConverterCalled:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->disconnect()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mPdfDownloadTask:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mPdfDownloadTask:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mPdfDownloadTask:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask;

    :cond_4
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "TRIGGER"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->setIsRunning(Ljava/lang/String;Z)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestPermissionsResult, requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocOpenTriggerActivity"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x7d

    if-ne p1, v0, :cond_1

    invoke-static {p0, p3, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->verifyRequestResult(Landroid/app/Activity;[I[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Permission Denied"

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->finish(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mLockHelper:Lcom/samsung/android/support/senl/nt/app/trigger/lock/TriggerLockHelper;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->restoreLockHelperTask()V

    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mLockHelper:Lcom/samsung/android/support/senl/nt/app/trigger/lock/TriggerLockHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mAddonsHandler:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mIsResultHandled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mIsResultHandled:Z

    const-string v0, "DocOpenTriggerActivity"

    const-string v1, "onResume, activity result is handled"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->openDocument()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mLockHelper:Lcom/samsung/android/support/senl/nt/app/trigger/lock/TriggerLockHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/helper/AbsLockHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mAddonsHandler:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public declared-synchronized openDocument()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mIsStorageAvailable:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    if-eqz v0, :cond_7

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/common/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NoteListToDrag;->getFakedUriForNoteListToDrag()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->openDocumentToDrag()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->convertFromUri(Landroid/net/Uri;)V

    goto :goto_1

    :cond_2
    const-string v2, "com.samsung.android.app.notes.ACTION_OPEN_MEMO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->openDocument(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    const-string v2, "widget.MEMO_CONVERT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->convertFromWidget(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_2
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    new-instance v4, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerListCreationTask;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    new-instance v6, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;

    invoke-direct {v6, p0, v1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$5;-><init>(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;I)V

    invoke-direct {v4, p0, v5, v1, v6}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerListCreationTask;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;ILcom/samsung/android/support/senl/nt/app/trigger/task/TriggerListCreationTask$ICallback;)V

    iput-object v4, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mListTask:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerListCreationTask;

    new-array v1, v3, [Landroid/content/ClipData;

    aput-object v0, v1, v2

    invoke-virtual {v4, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_7
    :goto_2
    :try_start_3
    const-string v0, "DocOpenTriggerActivity"

    const-string v1, "openDocument, activity is destroyed"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public openPDF(Landroid/net/Uri;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mDialogManager:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$10;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity$10;-><init>(Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;Landroid/net/Uri;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;->mPdfDownloadTask:Lcom/samsung/android/support/senl/nt/app/trigger/task/TriggerPdfCheckerTask;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public startComposerActivityByOption(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
