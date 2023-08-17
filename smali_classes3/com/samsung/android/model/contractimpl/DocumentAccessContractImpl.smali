.class public Lcom/samsung/android/model/contractimpl/DocumentAccessContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler$DocumentAccessContract;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelAllConvertTasks()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->cancelAll()V

    return-void
.end method

.method public cancelImportBySetting()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->cancel()V

    return-void
.end method

.method public cancelImportCloudDataBySetting()V
    .locals 1

    invoke-static {}, Lx0/a;->a()Lx0/a;

    move-result-object v0

    invoke-virtual {v0}, Lx0/a;->g()V

    return-void
.end method

.method public getDocOpenTriggerClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    return-object v0
.end method

.method public isExternalCoeditRunning()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->getInstance()Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/caller/CoeditNoteUpDownloader;->isExistRunningNoteUuids()Z

    move-result v0

    return v0
.end method

.method public isSmartSwitchRunning()Z
    .locals 1

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    invoke-virtual {v0}, Lc3/n;->y()Z

    move-result v0

    return v0
.end method

.method public isSyncRunning()Z
    .locals 1

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    invoke-virtual {v0}, Ln2/a;->g()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
