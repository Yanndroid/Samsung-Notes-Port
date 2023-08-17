.class public Lw2/h;
.super Lw2/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lw2/a;-><init>(Lx2/e;Lx2/g;Lp2/a;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ly2/c;->j(Z)V

    invoke-static {}, Ly2/c;->g()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Ly2/c;->k(Z)V

    new-instance v0, Ls0/c;

    const/16 v1, 0x1fb

    const-string v2, "Push is received and resync!"

    invoke-direct {v0, v1, v2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ly2/c;->j(Z)V

    return-void
.end method
