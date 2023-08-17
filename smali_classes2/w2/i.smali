.class public Lw2/i;
.super Lw2/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lw2/h;-><init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Lj0/a;Lcom/samsung/android/app/notes/sync/db/s;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/notes/sync/synchronization/managers/b;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/sync/synchronization/managers/b;-><init>()V

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/notes/sync/synchronization/managers/b;->b(Lcom/samsung/android/app/notes/sync/db/s;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/sync/synchronization/managers/b;->a(Lj0/a;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/notes/sync/synchronization/managers/b;->d(Lcom/samsung/android/app/notes/sync/db/s;)V

    return-void
.end method

.method public d(Lcom/samsung/android/app/notes/sync/db/s;)Lj0/a;
    .locals 4

    const-string v0, "SyncNote/SyncSDocxServerNote"

    const/16 v1, 0x146

    :try_start_0
    iget-object v2, p0, Lw2/a;->b:Lx2/g;

    iget-object v3, p0, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lx2/g;->r(Ljava/lang/String;)Lj0/a;

    move-result-object p1
    :try_end_0
    .catch Lcom/samsung/android/sdk/pen/document/SpenUnsupportedVersionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Li0/a; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readLocalNoteForUpSync() : fail to readWDocByUuid , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ls0/c;

    invoke-direct {v0, v1, p1}, Ls0/c;-><init>(ILjava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    throw p1

    :catch_2
    new-instance v0, La3/c;

    iget-object v1, p0, Lw2/a;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, La3/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, La3/c;->d(Lcom/samsung/android/app/notes/sync/db/s;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1

    :catch_3
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readLocalNoteForUpSync() : Need to update app , uuid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lw2/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncState;->isAppUpdateNeeded(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lw2/a;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncState;->setAppUpdateNeeded(Landroid/content/Context;Z)V

    :cond_0
    new-instance v0, Ls0/c;

    invoke-direct {v0, v1, p1}, Ls0/c;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public e(Lj0/a;Lcom/samsung/android/app/notes/sync/network/networkutils/c;)V
    .locals 2

    new-instance v0, Lv2/a;

    iget-object v1, p0, Lw2/a;->a:Lx2/e;

    invoke-direct {v0, v1, p2}, Lv2/a;-><init>(Lx2/e;Lcom/samsung/android/app/notes/sync/network/networkutils/c;)V

    invoke-virtual {p1}, Lj0/a;->g()Lk0/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lv2/a;->n(Lk0/a;)V

    return-void
.end method
