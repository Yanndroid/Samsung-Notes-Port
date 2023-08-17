.class public Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/c;
.super Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/b;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public j(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MdeSdocImportHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish getting account id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->s(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    new-instance p1, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportSingleTask;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/b;->j:Ljava/util/List;

    invoke-direct {p1, v0, p0, v1, v2}, Lcom/samsung/android/app/notes/sync/contentsharing/importcore/strategy/MdeImportSingleTask;-><init>(Landroid/content/Context;Lr/b;Ljava/lang/String;Ljava/util/List;)V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/b;->i:Lcom/samsung/android/app/notes/sync/contentsharing/basecore/MdeSDocTask;

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->a:I

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharehelpers/AbsShareHelper;->c:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
