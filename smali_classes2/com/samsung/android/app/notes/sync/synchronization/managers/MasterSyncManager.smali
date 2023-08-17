.class public Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static e:Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;


# instance fields
.field public a:Landroid/content/Context;

.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Landroid/content/SyncStatusObserver;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;->c:Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager$1;-><init>(Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;->d:Landroid/content/SyncStatusObserver;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;->a:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;->d()V

    return-void
.end method

.method public static declared-synchronized b()Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;
    .locals 2

    const-class v0, Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;->e:Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;

    invoke-direct {v1}, Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;-><init>()V

    sput-object v1, Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;->e:Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;->e:Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;
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
.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;->d:Landroid/content/SyncStatusObserver;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;->b:I

    return-void
.end method

.method public final d()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;->b:I

    const-string v4, "MasterSyncManager"

    if-ne v3, v0, :cond_1

    const-string v0, "onStatusUpdated() : No change!"

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iput v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStatusUpdated() : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;->b:I

    if-ne v3, v2, :cond_2

    const-string v2, "On"

    goto :goto_1

    :cond_2
    const-string v2, "Off"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/MasterSyncManager;->b:I

    if-ne v0, v1, :cond_3

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "StopSync by masterSync"

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Ln2/a;->F(I)V

    goto :goto_2

    :cond_3
    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    const-string v1, "requestSyncBackground by masterSync"

    invoke-virtual {v0, v1}, Ln2/a;->o(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method
