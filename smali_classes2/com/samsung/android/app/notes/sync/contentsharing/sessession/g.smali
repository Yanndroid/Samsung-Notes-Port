.class public Lcom/samsung/android/app/notes/sync/contentsharing/sessession/g;
.super Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;
.source "SourceFile"


# instance fields
.field public b:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;


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

    const-string v1, "PreDisConnectingState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/g;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CS0-1] connect() : back to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/g;->b:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->I()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/g;->b:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->K(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/g;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[CS0-1] disConnect() : already preDisconnecting"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/g;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CS0-2] reConnect() : back to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/g;->b:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->I()V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/g;->b:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->K(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;)V

    return-void
.end method

.method public e(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/g;->b:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "PreDisConnectingState"

    return-object v0
.end method
