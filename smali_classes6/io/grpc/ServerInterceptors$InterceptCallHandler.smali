.class final Lio/grpc/ServerInterceptors$InterceptCallHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/ServerCallHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/ServerInterceptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InterceptCallHandler"
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
.field private final callHandler:Lio/grpc/ServerCallHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ServerCallHandler<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field private final interceptor:Lio/grpc/ServerInterceptor;


# direct methods
.method private constructor <init>(Lio/grpc/ServerInterceptor;Lio/grpc/ServerCallHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerInterceptor;",
            "Lio/grpc/ServerCallHandler<",
            "TReqT;TRespT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/ServerInterceptor;

    iput-object p1, p0, Lio/grpc/ServerInterceptors$InterceptCallHandler;->interceptor:Lio/grpc/ServerInterceptor;

    iput-object p2, p0, Lio/grpc/ServerInterceptors$InterceptCallHandler;->callHandler:Lio/grpc/ServerCallHandler;

    return-void
.end method

.method public static create(Lio/grpc/ServerInterceptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerInterceptors$InterceptCallHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ServerInterceptor;",
            "Lio/grpc/ServerCallHandler<",
            "TReqT;TRespT;>;)",
            "Lio/grpc/ServerInterceptors$InterceptCallHandler<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    new-instance v0, Lio/grpc/ServerInterceptors$InterceptCallHandler;

    invoke-direct {v0, p0, p1}, Lio/grpc/ServerInterceptors$InterceptCallHandler;-><init>(Lio/grpc/ServerInterceptor;Lio/grpc/ServerCallHandler;)V

    return-object v0
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

    iget-object v0, p0, Lio/grpc/ServerInterceptors$InterceptCallHandler;->interceptor:Lio/grpc/ServerInterceptor;

    iget-object v1, p0, Lio/grpc/ServerInterceptors$InterceptCallHandler;->callHandler:Lio/grpc/ServerCallHandler;

    invoke-interface {v0, p1, p2, v1}, Lio/grpc/ServerInterceptor;->interceptCall(Lio/grpc/ServerCall;Lio/grpc/Metadata;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerCall$Listener;

    move-result-object p1

    return-object p1
.end method
