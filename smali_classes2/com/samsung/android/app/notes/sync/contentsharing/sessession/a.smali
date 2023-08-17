.class public Lcom/samsung/android/app/notes/sync/contentsharing/sessession/a;
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

    const-string v1, "ConnectedState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/a;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[CS0-1] connect() : already connected"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/a;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[CS0-1] reConnect() : already connected"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ConnectedState"

    return-object v0
.end method
