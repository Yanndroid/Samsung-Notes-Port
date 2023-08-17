.class public abstract LcoeditOt/TransformerGrpc$TransformerImplBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/BindableService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditOt/TransformerGrpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TransformerImplBase"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bindService()Lio/grpc/ServerServiceDefinition;
    .locals 4

    invoke-static {}, LcoeditOt/TransformerGrpc;->getServiceDescriptor()Lio/grpc/ServiceDescriptor;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/ServerServiceDefinition;->builder(Lio/grpc/ServiceDescriptor;)Lio/grpc/ServerServiceDefinition$Builder;

    move-result-object v0

    invoke-static {}, LcoeditOt/TransformerGrpc;->getTransformMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    new-instance v2, LcoeditOt/TransformerGrpc$MethodHandlers;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, LcoeditOt/TransformerGrpc$MethodHandlers;-><init>(LcoeditOt/TransformerGrpc$TransformerImplBase;I)V

    invoke-static {v2}, Lio/grpc/stub/ServerCalls;->asyncUnaryCall(Lio/grpc/stub/ServerCalls$UnaryMethod;)Lio/grpc/ServerCallHandler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/grpc/ServerServiceDefinition$Builder;->addMethod(Lio/grpc/MethodDescriptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerServiceDefinition$Builder;

    move-result-object v0

    invoke-static {}, LcoeditOt/TransformerGrpc;->getMultipleTransformMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    new-instance v2, LcoeditOt/TransformerGrpc$MethodHandlers;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, LcoeditOt/TransformerGrpc$MethodHandlers;-><init>(LcoeditOt/TransformerGrpc$TransformerImplBase;I)V

    invoke-static {v2}, Lio/grpc/stub/ServerCalls;->asyncUnaryCall(Lio/grpc/stub/ServerCalls$UnaryMethod;)Lio/grpc/ServerCallHandler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/grpc/ServerServiceDefinition$Builder;->addMethod(Lio/grpc/MethodDescriptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerServiceDefinition$Builder;

    move-result-object v0

    invoke-static {}, LcoeditOt/TransformerGrpc;->getTransformWithMultipleMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    new-instance v2, LcoeditOt/TransformerGrpc$MethodHandlers;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, LcoeditOt/TransformerGrpc$MethodHandlers;-><init>(LcoeditOt/TransformerGrpc$TransformerImplBase;I)V

    invoke-static {v2}, Lio/grpc/stub/ServerCalls;->asyncUnaryCall(Lio/grpc/stub/ServerCalls$UnaryMethod;)Lio/grpc/ServerCallHandler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/grpc/ServerServiceDefinition$Builder;->addMethod(Lio/grpc/MethodDescriptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerServiceDefinition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ServerServiceDefinition$Builder;->build()Lio/grpc/ServerServiceDefinition;

    move-result-object v0

    return-object v0
.end method

.method public multipleTransform(LcoeditOtMessage/MultipleTransformRequest;Lio/grpc/stub/StreamObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LcoeditOtMessage/MultipleTransformRequest;",
            "Lio/grpc/stub/StreamObserver<",
            "LcoeditOtMessage/MultipleTransformResponse;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, LcoeditOt/TransformerGrpc;->getMultipleTransformMethod()Lio/grpc/MethodDescriptor;

    move-result-object p1

    invoke-static {p1, p2}, Lio/grpc/stub/ServerCalls;->asyncUnimplementedUnaryCall(Lio/grpc/MethodDescriptor;Lio/grpc/stub/StreamObserver;)V

    return-void
.end method

.method public transform(LcoeditOtMessage/TransformRequest;Lio/grpc/stub/StreamObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LcoeditOtMessage/TransformRequest;",
            "Lio/grpc/stub/StreamObserver<",
            "LcoeditOtMessage/TransformResponse;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, LcoeditOt/TransformerGrpc;->getTransformMethod()Lio/grpc/MethodDescriptor;

    move-result-object p1

    invoke-static {p1, p2}, Lio/grpc/stub/ServerCalls;->asyncUnimplementedUnaryCall(Lio/grpc/MethodDescriptor;Lio/grpc/stub/StreamObserver;)V

    return-void
.end method

.method public transformWithMultiple(LcoeditOtMessage/TransformWithMultipleRequest;Lio/grpc/stub/StreamObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LcoeditOtMessage/TransformWithMultipleRequest;",
            "Lio/grpc/stub/StreamObserver<",
            "LcoeditOtMessage/TransformWithMultipleResponse;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, LcoeditOt/TransformerGrpc;->getTransformWithMultipleMethod()Lio/grpc/MethodDescriptor;

    move-result-object p1

    invoke-static {p1, p2}, Lio/grpc/stub/ServerCalls;->asyncUnimplementedUnaryCall(Lio/grpc/MethodDescriptor;Lio/grpc/stub/StreamObserver;)V

    return-void
.end method
