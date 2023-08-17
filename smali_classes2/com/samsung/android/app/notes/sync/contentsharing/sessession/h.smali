.class public Lcom/samsung/android/app/notes/sync/contentsharing/sessession/h;
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

    const-string v1, "ReConnectingState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/h;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[CS0-1] connect() : already reconnecting"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/h;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CS0] call disconnect()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->s()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/g;->e(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->K(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->J(Z)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ReConnectingState"

    return-object v0
.end method
