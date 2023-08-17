.class public Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;J)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$f;->b:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    iput-wide p2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$f;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$f;->b:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->h(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$f;->b:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CS0-1] disconnectInternal() cancelled!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$f;->b:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->I()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$f;->b:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->d(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)Lcom/samsung/android/app/notes/sync/contentsharing/sessession/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->K(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/c;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$f;->b:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->f(Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;)Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession;->disconnect()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$f;->b:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CS0-1] disconnectInternal() Finish to disConnect, et = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$f;->a:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase$f;->b:Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;

    invoke-virtual {v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS0-2] disconnectInternal() : Fail, Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
