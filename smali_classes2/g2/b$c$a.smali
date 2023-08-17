.class public Lg2/b$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthorizationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg2/b$c;->onReceived(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg2/b$c;


# direct methods
.method public constructor <init>(Lg2/b$c;)V
    .locals 0

    iput-object p1, p0, Lg2/b$c$a;->a:Lg2/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getQuota() : fail to get authorization, errCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " errMsg = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QT/QuotaHelper"

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onReceived(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lg2/b$c$a;->a:Lg2/b$c;

    iget-object v0, v0, Lg2/b$c;->b:Lg2/b;

    new-instance v1, Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;

    iget-object v2, p0, Lg2/b$c$a;->a:Lg2/b$c;

    iget-object v2, v2, Lg2/b$c;->b:Lg2/b;

    invoke-static {v2}, Lg2/b;->a(Lg2/b;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lg2/b$c$a;->a:Lg2/b$c;

    iget-object v3, v3, Lg2/b$c;->b:Lg2/b;

    invoke-static {v3}, Lg2/b;->b(Lg2/b;)Lg2/c;

    move-result-object v3

    iget-object v4, p0, Lg2/b$c$a;->a:Lg2/b$c;

    iget v4, v4, Lg2/b$c;->a:I

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lg2/c;I)V

    invoke-static {v0, v1}, Lg2/b;->e(Lg2/b;Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;)V

    iget-object p1, p0, Lg2/b$c$a;->a:Lg2/b$c;

    iget-object p1, p1, Lg2/b$c;->b:Lg2/b;

    invoke-static {p1}, Lg2/b;->d(Lg2/b;)Lcom/samsung/android/app/notes/sync/quota/QuotaServiceTask;

    move-result-object p1

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
