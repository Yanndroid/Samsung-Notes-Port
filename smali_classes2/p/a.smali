.class public Lp/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static f:Lp/a;


# instance fields
.field public a:Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;

.field public b:Lp/b;

.field public c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public d:J

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lp/a;->b:Lp/b;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lp/a;->d:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lp/a;->e:Ljava/lang/Object;

    sget-boolean v0, Ln/a;->l:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/b;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/b;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/ShareOldServiceController;-><init>()V

    :goto_0
    iput-object v0, p0, Lp/a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;

    return-void
.end method

.method public static declared-synchronized c()Lp/a;
    .locals 2

    const-class v0, Lp/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lp/a;->f:Lp/a;

    if-nez v1, :cond_0

    new-instance v1, Lp/a;

    invoke-direct {v1}, Lp/a;-><init>()V

    sput-object v1, Lp/a;->f:Lp/a;

    :cond_0
    sget-object v1, Lp/a;->f:Lp/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Lr/a;)V
    .locals 1

    iget-object v0, p0, Lp/a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;->l(Lr/a;)V

    return-void
.end method

.method public b(Lr/a;)V
    .locals 1

    iget-object v0, p0, Lp/a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;->c(Lr/a;)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lp/a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;

    invoke-interface {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;->d()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lp/a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;

    invoke-interface {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;->m()Z

    move-result v0

    return v0
.end method

.method public f(Lr/a;)V
    .locals 1

    iget-object v0, p0, Lp/a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;->e(Lr/a;)V

    return-void
.end method

.method public g(Lr/a;)V
    .locals 1

    iget-object v0, p0, Lp/a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;->b(Lr/a;)V

    return-void
.end method

.method public h(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/h;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lp/a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lp/a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;

    invoke-interface {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;->g()V

    return-void
.end method

.method public j(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lp/a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;->i(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lp/a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;->f(Ljava/lang/String;)V

    return-void
.end method

.method public l(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lp/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lc3/h;->d(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lp/a;->k(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lp/a;->r()V

    :goto_0
    return-void
.end method

.method public m(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lc3/h;->d(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lp/a;->k(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public n(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/h;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lp/a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;->k(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public o(Z)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/h;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lp/a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;->k(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public p(Ljava/lang/String;ZLandroid/app/Activity;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lp/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lc3/h;->d(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lp/a;->n(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lp/a;->r()V

    :goto_0
    return-void
.end method

.method public q(Lp/b;)V
    .locals 0

    iput-object p1, p0, Lp/a;->b:Lp/b;

    return-void
.end method

.method public final r()V
    .locals 7

    iget-object v0, p0, Lp/a;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lp/a;->d:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1f4

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iput-wide v1, p0, Lp/a;->d:J

    iget-object v1, p0, Lp/a;->b:Lp/b;

    iget-object v2, p0, Lp/a;->c:Ljava/lang/ref/WeakReference;

    invoke-interface {v1, v2}, Lp/b;->showGoToSettingsDialog(Ljava/lang/ref/WeakReference;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lp/a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;

    invoke-interface {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;->h()V

    return-void
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lp/a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;

    invoke-interface {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/controllers/a;->j()V

    return-void
.end method
