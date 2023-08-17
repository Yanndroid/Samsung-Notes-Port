.class public Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteSCloudMode;
.super Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImportSNoteSCloudMode"


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenterContract;Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportFolderMode$Contract;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/ImportFolderPresenterContract;Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportFolderMode$Contract;)V

    new-instance p1, Lcom/samsung/android/app/notes/sync/importing/controllers/b;

    new-instance p2, Ly0/u;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ly0/u;-><init>(Ljava/util/List;)V

    invoke-direct {p1, p2}, Lcom/samsung/android/app/notes/sync/importing/controllers/b;-><init>(Ly0/a;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->mSnoteImportListRequest:Lcom/samsung/android/app/notes/sync/importing/controllers/b;

    return-void
.end method


# virtual methods
.method public getAbstractImportType(Ljava/util/List;)Ly0/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;)",
            "Ly0/a;"
        }
    .end annotation

    new-instance v0, Ly0/u;

    invoke-direct {v0, p1}, Ly0/u;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getImportType()Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SNOTE_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    return-object v0
.end method

.method public getNoNoteTextRes()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_import_no_data_on_samsungaccount_jp:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_import_no_data_on_samsungaccount:I

    :goto_0
    return v0
.end method

.method public getRootFolderRes()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->import_rootname_samsung_account_jp:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->import_rootname_samsung_account:I

    :goto_0
    return v0
.end method

.method public requestImportList()V
    .locals 5

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "ImportSNoteSCloudMode"

    const-string v1, "registerImportListRequest(). Network is not Connected."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteMode;->mImportSnoteListener:Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;

    sget-object v1, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SNOTE_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const-string v4, ""

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;->onImportError(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteSCloudMode$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteSCloudMode$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/presenter/mode/ImportSNoteSCloudMode;Landroid/content/Context;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
