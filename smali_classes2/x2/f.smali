.class public Lx2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lx2/d;


# direct methods
.method public constructor <init>(Lx2/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx2/f;->a:Lx2/d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lx2/b;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lx2/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1464416139847"

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lt2/a;->s(J)V

    const/4 v0, 0x0

    invoke-static {v0}, Lx2/b;->f(Z)V

    :cond_0
    return-void
.end method

.method public b()J
    .locals 4

    new-instance v0, Lm2/a;

    invoke-direct {v0}, Lm2/a;-><init>()V

    invoke-virtual {v0}, Lm2/a;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ls0/c;

    const/16 v1, 0x12f

    const-string v2, "Failed to downloadTimestamp() - syncTime : 0"

    invoke-direct {v0, v1, v2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public c()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lx2/b;->i(J)V

    return-void
.end method

.method public d(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->isLDUModel()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public e()Z
    .locals 7

    iget-object v0, p0, Lx2/f;->a:Lx2/d;

    invoke-virtual {v0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lx2/f;->a:Lx2/d;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getLocalPasswordOwnerGuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lx2/f;->a:Lx2/d;

    invoke-virtual {v2}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v2

    invoke-virtual {v2}, Lf/a;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lx2/f;->a:Lx2/d;

    invoke-virtual {v3}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getLocalUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "SyncProcessTask$SyncOperation"

    const-string v1, "isPasswordAccountChanged : currentAccountGuidHash is empty!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lx2/f;->a:Lx2/d;

    invoke-virtual {v1}, Lx2/d;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setLocalPasswordOwnerGuid(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return v5

    :cond_1
    return v6

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v5

    :cond_3
    return v6
.end method
