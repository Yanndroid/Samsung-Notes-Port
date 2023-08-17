.class public Lcom/samsung/android/app/notes/sync/network/networkutils/d;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/d;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->j()Ly/b;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/d;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ly/b;->close(Ljava/lang/Object;)V

    return-void
.end method

.method public write(I)V
    .locals 0

    return-void
.end method

.method public write([B)V
    .locals 3

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->j()Ly/b;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/d;->a:Ljava/lang/Object;

    array-length v2, p1

    invoke-interface {v0, v1, p1, v2}, Ly/b;->write(Ljava/lang/Object;[BI)V

    return-void
.end method
