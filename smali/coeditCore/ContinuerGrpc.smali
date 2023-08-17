.class public final LcoeditCore/ContinuerGrpc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditCore/ContinuerGrpc$MethodHandlers;,
        LcoeditCore/ContinuerGrpc$ContinuerFutureStub;,
        LcoeditCore/ContinuerGrpc$ContinuerBlockingStub;,
        LcoeditCore/ContinuerGrpc$ContinuerStub;,
        LcoeditCore/ContinuerGrpc$ContinuerImplBase;
    }
.end annotation

.annotation build Lio/grpc/stub/annotations/GrpcGenerated;
.end annotation


# static fields
.field private static final METHODID_CONTINUOUS_MESSAGE:I = 0x0

.field public static final SERVICE_NAME:Ljava/lang/String; = "coeditCore.Continuer"

.field private static volatile getContinuousMessageMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "LcoeditCoreMessage/ClientMsg;",
            "LcoeditCoreMessage/ServerMsg;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile serviceDescriptor:Lio/grpc/ServiceDescriptor;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContinuousMessageMethod()Lio/grpc/MethodDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "LcoeditCoreMessage/ClientMsg;",
            "LcoeditCoreMessage/ServerMsg;",
            ">;"
        }
    .end annotation

    .annotation build Lio/grpc/stub/annotations/RpcMethod;
        fullMethodName = "coeditCore.Continuer/ContinuousMessage"
        methodType = .enum Lio/grpc/MethodDescriptor$MethodType;->BIDI_STREAMING:Lio/grpc/MethodDescriptor$MethodType;
        requestType = LcoeditCoreMessage/ClientMsg;
        responseType = LcoeditCoreMessage/ServerMsg;
    .end annotation

    sget-object v0, LcoeditCore/ContinuerGrpc;->getContinuousMessageMethod:Lio/grpc/MethodDescriptor;

    if-nez v0, :cond_1

    const-class v1, LcoeditCore/ContinuerGrpc;

    monitor-enter v1

    :try_start_0
    sget-object v0, LcoeditCore/ContinuerGrpc;->getContinuousMessageMethod:Lio/grpc/MethodDescriptor;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    sget-object v2, Lio/grpc/MethodDescriptor$MethodType;->BIDI_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    const-string v2, "coeditCore.Continuer"

    const-string v3, "ContinuousMessage"

    invoke-static {v2, v3}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    invoke-static {}, LcoeditCoreMessage/ClientMsg;->getDefaultInstance()LcoeditCoreMessage/ClientMsg;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    invoke-static {}, LcoeditCoreMessage/ServerMsg;->getDefaultInstance()LcoeditCoreMessage/ServerMsg;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v0

    sput-object v0, LcoeditCore/ContinuerGrpc;->getContinuousMessageMethod:Lio/grpc/MethodDescriptor;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getServiceDescriptor()Lio/grpc/ServiceDescriptor;
    .locals 3

    sget-object v0, LcoeditCore/ContinuerGrpc;->serviceDescriptor:Lio/grpc/ServiceDescriptor;

    if-nez v0, :cond_1

    const-class v1, LcoeditCore/ContinuerGrpc;

    monitor-enter v1

    :try_start_0
    sget-object v0, LcoeditCore/ContinuerGrpc;->serviceDescriptor:Lio/grpc/ServiceDescriptor;

    if-nez v0, :cond_0

    const-string v0, "coeditCore.Continuer"

    invoke-static {v0}, Lio/grpc/ServiceDescriptor;->newBuilder(Ljava/lang/String;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v0

    invoke-static {}, LcoeditCore/ContinuerGrpc;->getContinuousMessageMethod()Lio/grpc/MethodDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ServiceDescriptor$Builder;->build()Lio/grpc/ServiceDescriptor;

    move-result-object v0

    sput-object v0, LcoeditCore/ContinuerGrpc;->serviceDescriptor:Lio/grpc/ServiceDescriptor;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static newBlockingStub(Lio/grpc/Channel;)LcoeditCore/ContinuerGrpc$ContinuerBlockingStub;
    .locals 1

    new-instance v0, LcoeditCore/ContinuerGrpc$2;

    invoke-direct {v0}, LcoeditCore/ContinuerGrpc$2;-><init>()V

    invoke-static {v0, p0}, Lio/grpc/stub/AbstractBlockingStub;->newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;

    move-result-object p0

    check-cast p0, LcoeditCore/ContinuerGrpc$ContinuerBlockingStub;

    return-object p0
.end method

.method public static newFutureStub(Lio/grpc/Channel;)LcoeditCore/ContinuerGrpc$ContinuerFutureStub;
    .locals 1

    new-instance v0, LcoeditCore/ContinuerGrpc$3;

    invoke-direct {v0}, LcoeditCore/ContinuerGrpc$3;-><init>()V

    invoke-static {v0, p0}, Lio/grpc/stub/AbstractFutureStub;->newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;

    move-result-object p0

    check-cast p0, LcoeditCore/ContinuerGrpc$ContinuerFutureStub;

    return-object p0
.end method

.method public static newStub(Lio/grpc/Channel;)LcoeditCore/ContinuerGrpc$ContinuerStub;
    .locals 1

    new-instance v0, LcoeditCore/ContinuerGrpc$1;

    invoke-direct {v0}, LcoeditCore/ContinuerGrpc$1;-><init>()V

    invoke-static {v0, p0}, Lio/grpc/stub/AbstractAsyncStub;->newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;

    move-result-object p0

    check-cast p0, LcoeditCore/ContinuerGrpc$ContinuerStub;

    return-object p0
.end method
