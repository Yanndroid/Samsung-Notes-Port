.class public Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession$ServiceConnectionListener;


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

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$b;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(ILjava/lang/String;)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$b;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CS0] onChanged() : MobileService is disconnected and reconnected with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from the previous "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$b;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-static {p2}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->b(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$b;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->c(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)Lcom/samsung/android/app/notes/sync/contentsharing/sessession/d;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->K(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$b;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->b(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$b;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-static {p2}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->f(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;->d(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$b;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CS0] onChanged() : MobileService is connected with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$b;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->b(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/a;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$b;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->b(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/g;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$b;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[CS0] onChanged() : mConnectionState is connected again from the previous "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$b;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->b(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$b;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->a(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)Lcom/samsung/android/app/notes/sync/contentsharing/sessession/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->K(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$b;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CS0] onChanged() : invalid status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
