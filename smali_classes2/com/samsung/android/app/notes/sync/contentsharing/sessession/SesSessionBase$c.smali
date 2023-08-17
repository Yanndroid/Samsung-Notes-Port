.class public Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession$OnAgentUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$c;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAgentUpdated()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$c;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CS0] onAgentUpdated() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$c;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-static {v2}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->b(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$c;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->b(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$c;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->b(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/b;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$c;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->b(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/h;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$c;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CS0] onAgentUpdated() : Do nothing?"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$c;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->f(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;->disconnect()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$c;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->f(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;->connect()V

    :goto_1
    return-void
.end method
