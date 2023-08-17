.class public Lw0/c0;
.super Lw0/a;
.source "SourceFile"


# instance fields
.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lw0/a;-><init>()V

    iput p1, p0, Lw0/c0;->d:I

    const/16 p1, 0x20

    iput p1, p0, Lw0/a;->c:I

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    invoke-virtual {p0}, Lw0/c0;->e()V

    return-void
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, Lw0/c0;->e()V

    return-void
.end method

.method public final e()V
    .locals 3

    iget v0, p0, Lw0/c0;->d:I

    and-int/lit16 v1, v0, 0x100

    const/16 v2, 0x100

    if-eq v1, v2, :cond_0

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lt0/i;->a:Landroid/content/Context;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lc3/q;->s(Landroid/content/Context;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    const-string v0, "SyncErrorSyncWifiOnly"

    const-string v1, "fail to handle MESSAGE_CODE_IGNOREWIFIONLY!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lt0/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lh/e;->a(Landroid/content/Context;)Lh/e;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lh/e;->j(I)V

    return-void
.end method
