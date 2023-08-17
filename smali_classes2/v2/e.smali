.class public Lv2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lx2/e;

.field public b:Lx2/g;

.field public c:Lp2/a;

.field public d:Z


# direct methods
.method public constructor <init>(Lx2/e;Lx2/g;Lp2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/e;->a:Lx2/e;

    iput-object p2, p0, Lv2/e;->b:Lx2/g;

    iput-object p3, p0, Lv2/e;->c:Lp2/a;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lv2/e;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    const-string v0, "SyncSettings"

    const-string v1, "Password (downSync)"

    invoke-static {v0, v1}, Lc3/p;->m(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Le1/d;

    invoke-direct {v0}, Le1/d;-><init>()V

    iget-object v1, p0, Lv2/e;->a:Lx2/e;

    invoke-virtual {v1}, Lx2/e;->p()La2/g$a;

    move-result-object v1

    iget-object v2, p0, Lv2/e;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, La2/g;->c(La2/g$a;Landroid/content/Context;Le1/d;La2/g$b;)V

    invoke-virtual {v0}, Le1/d;->b()Le1/j$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lv2/e;->b(Le1/j$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Ls0/c;

    if-eqz v1, :cond_0

    check-cast v0, Ls0/c;

    invoke-virtual {p0, v0}, Lv2/e;->c(Ls0/c;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    throw v0
.end method

.method public final b(Le1/j$a;)V
    .locals 6

    invoke-static {}, Lx2/b;->c()J

    move-result-wide v0

    iget-wide v2, p1, Le1/j$a;->c:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    iput-boolean v5, p0, Lv2/e;->d:Z

    const-string p1, "SyncSettings"

    const-string v0, "handlePassword() : No password info!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lv2/e;->b:Lx2/g;

    invoke-virtual {v4}, Lx2/f;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {p0, p1, v2, v3}, Lv2/e;->f(Le1/j$a;J)V

    goto :goto_1

    :cond_1
    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    if-gez v0, :cond_3

    iput-boolean v5, p0, Lv2/e;->d:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final c(Ls0/c;)V
    .locals 4

    invoke-virtual {p1}, Ls0/c;->a()I

    move-result v0

    const-string v1, "handleSyncError: "

    const-string v2, "SyncSettings"

    const/16 v3, 0x147

    if-ne v0, v3, :cond_0

    :goto_0
    invoke-static {v2, v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ls0/c;->a()I

    move-result v0

    const/16 v3, 0x146

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ls0/c;->a()I

    move-result v0

    const/16 v1, 0x13b

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Ls0/c;->d()I

    move-result v0

    const/16 v1, 0x190

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Ls0/c;->d()I

    move-result v0

    const/16 v1, 0x195

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    throw p1

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignore Server error, statusCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ls0/c;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_4
    throw p1
.end method

.method public d()Z
    .locals 4

    iget-object v0, p0, Lv2/e;->c:Lp2/a;

    invoke-interface {v0}, Lp2/a;->isCancelled()Z

    move-result v0

    const-string v1, "Cancelled SyncSettings"

    const-string v2, "SyncSettings"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    invoke-virtual {p0}, Lv2/e;->a()Z

    move-result v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lv2/e;->c:Lp2/a;

    invoke-interface {v0}, Lp2/a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2
    iget-boolean v0, p0, Lv2/e;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lv2/e;->b:Lx2/g;

    invoke-virtual {v0}, Lx2/f;->e()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lv2/e;->e()Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Z
    .locals 5

    const-string v0, "SyncSettings"

    const-string/jumbo v1, "upSyncLocalChanges()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v2

    invoke-virtual {v2}, Lx/e;->e()Lg0/a;

    move-result-object v2

    iget-object v3, p0, Lv2/e;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lg0/a;->isSetPassword(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Password (upSync)"

    invoke-static {v0, v2}, Lc3/p;->m(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Le1/k;

    iget-object v2, p0, Lv2/e;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Le1/k;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lv2/e;->a:Lx2/e;

    invoke-virtual {v2}, Lx2/e;->p()La2/g$a;

    move-result-object v2

    iget-object v3, p0, Lv2/e;->a:Lx2/e;

    invoke-virtual {v3}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, La2/g;->q(La2/g$a;Landroid/content/Context;Le1/k;La2/g$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    instance-of v2, v0, Ls0/c;

    if-eqz v2, :cond_1

    check-cast v0, Ls0/c;

    invoke-virtual {p0, v0}, Lv2/e;->c(Ls0/c;)V

    :cond_0
    return v1

    :cond_1
    throw v0
.end method

.method public final f(Le1/j$a;J)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv2/e;->d:Z

    :try_start_0
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->e()Lg0/a;

    move-result-object v0

    iget-object v1, p0, Lv2/e;->a:Lx2/e;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Le1/j$a;->a:Ljava/lang/String;

    iget-object p1, p1, Le1/j$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lg0/a;->updateUserAuthInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lv2/e;->a:Lx2/e;

    invoke-virtual {p1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object p1

    invoke-virtual {p1}, Lf/a;->o()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lv2/e;->a:Lx2/e;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setLocalPasswordOwnerGuid(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lx2/b;->h(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Failed to updateLocalPassword()"

    const-string p2, "SyncSettings"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ls0/c;

    const/16 p3, 0x138

    invoke-direct {p2, p3, p1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p2
.end method
