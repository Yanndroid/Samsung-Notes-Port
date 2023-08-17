.class public Lh2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lh2/a;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lh2/a;->a:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lh2/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lh2/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lh2/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lh2/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic c(Lh2/a;Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthorizationListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lh2/a;->h(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthorizationListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic d(Lh2/a;Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthorizationListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lh2/a;->i(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthorizationListener;)V

    return-void
.end method

.method public static declared-synchronized g(Landroid/content/Context;)Lh2/a;
    .locals 2

    const-class v0, Lh2/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lh2/a;->c:Lh2/a;

    if-nez v1, :cond_0

    new-instance v1, Lh2/a;

    invoke-direct {v1, p0}, Lh2/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lh2/a;->c:Lh2/a;

    :cond_0
    sget-object p0, Lh2/a;->c:Lh2/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public e(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthorizationListener;)Z
    .locals 2

    const-string v0, "SCloudAuthorizationManager"

    const-string v1, "getAuthorizationAsync()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lk2/d;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Lh2/a;->i(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthorizationListener;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "GetAuthorizationThread"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v1, Lh2/a$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lh2/a$a;-><init>(Lh2/a;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthorizationListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const-string p1, "getAuthorizationAsync() : accessToken or userId is empty!"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "SCloudAuthorizationManager"

    const-string v1, "getAuthorizationSync()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lk2/d;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lh2/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Lk2/d;->j(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lh2/a;->b:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lk2/d;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lh2/a;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lk2/d;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    iput-object p1, p0, Lh2/a;->b:Ljava/lang/String;

    invoke-static {}, Lk2/d;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v2

    :cond_4
    :goto_0
    const-string p1, "getAuthorizationSync() : accessToken or userId is empty!"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public final h(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthorizationListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    const-string p2, "0"

    const-string p3, "fail to initialize PAM"

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthorizationListener;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "SCloudAuthorizationManager"

    const-string p2, "getAuthorization() : fail to call listener.onError()!"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final i(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthorizationListener;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Lk2/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthorizationListener;->onReceived(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "SCloudAuthorizationManager"

    const-string v0, "getAuthorization() : fail to call listener.onReceived()!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
