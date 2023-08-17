.class public Lh2/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/a;->e(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthorizationListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthorizationListener;

.field public final synthetic d:Lh2/a;


# direct methods
.method public constructor <init>(Lh2/a;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthorizationListener;)V
    .locals 0

    iput-object p1, p0, Lh2/a$a;->d:Lh2/a;

    iput-object p2, p0, Lh2/a$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lh2/a$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lh2/a$a;->c:Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthorizationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "SCloudAuthorizationManager"

    const-string v1, "getAuthorizationAsync(), run()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lh2/a$a;->d:Lh2/a;

    invoke-static {v1}, Lh2/a;->a(Lh2/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lh2/a$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lh2/a$a;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lk2/d;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lh2/a$a;->d:Lh2/a;

    iget-object v1, p0, Lh2/a$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lh2/a;->b(Lh2/a;Ljava/lang/String;)V

    iget-object v0, p0, Lh2/a$a;->d:Lh2/a;

    iget-object v1, p0, Lh2/a$a;->c:Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthorizationListener;

    invoke-static {v0, v1}, Lh2/a;->d(Lh2/a;Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthorizationListener;)V

    goto :goto_0

    :cond_0
    const-string v1, "getAuthorizationAsync() : fail to initialize PAM!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lh2/a$a;->d:Lh2/a;

    iget-object v1, p0, Lh2/a$a;->c:Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthorizationListener;

    const-string v2, "0"

    const-string v3, "fail to call listener.onError()!"

    invoke-static {v0, v1, v2, v3}, Lh2/a;->c(Lh2/a;Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthorizationListener;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
