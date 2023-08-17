.class final Lio/netty/util/concurrent/DefaultPromise$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/concurrent/DefaultPromise;->notifyListenerWithStackOverFlowProtection(Lio/netty/util/concurrent/EventExecutor;Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$future:Lio/netty/util/concurrent/Future;

.field public final synthetic val$listener:Lio/netty/util/concurrent/GenericFutureListener;


# direct methods
.method public constructor <init>(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 0

    iput-object p1, p0, Lio/netty/util/concurrent/DefaultPromise$2;->val$future:Lio/netty/util/concurrent/Future;

    iput-object p2, p0, Lio/netty/util/concurrent/DefaultPromise$2;->val$listener:Lio/netty/util/concurrent/GenericFutureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise$2;->val$future:Lio/netty/util/concurrent/Future;

    iget-object v1, p0, Lio/netty/util/concurrent/DefaultPromise$2;->val$listener:Lio/netty/util/concurrent/GenericFutureListener;

    invoke-static {v0, v1}, Lio/netty/util/concurrent/DefaultPromise;->access$300(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V

    return-void
.end method
