.class final Lio/grpc/stub/StreamObservers$1FlowControllingOnReadyHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/stub/StreamObservers;->copyWithFlowControl(Ljava/util/Iterator;Lio/grpc/stub/CallStreamObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FlowControllingOnReadyHandler"
.end annotation


# instance fields
.field private completed:Z

.field public final synthetic val$source:Ljava/util/Iterator;

.field public final synthetic val$target:Lio/grpc/stub/CallStreamObserver;


# direct methods
.method public constructor <init>(Lio/grpc/stub/CallStreamObserver;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/stub/StreamObservers$1FlowControllingOnReadyHandler;->val$target:Lio/grpc/stub/CallStreamObserver;

    iput-object p2, p0, Lio/grpc/stub/StreamObservers$1FlowControllingOnReadyHandler;->val$source:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lio/grpc/stub/StreamObservers$1FlowControllingOnReadyHandler;->completed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, Lio/grpc/stub/StreamObservers$1FlowControllingOnReadyHandler;->val$target:Lio/grpc/stub/CallStreamObserver;

    invoke-virtual {v0}, Lio/grpc/stub/CallStreamObserver;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/stub/StreamObservers$1FlowControllingOnReadyHandler;->val$source:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/stub/StreamObservers$1FlowControllingOnReadyHandler;->val$target:Lio/grpc/stub/CallStreamObserver;

    iget-object v1, p0, Lio/grpc/stub/StreamObservers$1FlowControllingOnReadyHandler;->val$source:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/stub/StreamObserver;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/grpc/stub/StreamObservers$1FlowControllingOnReadyHandler;->val$source:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/stub/StreamObservers$1FlowControllingOnReadyHandler;->completed:Z

    iget-object v0, p0, Lio/grpc/stub/StreamObservers$1FlowControllingOnReadyHandler;->val$target:Lio/grpc/stub/CallStreamObserver;

    invoke-interface {v0}, Lio/grpc/stub/StreamObserver;->onCompleted()V

    :cond_2
    return-void
.end method
