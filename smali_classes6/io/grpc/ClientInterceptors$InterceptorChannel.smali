.class Lio/grpc/ClientInterceptors$InterceptorChannel;
.super Lio/grpc/Channel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/ClientInterceptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterceptorChannel"
.end annotation


# instance fields
.field private final channel:Lio/grpc/Channel;

.field private final interceptor:Lio/grpc/ClientInterceptor;


# direct methods
.method private constructor <init>(Lio/grpc/Channel;Lio/grpc/ClientInterceptor;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/Channel;-><init>()V

    iput-object p1, p0, Lio/grpc/ClientInterceptors$InterceptorChannel;->channel:Lio/grpc/Channel;

    const-string p1, "interceptor"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/ClientInterceptor;

    iput-object p1, p0, Lio/grpc/ClientInterceptors$InterceptorChannel;->interceptor:Lio/grpc/ClientInterceptor;

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/Channel;Lio/grpc/ClientInterceptor;Lio/grpc/ClientInterceptors$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/ClientInterceptors$InterceptorChannel;-><init>(Lio/grpc/Channel;Lio/grpc/ClientInterceptor;)V

    return-void
.end method


# virtual methods
.method public authority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/ClientInterceptors$InterceptorChannel;->channel:Lio/grpc/Channel;

    invoke-virtual {v0}, Lio/grpc/Channel;->authority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lio/grpc/CallOptions;",
            ")",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/ClientInterceptors$InterceptorChannel;->interceptor:Lio/grpc/ClientInterceptor;

    iget-object v1, p0, Lio/grpc/ClientInterceptors$InterceptorChannel;->channel:Lio/grpc/Channel;

    invoke-interface {v0, p1, p2, v1}, Lio/grpc/ClientInterceptor;->interceptCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Channel;)Lio/grpc/ClientCall;

    move-result-object p1

    return-object p1
.end method
