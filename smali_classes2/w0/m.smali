.class public Lw0/m;
.super Lw0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lw0/a;-><init>()V

    const/high16 v0, 0x800000

    iput v0, p0, Lw0/a;->c:I

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    invoke-virtual {p0}, Lw0/m;->e()V

    return-void
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, Lw0/m;->e()V

    return-void
.end method

.method public final e()V
    .locals 2

    const-string v0, "SyncErrorSyncNoPersonalInfo"

    const-string v1, "Fail to sync due to no person info"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lw0/a;->d()V

    iget-object v0, p0, Lt0/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lh/e;->a(Landroid/content/Context;)Lh/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lh/e;->j(I)V

    return-void
.end method