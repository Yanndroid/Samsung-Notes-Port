.class Lio/grpc/internal/SubchannelChannel$2;
.super Lio/grpc/ClientCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/SubchannelChannel;->newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/ClientCall<",
        "TRequestT;TResponseT;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/grpc/internal/SubchannelChannel;

.field public final synthetic val$effectiveExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lio/grpc/internal/SubchannelChannel;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/SubchannelChannel$2;->this$0:Lio/grpc/internal/SubchannelChannel;

    iput-object p2, p0, Lio/grpc/internal/SubchannelChannel$2;->val$effectiveExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Lio/grpc/ClientCall;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public halfClose()V
    .locals 0

    return-void
.end method

.method public request(I)V
    .locals 0

    return-void
.end method

.method public sendMessage(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestT;)V"
        }
    .end annotation

    return-void
.end method

.method public start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TResponseT;>;",
            "Lio/grpc/Metadata;",
            ")V"
        }
    .end annotation

    iget-object p2, p0, Lio/grpc/internal/SubchannelChannel$2;->val$effectiveExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lio/grpc/internal/SubchannelChannel$2$1;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/SubchannelChannel$2$1;-><init>(Lio/grpc/internal/SubchannelChannel$2;Lio/grpc/ClientCall$Listener;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
