.class public Lcom/samsung/android/app/notes/sync/GeneralManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static h:Lcom/samsung/android/app/notes/sync/GeneralManager;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/net/ConnectivityManager;

.field public c:Landroid/net/ConnectivityManager$NetworkCallback;

.field public d:Lcom/samsung/android/support/senl/nt/base/common/sync/IAccountLoginListener;

.field public e:Ld2/a;

.field public f:Lr/a;

.field public g:Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->b:Landroid/net/ConnectivityManager;

    new-instance v0, Lcom/samsung/android/app/notes/sync/GeneralManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/GeneralManager$2;-><init>(Lcom/samsung/android/app/notes/sync/GeneralManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->c:Landroid/net/ConnectivityManager$NetworkCallback;

    new-instance v0, Lcom/samsung/android/app/notes/sync/GeneralManager$b;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/GeneralManager$b;-><init>(Lcom/samsung/android/app/notes/sync/GeneralManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->d:Lcom/samsung/android/support/senl/nt/base/common/sync/IAccountLoginListener;

    new-instance v0, Lcom/samsung/android/app/notes/sync/GeneralManager$c;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/GeneralManager$c;-><init>(Lcom/samsung/android/app/notes/sync/GeneralManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->e:Ld2/a;

    new-instance v0, Lcom/samsung/android/app/notes/sync/GeneralManager$d;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/GeneralManager$d;-><init>(Lcom/samsung/android/app/notes/sync/GeneralManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->f:Lr/a;

    new-instance v0, Lcom/samsung/android/app/notes/sync/GeneralManager$e;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/GeneralManager$e;-><init>(Lcom/samsung/android/app/notes/sync/GeneralManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->g:Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateListener;

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/sync/GeneralManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/app/notes/sync/GeneralManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/GeneralManager;->r()V

    return-void
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Lcom/samsung/android/app/notes/sync/GeneralManager;
    .locals 2

    const-class v0, Lcom/samsung/android/app/notes/sync/GeneralManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/GeneralManager;->h:Lcom/samsung/android/app/notes/sync/GeneralManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/notes/sync/GeneralManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/sync/GeneralManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/notes/sync/GeneralManager;->h:Lcom/samsung/android/app/notes/sync/GeneralManager;

    :cond_0
    sget-object p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->h:Lcom/samsung/android/app/notes/sync/GeneralManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;)V
    .locals 3

    const-string v0, "GeneralManager"

    const-string v1, "checkPermissionAndAutoSync()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string p1, "checkPermissionAndAutoSync() : mContext == null"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lc2/a;->a()Lc2/a;

    move-result-object v1

    invoke-virtual {v1}, Lc2/a;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v1

    invoke-virtual {v1}, Ln/a;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/synchronization/managers/c;->a(Landroid/content/Context;)Lcom/samsung/android/app/notes/sync/synchronization/managers/c;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/synchronization/managers/c;->c(Z)V

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v2, "GeneralManagerThread"

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/app/notes/sync/GeneralManager$a;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/notes/sync/GeneralManager$a;-><init>(Lcom/samsung/android/app/notes/sync/GeneralManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_1
    const-string p1, "checkPermissionAndAutoSync() : AutoSync is not possible!"

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    invoke-static {p1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object p1

    invoke-virtual {p1}, Lf/a;->r()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object p1

    invoke-virtual {p1}, Ln/a;->o()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "checkPermissionAndAutoSync() : show the permission allow tipcard!"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x10

    const/16 v1, 0x8

    invoke-static {p1, v1}, Ls0/b;->a(II)Lt0/i;

    move-result-object p1

    invoke-virtual {p1}, Lt0/i;->a()V

    goto :goto_1

    :cond_3
    const-string p1, "checkPermissionAndAutoSync() : Sync is not enable!"

    goto :goto_0

    :cond_4
    const-string p1, "checkPermissionAndAutoSync() : is not logged in!"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPermissionAndAutoSync() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->b:Landroid/net/ConnectivityManager;

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->b:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->c:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->d:Lcom/samsung/android/support/senl/nt/base/common/sync/IAccountLoginListener;

    invoke-virtual {v0, v1}, Lf/a;->d(Lcom/samsung/android/support/senl/nt/base/common/sync/IAccountLoginListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->y()V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    invoke-static {v0}, Ld2/c;->c(Landroid/content/Context;)Ld2/c;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->e:Ld2/a;

    invoke-virtual {v0, v1}, Ld2/c;->k(Ld2/a;)V

    return-void
.end method

.method public final h()V
    .locals 1

    new-instance v0, Lm2/a;

    invoke-direct {v0}, Lm2/a;-><init>()V

    invoke-virtual {v0}, Lm2/a;->f()V

    return-void
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lp/a;->c()Lp/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->f:Lr/a;

    invoke-virtual {v0, v1}, Lp/a;->b(Lr/a;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SES Agent v."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lv/f;->b(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", SES SDK v."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lv/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeneralManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    const-string v1, "PasswordSyncingStatus"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PasswordSyncing"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final k()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->g:Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateListener;

    const-string v2, "COEDIT_SERVICE"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->addListener(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/task/TaskState$TaskStateListener;)V

    return-void
.end method

.method public l()V
    .locals 2

    const-string v0, "GeneralManager"

    const-string v1, "lazyInitSyncSystem() start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/GeneralManager;->f()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/GeneralManager;->g()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/GeneralManager;->e()V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;->b()Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;->c()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/GeneralManager;->h()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/GeneralManager;->j()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/GeneralManager;->i()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/GeneralManager;->k()V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    invoke-static {v1}, Ld2/c;->c(Landroid/content/Context;)Ld2/c;

    move-result-object v1

    invoke-virtual {v1}, Ld2/c;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    invoke-static {v1}, Ld2/c;->c(Landroid/content/Context;)Ld2/c;

    move-result-object v1

    invoke-virtual {v1}, Ld2/c;->i()V

    :cond_0
    const-string v1, "after lazy sync init!"

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/notes/sync/GeneralManager;->c(Ljava/lang/String;)V

    const-string v1, "lazyInitSyncSystem() finish"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "GeneralManager"

    const-string v1, "onResumeAction() : mContext == null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v0}, Lz1/d;->C(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/GeneralManager;->n()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lc3/q;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ln2/a;->I(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/synchronization/managers/c;->a(Landroid/content/Context;)Lcom/samsung/android/app/notes/sync/synchronization/managers/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/synchronization/managers/c;->b()V

    :goto_0
    return-void
.end method

.method public final n()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "printGeneralInfo() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isSyncing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v1

    invoke-virtual {v1}, Ln2/a;->g()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v1

    invoke-virtual {v1}, Lf/a;->r()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ", Not logged in"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ", Not connected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lc3/h;->p(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", Not WiFi connected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    invoke-static {v1}, Ly2/c;->b(Landroid/content/Context;)I

    move-result v1

    const-string v2, "GeneralManager"

    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    invoke-static {v1}, Ly2/c;->a(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v3, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, ", last syncTimeStamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lx2/b;->d()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    invoke-static {v1}, Ly2/c;->b(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v3, :cond_5

    const-string v1, ", internalLastSyncError = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    invoke-static {v1}, Ly2/c;->b(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncErrorCode;->getErrorCodesString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    invoke-static {v1}, Ly2/c;->a(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v3, :cond_6

    const-string v1, ", externalLastSyncError = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    invoke-static {v1}, Ly2/c;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncErrorCode;->getErrorCodesString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public o()V
    .locals 2

    const-string v0, "GeneralManager"

    const-string v1, "signedInAction()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lc3/q;->u(Landroid/content/Context;Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isOtherCorpDevice()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->hasCloudSetting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lc3/l;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lc3/l;->f(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lc3/q;->t(Landroid/content/Context;Ljava/lang/Boolean;)V

    :cond_1
    const-string v0, "after signed in!"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/sync/GeneralManager;->c(Ljava/lang/String;)V

    invoke-static {}, Lk2/d;->h()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/GeneralManager;->q()V

    return-void
.end method

.method public p()V
    .locals 2

    const-string v0, "GeneralManager"

    const-string v1, "signedInActionDuringSetupWizard()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->o()Z

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lc3/l;->f(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lc3/q;->t(Landroid/content/Context;Ljava/lang/Boolean;)V

    return-void
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    invoke-static {v0}, Ld2/c;->c(Landroid/content/Context;)Ld2/c;

    move-result-object v0

    invoke-virtual {v0}, Ld2/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    invoke-static {v0}, Ld2/c;->c(Landroid/content/Context;)Ld2/c;

    move-result-object v0

    invoke-virtual {v0}, Ld2/c;->i()V

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 2

    const-string v0, "GeneralManager"

    const-string v1, "signedOutAction()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->o()Lc0/a;

    move-result-object v0

    invoke-interface {v0}, Lc0/a;->cancelAllSyncNotification()V

    invoke-static {}, Lb3/u;->h()Lb3/u;

    move-result-object v0

    invoke-virtual {v0}, Lb3/u;->s()V

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Ln2/a;->F(I)V

    :cond_0
    invoke-static {}, Lx0/a;->a()Lx0/a;

    move-result-object v0

    invoke-virtual {v0}, Lx0/a;->g()V

    invoke-static {}, Lp/a;->c()Lp/a;

    move-result-object v0

    invoke-virtual {v0}, Lp/a;->i()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/GeneralManager;->s()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lk2/d;->i(Landroid/content/Context;)V

    return-void
.end method

.method public final s()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/GeneralManager;->a:Landroid/content/Context;

    invoke-static {v0}, Ld2/c;->c(Landroid/content/Context;)Ld2/c;

    move-result-object v0

    invoke-virtual {v0}, Ld2/c;->l()V

    return-void
.end method
