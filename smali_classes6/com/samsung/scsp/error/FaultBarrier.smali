.class public Lcom/samsung/scsp/error/FaultBarrier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/scsp/error/FaultBarrier$ThrowableSupplier;,
        Lcom/samsung/scsp/error/FaultBarrier$ThrowableRunnable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Lcom/samsung/scsp/error/FaultBarrier$ThrowableSupplier;Ljava/lang/Object;)Lcom/samsung/scsp/error/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/scsp/error/FaultBarrier$ThrowableSupplier<",
            "TT;>;TT;)",
            "Lcom/samsung/scsp/error/Response<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/scsp/error/FaultBarrier;->get(Lcom/samsung/scsp/error/FaultBarrier$ThrowableSupplier;Ljava/lang/Object;Z)Lcom/samsung/scsp/error/Response;

    move-result-object p0

    return-object p0
.end method

.method public static get(Lcom/samsung/scsp/error/FaultBarrier$ThrowableSupplier;Ljava/lang/Object;Z)Lcom/samsung/scsp/error/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/scsp/error/FaultBarrier$ThrowableSupplier<",
            "TT;>;TT;Z)",
            "Lcom/samsung/scsp/error/Response<",
            "TT;>;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/samsung/scsp/error/Response;

    invoke-interface {p0}, Lcom/samsung/scsp/error/FaultBarrier$ThrowableSupplier;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/scsp/error/Response;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    new-instance p2, Lcom/samsung/scsp/error/Response;

    invoke-static {p0}, Lcom/samsung/scsp/error/ErrorSupplier;->get(Ljava/lang/Throwable;)Lcom/samsung/scsp/error/Result;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lcom/samsung/scsp/error/Response;-><init>(Ljava/lang/Object;Lcom/samsung/scsp/error/Result;)V

    return-object p2
.end method

.method public static run(Lcom/samsung/scsp/error/FaultBarrier$ThrowableRunnable;)Lcom/samsung/scsp/error/Result;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/scsp/error/FaultBarrier;->run(Lcom/samsung/scsp/error/FaultBarrier$ThrowableRunnable;Z)Lcom/samsung/scsp/error/Result;

    move-result-object p0

    return-object p0
.end method

.method public static run(Lcom/samsung/scsp/error/FaultBarrier$ThrowableRunnable;Z)Lcom/samsung/scsp/error/Result;
    .locals 0

    :try_start_0
    invoke-interface {p0}, Lcom/samsung/scsp/error/FaultBarrier$ThrowableRunnable;->run()V

    new-instance p0, Lcom/samsung/scsp/error/Result;

    invoke-direct {p0}, Lcom/samsung/scsp/error/Result;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    invoke-static {p0}, Lcom/samsung/scsp/error/ErrorSupplier;->get(Ljava/lang/Throwable;)Lcom/samsung/scsp/error/Result;

    move-result-object p0

    return-object p0
.end method
