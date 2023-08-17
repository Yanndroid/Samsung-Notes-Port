.class public Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;
.super Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImportSNoteGoogleDriveMode"


# instance fields
.field private mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

.field private mDrive:Lcom/google/api/services/drive/Drive;

.field private mGoogleAccountName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenterContract;Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportFolderMode$Contract;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenterContract;Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportFolderMode$Contract;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->mDrive:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p0, p3}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->setGoogleAccountName(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->initImportListRequest()V

    return-void
.end method

.method private connectGoogleDrive()V
    .locals 2

    const-string v0, "ImportSNoteGoogleDriveMode"

    const-string v1, "connectGoogleDrive# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->newChooseAccountIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportFolderMode;->mPresenterContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenterContract;

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenterContract;->startGoogleDriveActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private getDriveService(Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;)Lcom/google/api/services/drive/Drive;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/api/services/drive/Drive$Builder;

    invoke-static {}, Lcom/google/api/client/extensions/android/http/AndroidHttp;->newCompatibleTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v1

    new-instance v2, Lcom/google/api/client/json/gson/GsonFactory;

    invoke-direct {v2}, Lcom/google/api/client/json/gson/GsonFactory;-><init>()V

    invoke-direct {v0, v1, v2, p1}, Lcom/google/api/services/drive/Drive$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive$Builder;->build()Lcom/google/api/services/drive/Drive;

    move-result-object p1

    return-object p1
.end method

.method private initGoogleDrive()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "https://www.googleapis.com/auth/drive"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->usingOAuth2(Landroid/content/Context;Ljava/util/Collection;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->setGoogleAccountCredential(Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->mGoogleAccountName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "ImportSNoteGoogleDriveMode"

    if-eqz v0, :cond_1

    const-string v0, "initGoogleDrive#. Selected account name is not valid!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->mGoogleAccountName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->setSelectedAccountName(Ljava/lang/String;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->getDriveService(Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;)Lcom/google/api/services/drive/Drive;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->mDrive:Lcom/google/api/services/drive/Drive;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initGoogleDrive#. NullPointerException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private initImportListRequest()V
    .locals 5

    new-instance v0, Lcom/samsung/android/app/notes/sync/importing/controllers/b;

    new-instance v1, Ly0/q;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->mGoogleAccountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->mDrive:Lcom/google/api/services/drive/Drive;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Ly0/q;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/google/api/services/drive/Drive;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/notes/sync/importing/controllers/b;-><init>(Ly0/a;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->mSnoteImportListRequest:Lcom/samsung/android/app/notes/sync/importing/controllers/b;

    return-void
.end method

.method private onActivityResultFromGoogleDriveAuthentication(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "ImportSNoteGoogleDriveMode"

    const-string v0, "onActivityResultFromGoogleDriveAuthentication# call requestGetLists() again"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->registerGoogleDriveImportListRequest()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportFolderMode;->mPresenterContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenterContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenterContract;->dismissFileDownloadingDialog()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportFolderMode;->mPresenterContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenterContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenterContract;->updateLayout()V

    return-void
.end method

.method private onActivityResultFromGoogleDrivePicker(ILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    const-string p1, "authAccount"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->registerGoogleDriveImportListRequest(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "ImportSNoteGoogleDriveMode"

    const-string p2, "onActivityResultFromGoogleDrivePicker# Fail to get Drive!"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportFolderMode;->mPresenterContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenterContract;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenterContract;->dismissFileDownloadingDialog()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportFolderMode;->mPresenterContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenterContract;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenterContract;->updateLayout()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->mGoogleAccountName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "onActivityResultFromGoogleDrivePicker# finish Fragment!"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportFolderMode;->mPresenterContract:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenterContract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenterContract;->activityFinish()V

    :cond_1
    return-void
.end method

.method private registerGoogleDriveImportListRequest()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    const-string v1, "ImportSNoteGoogleDriveMode"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "registerGoogleDriveImportListRequest# GoogleAccountCredential is null"

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->mSnoteImportListRequest:Lcom/samsung/android/app/notes/sync/importing/controllers/b;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->getSelectedAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->setGoogleAccountName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->mGoogleAccountName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "registerGoogleDriveImportListRequest# Selected account name is not valid!"

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->requestSNoteImportList()V

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method

.method private registerGoogleDriveImportListRequest(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->setGoogleAccountName(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->initGoogleDrive()V

    const-string p1, "ImportSNoteGoogleDriveMode"

    const-string v0, "registerGoogleDriveImportListRequest# Drive is ready!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->requestSNoteImportList()V

    const/4 p1, 0x1

    return p1
.end method

.method private requestSNoteImportList()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->initImportListRequest()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->mSnoteImportListRequest:Lcom/samsung/android/app/notes/sync/importing/controllers/b;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->mImportSnoteListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/notes/sync/importing/controllers/b;->a(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSNoteImportList# UnsupportedOperationException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImportSNoteGoogleDriveMode"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getAbstractImportType(Ljava/util/List;)Ly0/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;)",
            "Ly0/a;"
        }
    .end annotation

    new-instance v0, Ly0/q;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->mGoogleAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->mDrive:Lcom/google/api/services/drive/Drive;

    invoke-direct {v0, p1, v1, v2}, Ly0/q;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/google/api/services/drive/Drive;)V

    return-object v0
.end method

.method public getImportType()Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SNOTE_GOOGLEDRIVE:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    return-object v0
.end method

.method public getNoNoteTextRes()I
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_import_no_data_on_googledrive:I

    return v0
.end method

.method public getRootFolderRes()I
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->import_rootname_google_drive:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportFolderMode;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->onActivityResultFromGoogleDriveAuthentication(Z)V

    return v0

    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->onActivityResultFromGoogleDrivePicker(ILandroid/content/Intent;)V

    return v0
.end method

.method public requestImportList()V
    .locals 5

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "ImportSNoteGoogleDriveMode"

    if-nez v0, :cond_0

    const-string v0, "requestImportList#. Network is not Connected."

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->mImportSnoteListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    sget-object v1, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SNOTE_GOOGLEDRIVE:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const-string v4, ""

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;->onImportError(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->initGoogleDrive()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->mGoogleAccountName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->connectGoogleDrive()V

    goto :goto_0

    :cond_1
    const-string v0, "requestImportList# Drive is ready again! call requestGetLists()"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->requestSNoteImportList()V

    :goto_0
    return-void
.end method

.method public setGoogleAccountCredential(Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    return-void
.end method

.method public setGoogleAccountName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteGoogleDriveMode;->mGoogleAccountName:Ljava/lang/String;

    return-void
.end method
