.class public Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportMemoSCloudMode;
.super Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportMemoMode;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentModeContract$IPresenter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportMemoMode;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentModeContract$IPresenter;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportMemoSCloudMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportMemoSCloudMode;->lambda$onCreate$0()V

    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentModeContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentModeContract$IPresenter;->getIsCancelDownloadingEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lg2/b;->i()Lg2/b;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentMode;->mSyncQuotaListener:Lg2/c;

    invoke-virtual {v0, v1}, Lg2/b;->f(Lg2/c;)V

    invoke-static {}, Lg2/b;->i()Lg2/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg2/b;->j(I)V

    return-void
.end method


# virtual methods
.method public getAbstractImportType(Ljava/util/ArrayList;)Ly0/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ld1/d;",
            ">;)",
            "Ly0/a;"
        }
    .end annotation

    new-instance v0, Ly0/e;

    invoke-direct {v0, p1}, Ly0/e;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public getImportType()Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->MEMO_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    return-object v0
.end method

.method public getNoNoteBodyText()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentMode;->mNoNoteText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_import_no_data_on_samsungaccount_jp:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_import_no_data_on_samsungaccount:I

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportMemoMode;->getAppName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentMode;->mNoNoteText:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentMode;->mNoNoteText:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentModeContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentModeContract$IPresenter;->getIsCancelDownloadingEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/a;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/a;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportMemoSCloudMode;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
