.class public Lw0/z;
.super Lw0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lw0/a;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lw0/a;->c:I

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    invoke-virtual {p0}, Lw0/z;->e()V

    return-void
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, Lw0/z;->e()V

    return-void
.end method

.method public final e()V
    .locals 2

    invoke-virtual {p0}, Lw0/z;->f()V

    const-string v0, "SyncErrorSyncServerBlocking"

    const-string v1, "Fail to sync due to server error!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lw0/a;->d()V

    iget-object v0, p0, Lt0/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lh/e;->a(Landroid/content/Context;)Lh/e;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lh/e;->j(I)V

    return-void
.end method

.method public final f()V
    .locals 2

    new-instance v0, Lb3/s;

    iget-object v1, p0, Lt0/i;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lb3/s;-><init>(Landroid/content/Context;)V

    new-instance v1, Lt0/e;

    invoke-direct {v1, v0}, Lt0/e;-><init>(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    iput-object v1, p0, Lt0/i;->b:Lt0/g;

    invoke-interface {v1}, Lt0/g;->a()V

    return-void
.end method
