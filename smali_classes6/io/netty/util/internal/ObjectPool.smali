.class public abstract Lio/netty/util/internal/ObjectPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/internal/ObjectPool$RecyclerObjectPool;,
        Lio/netty/util/internal/ObjectPool$ObjectCreator;,
        Lio/netty/util/internal/ObjectPool$Handle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newPool(Lio/netty/util/internal/ObjectPool$ObjectCreator;)Lio/netty/util/internal/ObjectPool;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/internal/ObjectPool$ObjectCreator<",
            "TT;>;)",
            "Lio/netty/util/internal/ObjectPool<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/netty/util/internal/ObjectPool$RecyclerObjectPool;

    const-string v1, "creator"

    invoke-static {p0, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/netty/util/internal/ObjectPool$ObjectCreator;

    invoke-direct {v0, p0}, Lio/netty/util/internal/ObjectPool$RecyclerObjectPool;-><init>(Lio/netty/util/internal/ObjectPool$ObjectCreator;)V

    return-object v0
.end method


# virtual methods
.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
