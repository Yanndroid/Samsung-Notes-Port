.class public Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/client/AuthenticationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->s()Lcom/microsoft/identity/client/AuthenticationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$f;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    const-string v0, "GraphManager"

    const-string v1, "Authentication canceled"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/microsoft/identity/client/exception/MsalException;)V
    .locals 4

    const-string v0, "GraphManager"

    const-string v1, "Authentication error"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$f;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    sget-object v2, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;->NONE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;

    invoke-static {v1, v2}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->d(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$f;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->c(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$f;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->c(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    instance-of v2, p1, Lcom/microsoft/identity/client/exception/MsalUiRequiredException;

    if-eqz v2, :cond_1

    const-string p1, "Interactive login required"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$f;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->v()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lg1/a;->p(Landroid/content/Context;)Lg1/a;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lg1/a;->s()V

    goto/16 :goto_2

    :cond_1
    instance-of v2, p1, Lcom/microsoft/identity/client/exception/MsalClientException;

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/identity/client/exception/MsalException;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "no_current_account"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p1, "No current account, interactive login required"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$f;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->v()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lg1/a;->p(Landroid/content/Context;)Lg1/a;

    move-result-object p1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$f;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->g(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;)Lcom/microsoft/identity/client/AuthenticationCallback;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lg1/a;->h(Landroid/app/Activity;Lcom/microsoft/identity/client/AuthenticationCallback;)Z

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client error authenticating"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$f;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->O(Z)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$f;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->a(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$f;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->f(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not continue upload. disable feed upload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/microsoft/identity/client/exception/MsalException;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/microsoft/identity/client/exception/MsalException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    instance-of v1, p1, Lcom/microsoft/identity/client/exception/MsalServiceException;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service error authenticating"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onSuccess(Lcom/microsoft/identity/client/IAuthenticationResult;)V
    .locals 3

    invoke-interface {p1}, Lcom/microsoft/identity/client/IAuthenticationResult;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphManager"

    const-string v2, "Access token received"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lk1/b;->d()Lk1/b;

    move-result-object v2

    invoke-interface {p1}, Lcom/microsoft/identity/client/IAuthenticationResult;->getAccount()Lcom/microsoft/identity/client/IAccount;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lk1/b;->f(Ljava/lang/String;Lcom/microsoft/identity/client/IAccount;)V

    const/4 p1, 0x0

    invoke-static {p1}, Li1/a;->n(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$f;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    sget-object v0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;->IDLE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;

    invoke-static {p1, v0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->d(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$f;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->a(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Retry failed item. count : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$f;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->a(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$f;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->b(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$f;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->a(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$f;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->a(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$f;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->K(Lh1/a;)V

    :cond_0
    return-void
.end method
