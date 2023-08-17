.class final Lio/grpc/stub/ServerCalls$StreamingServerCallHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/ServerCallHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/ServerCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamingServerCallHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/stub/ServerCalls$StreamingServerCallHandler$StreamingServerCallListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/grpc/ServerCallHandler<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field private final bidi:Z

.field private final method:Lio/grpc/stub/ServerCalls$StreamingRequestMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/stub/ServerCalls$StreamingRequestMethod<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/grpc/stub/ServerCalls$StreamingRequestMethod;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/stub/ServerCalls$StreamingRequestMethod<",
            "TReqT;TRespT;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/stub/ServerCalls$StreamingServerCallHandler;->method:Lio/grpc/stub/ServerCalls$StreamingRequestMethod;

    iput-boolean p2, p0, Lio/grpc/stub/ServerCalls$StreamingServerCallHandler;->bidi:Z

    return-void
.end method


# virtual methods
.method public startCall(Lio/grpc/ServerCall;Lio/grpc/Metadata;)Lio/grpc/ServerCall$Listener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerCall<",
            "TReqT;TRespT;>;",
            "Lio/grpc/Metadata;",
            ")",
            "Lio/grpc/ServerCall$Listener<",
            "TReqT;>;"
        }
    .end annotation

    new-instance p2, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;

    iget-boolean v0, p0, Lio/grpc/stub/ServerCalls$StreamingServerCallHandler;->bidi:Z

    invoke-direct {p2, p1, v0}, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;-><init>(Lio/grpc/ServerCall;Z)V

    iget-object v0, p0, Lio/grpc/stub/ServerCalls$StreamingServerCallHandler;->method:Lio/grpc/stub/ServerCalls$StreamingRequestMethod;

    invoke-interface {v0, p2}, Lio/grpc/stub/ServerCalls$StreamingRequestMethod;->invoke(Lio/grpc/stub/StreamObserver;)Lio/grpc/stub/StreamObserver;

    move-result-object v0

    invoke-static {p2}, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->access$100(Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;)V

    invoke-static {p2}, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;->access$500(Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lio/grpc/ServerCall;->request(I)V

    :cond_0
    new-instance v1, Lio/grpc/stub/ServerCalls$StreamingServerCallHandler$StreamingServerCallListener;

    invoke-direct {v1, p0, v0, p2, p1}, Lio/grpc/stub/ServerCalls$StreamingServerCallHandler$StreamingServerCallListener;-><init>(Lio/grpc/stub/ServerCalls$StreamingServerCallHandler;Lio/grpc/stub/StreamObserver;Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;Lio/grpc/ServerCall;)V

    return-object v1
.end method
