.class public Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->I(Landroid/app/Activity;)V
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

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$a;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lg1/a;->p(Landroid/content/Context;)Lg1/a;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$a;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->g(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;)Lcom/microsoft/identity/client/AuthenticationCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg1/a;->i(Lcom/microsoft/identity/client/AuthenticationCallback;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to acquire token, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess, name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", email : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GraphManager"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$a;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    sget-object p2, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;->IDLE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->d(Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$State;)V

    const/4 p1, 0x0

    invoke-static {p1}, Li1/a;->n(Z)V

    return-void
.end method
