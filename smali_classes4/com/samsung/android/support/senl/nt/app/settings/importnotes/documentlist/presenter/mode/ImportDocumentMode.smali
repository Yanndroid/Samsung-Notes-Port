.class public abstract Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentMode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ST$ImportDocumentMode"


# instance fields
.field public mAppName:Ljava/lang/String;

.field public mDefaultActionBarTitle:Ljava/lang/String;

.field public mNoNoteText:Ljava/lang/String;

.field public mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentModeContract$IPresenter;

.field public mSyncQuotaListener:Lg2/c;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentModeContract$IPresenter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentMode$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentMode$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentMode;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentMode;->mSyncQuotaListener:Lg2/c;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentModeContract$IPresenter;

    return-void
.end method


# virtual methods
.method public abstract getAbstractImportType(Ljava/util/ArrayList;)Ly0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ld1/d;",
            ">;)",
            "Ly0/a;"
        }
    .end annotation
.end method

.method public abstract getAppName()Ljava/lang/String;
.end method

.method public getDefaultActionBarTitle()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentMode;->mDefaultActionBarTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_import_data_title:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentMode;->getAppName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentMode;->mDefaultActionBarTitle:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentMode;->mDefaultActionBarTitle:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getDefaultCategoryText()I
.end method

.method public abstract getImportType()Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;
.end method

.method public abstract getNoNoteBodyText()Ljava/lang/String;
.end method

.method public abstract getTaskType()I
.end method

.method public hasSpinnerLayout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lg2/b;->i()Lg2/b;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentMode;->mSyncQuotaListener:Lg2/c;

    invoke-virtual {v0, v1}, Lg2/b;->p(Lg2/c;)V

    return-void
.end method

.method public startImport()V
    .locals 2

    invoke-static {}, Lx0/a;->a()Lx0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentModeContract$IPresenter;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentModeContract$IPresenter;->getCheckedItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/documentlist/presenter/mode/ImportDocumentMode;->getAbstractImportType(Ljava/util/ArrayList;)Ly0/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx0/a;->f(Ly0/a;)V

    return-void
.end method
