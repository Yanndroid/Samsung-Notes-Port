.class public Lcom/samsung/android/app/notes/sync/synchronization/managers/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lcom/samsung/android/app/notes/sync/synchronization/managers/c;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/c;->b:Z

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/c;->a:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/samsung/android/app/notes/sync/synchronization/managers/c;
    .locals 2

    const-class v0, Lcom/samsung/android/app/notes/sync/synchronization/managers/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/notes/sync/synchronization/managers/c;->c:Lcom/samsung/android/app/notes/sync/synchronization/managers/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/notes/sync/synchronization/managers/c;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/sync/synchronization/managers/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/notes/sync/synchronization/managers/c;->c:Lcom/samsung/android/app/notes/sync/synchronization/managers/c;

    :cond_0
    sget-object p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/c;->c:Lcom/samsung/android/app/notes/sync/synchronization/managers/c;
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
.method public b()V
    .locals 2

    invoke-static {}, Lc2/a;->a()Lc2/a;

    move-result-object v0

    invoke-virtual {v0}, Lc2/a;->e()Z

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/c;->b:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->r()Z

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SyncPermissionManager"

    const-string v1, "request sync now after all permissions are granted!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ln2/a;->e()Ln2/a;

    move-result-object v0

    invoke-virtual {v0}, Ln2/a;->n()V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/c;->b:Z

    :cond_2
    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/synchronization/managers/c;->b:Z

    return-void
.end method
