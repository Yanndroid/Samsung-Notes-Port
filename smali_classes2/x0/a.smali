.class public Lx0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lx0/a;


# instance fields
.field public final a:Lcom/samsung/android/app/notes/sync/importing/controllers/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;-><init>()V

    iput-object v0, p0, Lx0/a;->a:Lcom/samsung/android/app/notes/sync/importing/controllers/a;

    return-void
.end method

.method public static declared-synchronized a()Lx0/a;
    .locals 2

    const-class v0, Lx0/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lx0/a;->b:Lx0/a;

    if-nez v1, :cond_0

    new-instance v1, Lx0/a;

    invoke-direct {v1}, Lx0/a;-><init>()V

    sput-object v1, Lx0/a;->b:Lx0/a;

    :cond_0
    sget-object v1, Lx0/a;->b:Lx0/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public b()V
    .locals 2

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ImportManager"

    const-string v1, "onCancelImportDialogFinish : not supported!)"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lx0/a;->a:Lcom/samsung/android/app/notes/sync/importing/controllers/a;

    invoke-interface {v0}, Lcom/samsung/android/app/notes/sync/importing/controllers/a;->e()V

    return-void
.end method

.method public c(ZZ)V
    .locals 3

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->h()Z

    move-result v0

    const-string v1, "ImportManager"

    if-nez v0, :cond_0

    const-string p1, "onNetworkConnected : not supported!)"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network : onNetworkConnected() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lx0/a;->a:Lcom/samsung/android/app/notes/sync/importing/controllers/a;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/notes/sync/importing/controllers/a;->a(ZZ)V

    return-void
.end method

.method public d(II)V
    .locals 1

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "ImportManager"

    const-string p2, "onNetworkConnectionFailedDialogFinish : not supported!)"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lx0/a;->a:Lcom/samsung/android/app/notes/sync/importing/controllers/a;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/notes/sync/importing/controllers/a;->c(II)V

    return-void
.end method

.method public e()V
    .locals 2

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->h()Z

    move-result v0

    const-string v1, "ImportManager"

    if-nez v0, :cond_0

    const-string v0, "reTryImporting : not supported!)"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "reTryImporting, blocked"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lx0/a;->a:Lcom/samsung/android/app/notes/sync/importing/controllers/a;

    invoke-interface {v0}, Lcom/samsung/android/app/notes/sync/importing/controllers/a;->d()V

    return-void
.end method

.method public f(Ly0/a;)V
    .locals 2

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->h()Z

    move-result v0

    const-string v1, "ImportManager"

    if-nez v0, :cond_0

    const-string p1, "startImport : not supported!)"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "startImport, blocked"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lx0/a;->a:Lcom/samsung/android/app/notes/sync/importing/controllers/a;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/notes/sync/importing/controllers/a;->b(Ly0/a;)V

    return-void
.end method

.method public g()V
    .locals 2

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ImportManager"

    const-string v1, "stopImportForce : not supported!)"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lx0/a;->a:Lcom/samsung/android/app/notes/sync/importing/controllers/a;

    invoke-interface {v0}, Lcom/samsung/android/app/notes/sync/importing/controllers/a;->e()V

    return-void
.end method
