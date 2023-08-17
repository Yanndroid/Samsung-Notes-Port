.class public Ld2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static h:Ld2/c;


# instance fields
.field public a:Le2/e;

.field public b:Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

.field public c:Ljava/lang/Object;

.field public d:Landroid/content/Context;

.field public e:Ljava/lang/String;

.field public f:Ld2/a;

.field public g:Le2/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld2/c;->a:Le2/e;

    sget-object v1, Lcom/samsung/android/app/notes/sync/push/base/PushRegState;->NOT_REGISTERED:Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    iput-object v1, p0, Ld2/c;->b:Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ld2/c;->c:Ljava/lang/Object;

    iput-object v0, p0, Ld2/c;->d:Landroid/content/Context;

    iput-object v0, p0, Ld2/c;->e:Ljava/lang/String;

    iput-object v0, p0, Ld2/c;->f:Ld2/a;

    new-instance v0, Ld2/c$a;

    invoke-direct {v0, p0}, Ld2/c$a;-><init>(Ld2/c;)V

    iput-object v0, p0, Ld2/c;->g:Le2/b;

    iput-object p1, p0, Ld2/c;->d:Landroid/content/Context;

    invoke-static {v0}, Ld2/b;->a(Le2/b;)Le2/e;

    move-result-object p1

    iput-object p1, p0, Ld2/c;->a:Le2/e;

    return-void
.end method

.method public static bridge synthetic a(Ld2/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ld2/c;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic b(Ld2/c;Lcom/samsung/android/app/notes/sync/push/base/PushRegState;)V
    .locals 0

    iput-object p1, p0, Ld2/c;->b:Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Ld2/c;
    .locals 2

    const-class v0, Ld2/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ld2/c;->h:Ld2/c;

    if-nez v1, :cond_0

    new-instance v1, Ld2/c;

    invoke-direct {v1, p0}, Ld2/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Ld2/c;->h:Ld2/c;

    :cond_0
    sget-object p0, Ld2/c;->h:Ld2/c;
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
.method public d()Z
    .locals 4

    iget-object v0, p0, Ld2/c;->a:Le2/e;

    invoke-virtual {v0}, Le2/e;->a()Z

    move-result v0

    const-string v1, "PushManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "PushReg is not needed!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld2/c;->b:Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    sget-object v3, Lcom/samsung/android/app/notes/sync/push/base/PushRegState;->NOT_REGISTERED:Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    if-ne v0, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPushRegNeeded : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSmpInitFailed() : errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , errorMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lf2/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lf2/d;->b(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/app/notes/sync/push/base/PushRegState;->NOT_REGISTERED:Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    iput-object p1, p0, Ld2/c;->b:Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    return-void
.end method

.method public f()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lf2/d;->b(Ljava/lang/String;)V

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ld2/c;->i()V

    :cond_0
    return-void
.end method

.method public g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p3, p0, Ld2/c;->e:Ljava/lang/String;

    invoke-static {p2}, Lf2/d;->e(Ljava/lang/String;)V

    invoke-static {p3}, Lf2/d;->d(Ljava/lang/String;)V

    const-string p1, ""

    invoke-static {p1}, Lf2/d;->f(Ljava/lang/String;)V

    const/4 p1, -0x1

    invoke-static {p1}, Lf2/d;->a(I)V

    sget-object p1, Lcom/samsung/android/app/notes/sync/push/base/PushRegState;->NOT_REGISTERED:Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    iput-object p1, p0, Ld2/c;->b:Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    return-void

    :cond_1
    :goto_0
    const-string p1, "PushManager"

    const-string p2, "Received smp push token is invalid!"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSmpRegFailed() : errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , errorMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lf2/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {v0}, Lf2/d;->e(Ljava/lang/String;)V

    invoke-static {v0}, Lf2/d;->d(Ljava/lang/String;)V

    invoke-static {p1}, Lf2/d;->f(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/app/notes/sync/push/base/PushRegState;->NOT_REGISTERED:Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    iput-object p1, p0, Ld2/c;->b:Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    return-void
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Ld2/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ld2/c;->b:Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    sget-object v2, Lcom/samsung/android/app/notes/sync/push/base/PushRegState;->NOT_REGISTERED:Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/samsung/android/app/notes/sync/push/base/PushRegState;->REGISTERING:Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    iput-object v1, p0, Ld2/c;->b:Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    const-string v1, "PushManager"

    const-string v2, "[PUSH] registerPush() start"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ld2/c;->a:Le2/e;

    iget-object v2, p0, Ld2/c;->d:Landroid/content/Context;

    invoke-virtual {v1, v2}, Le2/e;->b(Landroid/content/Context;)V

    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "PushManager"

    const-string v2, "[PUSH] ignore registerPush() due to the registering state"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendPushMessage() : appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ld2/c;->f:Ld2/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ld2/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "mPushMessageListener is null!"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public k(Ld2/a;)V
    .locals 0

    iput-object p1, p0, Ld2/c;->f:Ld2/a;

    return-void
.end method

.method public l()V
    .locals 3

    iget-object v0, p0, Ld2/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ld2/c;->b:Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    sget-object v2, Lcom/samsung/android/app/notes/sync/push/base/PushRegState;->NOT_REGISTERED:Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    if-eq v1, v2, :cond_0

    iput-object v2, p0, Ld2/c;->b:Lcom/samsung/android/app/notes/sync/push/base/PushRegState;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "PushManager"

    const-string v1, "[PUSH] unregisterPush"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ld2/c;->a:Le2/e;

    iget-object v1, p0, Ld2/c;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Le2/e;->c(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
