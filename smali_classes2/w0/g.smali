.class public Lw0/g;
.super Lw0/a;
.source "SourceFile"


# instance fields
.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lw0/a;-><init>()V

    iput p1, p0, Lw0/g;->d:I

    const/high16 p1, 0x400000

    iput p1, p0, Lw0/a;->c:I

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    invoke-virtual {p0}, Lw0/g;->e()V

    return-void
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Lw0/g;->e()V

    iget v0, p0, Lw0/g;->d:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lw0/g;->f()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lt0/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lc3/q;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lt0/i;->a:Landroid/content/Context;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lc3/q;->s(Landroid/content/Context;Ljava/lang/Boolean;)V

    :cond_0
    const-string v0, "SyncErrorSyncDataNetworkNotAvailable"

    const-string v1, "Fail to sync due to DataNetworkNotAvailable"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lw0/a;->d()V

    iget-object v0, p0, Lt0/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lh/e;->a(Landroid/content/Context;)Lh/e;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lh/e;->j(I)V

    return-void
.end method

.method public final f()V
    .locals 2

    new-instance v0, Lb3/p;

    invoke-direct {v0}, Lb3/p;-><init>()V

    new-instance v1, Lt0/e;

    invoke-direct {v1, v0}, Lt0/e;-><init>(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    iput-object v1, p0, Lt0/i;->b:Lt0/g;

    invoke-interface {v1}, Lt0/g;->a()V

    return-void
.end method
