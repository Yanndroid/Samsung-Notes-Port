.class public Lcom/samsung/android/app/notes/sync/contentsharing/sessession/d;
.super Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;-><init>(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DisConnectedBySocialState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/d;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[CS0] connect() : call reconnect()"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->t()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->K(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;)V

    invoke-interface {p1}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;->reconnect()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/d;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[CS0] call disconnect()"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->r()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->K(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;)V

    invoke-interface {p1}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;->disconnect()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DisConnectedBySocialState"

    return-object v0
.end method
