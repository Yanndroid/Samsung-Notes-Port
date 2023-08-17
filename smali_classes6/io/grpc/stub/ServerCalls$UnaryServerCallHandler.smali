.class final Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;
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
    name = "UnaryServerCallHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/stub/ServerCalls$UnaryServerCallHandler$UnaryServerCallListener;
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
.field private final method:Lio/grpc/stub/ServerCalls$UnaryRequestMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/stub/ServerCalls$UnaryRequestMethod<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field private final serverStreaming:Z


# direct methods
.method public constructor <init>(Lio/grpc/stub/ServerCalls$UnaryRequestMethod;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/stub/ServerCalls$UnaryRequestMethod<",
            "TReqT;TRespT;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;->method:Lio/grpc/stub/ServerCalls$UnaryRequestMethod;

    iput-boolean p2, p0, Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;->serverStreaming:Z

    return-void
.end method

.method public static synthetic access$000(Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;)Lio/grpc/stub/ServerCalls$UnaryRequestMethod;
    .locals 0

    iget-object p0, p0, Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;->method:Lio/grpc/stub/ServerCalls$UnaryRequestMethod;

    return-object p0
.end method


# virtual methods
.method public startCall(Lio/grpc/ServerCall;Lio/grpc/Metadata;)Lio/grpc/ServerCall$Listener;
    .locals 1
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

    invoke-virtual {p1}, Lio/grpc/ServerCall;->getMethodDescriptor()Lio/grpc/MethodDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/MethodDescriptor;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/MethodDescriptor$MethodType;->clientSendsOneMessage()Z

    move-result p2

    const-string v0, "asyncUnaryRequestCall is only for clientSendsOneMessage methods"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance p2, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;

    iget-boolean v0, p0, Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;->serverStreaming:Z

    invoke-direct {p2, p1, v0}, Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;-><init>(Lio/grpc/ServerCall;Z)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lio/grpc/ServerCall;->request(I)V

    new-instance v0, Lio/grpc/stub/ServerCalls$UnaryServerCallHandler$UnaryServerCallListener;

    invoke-direct {v0, p0, p2, p1}, Lio/grpc/stub/ServerCalls$UnaryServerCallHandler$UnaryServerCallListener;-><init>(Lio/grpc/stub/ServerCalls$UnaryServerCallHandler;Lio/grpc/stub/ServerCalls$ServerCallStreamObserverImpl;Lio/grpc/ServerCall;)V

    return-object v0
.end method
