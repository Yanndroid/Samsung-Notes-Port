.class final Lio/netty/util/concurrent/PromiseNotifier$2;
.super Lio/netty/util/concurrent/PromiseNotifier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/concurrent/PromiseNotifier;->cascade(ZLio/netty/util/concurrent/Future;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$future:Lio/netty/util/concurrent/Future;

.field public final synthetic val$promise:Lio/netty/util/concurrent/Promise;


# direct methods
.method public varargs constructor <init>(Z[Lio/netty/util/concurrent/Promise;Lio/netty/util/concurrent/Promise;Lio/netty/util/concurrent/Future;)V
    .locals 0

    iput-object p3, p0, Lio/netty/util/concurrent/PromiseNotifier$2;->val$promise:Lio/netty/util/concurrent/Promise;

    iput-object p4, p0, Lio/netty/util/concurrent/PromiseNotifier$2;->val$future:Lio/netty/util/concurrent/Future;

    invoke-direct {p0, p1, p2}, Lio/netty/util/concurrent/PromiseNotifier;-><init>(Z[Lio/netty/util/concurrent/Promise;)V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 1

    iget-object v0, p0, Lio/netty/util/concurrent/PromiseNotifier$2;->val$promise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lio/netty/util/concurrent/PromiseNotifier$2;->val$future:Lio/netty/util/concurrent/Future;

    invoke-super {p0, p1}, Lio/netty/util/concurrent/PromiseNotifier;->operationComplete(Lio/netty/util/concurrent/Future;)V

    return-void
.end method
