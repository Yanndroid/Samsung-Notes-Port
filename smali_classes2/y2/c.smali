.class public Ly2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field public static b:Z = false


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lc3/q;->d(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lc3/q;->b(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static c()I
    .locals 3

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lc3/k;->a()Z

    move-result v1

    const-string v2, "SyncStateInfo"

    if-eqz v1, :cond_0

    const-string v0, "skip requestRecovery due to SyncBlocked."

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x100000

    return v0

    :cond_0
    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v1

    invoke-virtual {v1}, Lf/a;->r()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "Skip requestRecovery due to not login"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x200

    return v0

    :cond_1
    invoke-static {v0}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "Skip requestRecovery due to disconnected data network!"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x400000

    return v0

    :cond_2
    invoke-static {v0}, Lh/e;->a(Landroid/content/Context;)Lh/e;

    move-result-object v1

    invoke-virtual {v1}, Lh/e;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "Skip requestRecovery due to no personal info of the preCondition!"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x800000

    return v0

    :cond_3
    invoke-static {v0}, Lh/e;->a(Landroid/content/Context;)Lh/e;

    move-result-object v0

    invoke-virtual {v0}, Lh/e;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Skip requestRecovery due to no privacy notice of the preCondition!"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x1000000

    return v0

    :cond_4
    const/4 v0, -0x1

    return v0
.end method

.method public static d(I)I
    .locals 6

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    and-int/lit8 v1, p0, 0x40

    const/high16 v2, 0x80000

    const/16 v3, 0x40

    if-eq v1, v3, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->isSyncBlocked()Z

    move-result v4

    if-eqz v4, :cond_0

    const/high16 p0, 0x40000

    return p0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/SyncStartManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/startmanager/SyncStartManager;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/SyncStartManager;->canStartSync()Z

    move-result v4

    if-nez v4, :cond_3

    const/high16 p0, 0x2000000

    return p0

    :cond_2
    invoke-static {}, Lc3/k;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4}, Lc3/k;->b(Ljava/lang/Boolean;)V

    :cond_3
    invoke-static {}, Lc3/k;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    const/high16 p0, 0x100000

    return p0

    :cond_4
    and-int/lit16 v4, p0, 0x80

    const/16 v5, 0x80

    if-eq v4, v5, :cond_6

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v4

    invoke-virtual {v4}, Ln/a;->o()Z

    move-result v4

    if-nez v4, :cond_5

    const/high16 p0, 0x200000

    return p0

    :cond_5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v4

    if-nez v4, :cond_6

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    invoke-static {}, Lc2/a;->a()Lc2/a;

    move-result-object v1

    invoke-virtual {v1}, Lc2/a;->e()Z

    move-result v1

    if-nez v1, :cond_7

    const/16 p0, 0x10

    return p0

    :cond_7
    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v1

    invoke-virtual {v1}, Lf/a;->r()Z

    move-result v1

    if-nez v1, :cond_8

    const/16 p0, 0x200

    return p0

    :cond_8
    invoke-static {v0}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_9

    const/high16 p0, 0x400000

    return p0

    :cond_9
    const/16 v1, 0x100

    and-int/2addr p0, v1

    if-eq p0, v1, :cond_a

    invoke-static {v0}, Lc3/q;->l(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-static {v0}, Lc3/h;->o(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_a

    const/16 p0, 0x20

    return p0

    :cond_a
    invoke-static {v0}, Lh/e;->a(Landroid/content/Context;)Lh/e;

    move-result-object p0

    invoke-virtual {p0}, Lh/e;->d()Z

    move-result p0

    if-eqz p0, :cond_b

    const/high16 p0, 0x800000

    return p0

    :cond_b
    invoke-static {v0}, Lh/e;->a(Landroid/content/Context;)Lh/e;

    move-result-object p0

    invoke-virtual {p0}, Lh/e;->e()Z

    move-result p0

    if-eqz p0, :cond_c

    const/high16 p0, 0x1000000

    return p0

    :cond_c
    const/4 p0, -0x1

    return p0
.end method

.method public static e(I)Z
    .locals 2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v1

    invoke-virtual {v1}, Ln/a;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lc3/q;->l(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lc3/h;->o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x100

    and-int/2addr p0, v0

    if-eq p0, v0, :cond_1

    :cond_0
    const-string p0, "SyncStateInfo"

    const-string v0, "Current sync is not possible"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static f()Z
    .locals 1

    sget-boolean v0, Ly2/c;->a:Z

    return v0
.end method

.method public static g()Z
    .locals 1

    sget-boolean v0, Ly2/c;->b:Z

    return v0
.end method

.method public static h(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1}, Lc3/q;->r(Landroid/content/Context;I)V

    return-void
.end method

.method public static i(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1}, Lc3/q;->p(Landroid/content/Context;I)V

    return-void
.end method

.method public static j(Z)V
    .locals 0

    sput-boolean p0, Ly2/c;->a:Z

    return-void
.end method

.method public static k(Z)V
    .locals 0

    sput-boolean p0, Ly2/c;->b:Z

    return-void
.end method
