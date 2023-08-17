.class public Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;->mContext:Landroid/content/Context;

    return-void
.end method

.method private toast(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public clearAllData()V
    .locals 1

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    invoke-virtual {v0}, Ln2/a;->d()V

    const-string v0, "clearAllServerData"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;->toast(Ljava/lang/String;)V

    return-void
.end method

.method public clearMappedTable()V
    .locals 2

    new-instance v0, Lr0/c;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lr0/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lr0/c;->a()V

    const-string v0, "cleared mapped table"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;->toast(Ljava/lang/String;)V

    return-void
.end method

.method public disableAppUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncState;->setAppUpdateNeeded(Landroid/content/Context;Z)V

    const-string v0, "Disable App Update"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;->toast(Ljava/lang/String;)V

    return-void
.end method

.method public disableInvalidCoEditNotes()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncState;->setClearInvalidCoEditNotes(Z)V

    const-string v0, "Disable invalid coedit notes"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;->toast(Ljava/lang/String;)V

    return-void
.end method

.method public disableSyncDebug()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lc3/p;->f(Landroid/content/Context;)V

    const-string v0, "Disable Sync Debug"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;->toast(Ljava/lang/String;)V

    return-void
.end method

.method public enableAppUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncState;->setAppUpdateNeeded(Landroid/content/Context;Z)V

    const-string v0, "Enable App Update"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;->toast(Ljava/lang/String;)V

    return-void
.end method

.method public enableInvalidCoEditNotes()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncState;->setClearInvalidCoEditNotes(Z)V

    const-string v0, "Enable clear invalid coedit notes"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;->toast(Ljava/lang/String;)V

    return-void
.end method

.method public enableSyncDebug()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lc3/p;->h(Landroid/content/Context;)V

    const-string v0, "Enable Sync Debug"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;->toast(Ljava/lang/String;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public useProdServer()V
    .locals 2

    invoke-static {}, Lh2/b;->b()Lh2/b;

    move-result-object v0

    invoke-virtual {v0}, Lh2/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lh2/b;->b()Lh2/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lh2/b;->e(Z)V

    const-string v0, "switched to PRD server"

    goto :goto_0

    :cond_0
    const-string v0, "already using PRD server"

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;->toast(Ljava/lang/String;)V

    return-void
.end method

.method public useStagingServer()V
    .locals 2

    invoke-static {}, Lh2/b;->b()Lh2/b;

    move-result-object v0

    invoke-virtual {v0}, Lh2/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lh2/b;->b()Lh2/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lh2/b;->e(Z)V

    const-string v0, "switched to STG server"

    goto :goto_0

    :cond_0
    const-string v0, "already using STG server"

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/labs/SyncTester;->toast(Ljava/lang/String;)V

    return-void
.end method
