.class public abstract LcoeditObject/UploaderGrpc$UploaderImplBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/BindableService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditObject/UploaderGrpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UploaderImplBase"
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

    invoke-static {}, LcoeditObject/UploaderGrpc;->getServiceDescriptor()Lio/grpc/ServiceDescriptor;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/ServerServiceDefinition;->builder(Lio/grpc/ServiceDescriptor;)Lio/grpc/ServerServiceDefinition$Builder;

    move-result-object v0

    invoke-static {}, LcoeditObject/UploaderGrpc;->getGetObjectUploadUrlMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    new-instance v2, LcoeditObject/UploaderGrpc$MethodHandlers;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, LcoeditObject/UploaderGrpc$MethodHandlers;-><init>(LcoeditObject/UploaderGrpc$UploaderImplBase;I)V

    invoke-static {v2}, Lio/grpc/stub/ServerCalls;->asyncUnaryCall(Lio/grpc/stub/ServerCalls$UnaryMethod;)Lio/grpc/ServerCallHandler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/grpc/ServerServiceDefinition$Builder;->addMethod(Lio/grpc/MethodDescriptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerServiceDefinition$Builder;

    move-result-object v0

    invoke-static {}, LcoeditObject/UploaderGrpc;->getUploadStrokeMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    new-instance v2, LcoeditObject/UploaderGrpc$MethodHandlers;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, LcoeditObject/UploaderGrpc$MethodHandlers;-><init>(LcoeditObject/UploaderGrpc$UploaderImplBase;I)V

    invoke-static {v2}, Lio/grpc/stub/ServerCalls;->asyncClientStreamingCall(Lio/grpc/stub/ServerCalls$ClientStreamingMethod;)Lio/grpc/ServerCallHandler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/grpc/ServerServiceDefinition$Builder;->addMethod(Lio/grpc/MethodDescriptor;Lio/grpc/ServerCallHandler;)Lio/grpc/ServerServiceDefinition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ServerServiceDefinition$Builder;->build()Lio/grpc/ServerServiceDefinition;

    move-result-object v0

    return-object v0
.end method

.method public getObjectUploadUrl(LcoeditObjectMessage/ObjUploadUrlRequest;Lio/grpc/stub/StreamObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LcoeditObjectMessage/ObjUploadUrlRequest;",
            "Lio/grpc/stub/StreamObserver<",
            "LcoeditObjectMessage/ObjUploadUrlResponse;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, LcoeditObject/UploaderGrpc;->getGetObjectUploadUrlMethod()Lio/grpc/MethodDescriptor;

    move-result-object p1

    invoke-static {p1, p2}, Lio/grpc/stub/ServerCalls;->asyncUnimplementedUnaryCall(Lio/grpc/MethodDescriptor;Lio/grpc/stub/StreamObserver;)V

    return-void
.end method

.method public uploadStroke(Lio/grpc/stub/StreamObserver;)Lio/grpc/stub/StreamObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/stub/StreamObserver<",
            "LcoeditObjectMessage/UploadStrokeResponse;",
            ">;)",
            "Lio/grpc/stub/StreamObserver<",
            "LcoeditObjectMessage/UploadStrokeRequest;",
            ">;"
        }
    .end annotation

    invoke-static {}, LcoeditObject/UploaderGrpc;->getUploadStrokeMethod()Lio/grpc/MethodDescriptor;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/stub/ServerCalls;->asyncUnimplementedStreamingCall(Lio/grpc/MethodDescriptor;Lio/grpc/stub/StreamObserver;)Lio/grpc/stub/StreamObserver;

    move-result-object p1

    return-object p1
.end method
