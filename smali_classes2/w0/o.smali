.class public Lw0/o;
.super Lw0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lw0/a;-><init>()V

    const/16 v0, 0x80

    iput v0, p0, Lw0/a;->c:I

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    invoke-virtual {p0}, Lw0/o;->e()V

    return-void
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, Lw0/o;->e()V

    return-void
.end method

.method public final e()V
    .locals 2

    const-string v0, "SyncErrorSyncNoSamsungAccount"

    const-string v1, "Fail to sync due to no samsung account package"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lw0/a;->d()V

    return-void
.end method
