.class public final Lio/grpc/ClientStreamTracer$StreamInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/ClientStreamTracer$StreamInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private callOptions:Lio/grpc/CallOptions;

.field private isTransparentRetry:Z

.field private previousAttempts:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lio/grpc/CallOptions;->DEFAULT:Lio/grpc/CallOptions;

    iput-object v0, p0, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;->callOptions:Lio/grpc/CallOptions;

    return-void
.end method


# virtual methods
.method public build()Lio/grpc/ClientStreamTracer$StreamInfo;
    .locals 4

    new-instance v0, Lio/grpc/ClientStreamTracer$StreamInfo;

    iget-object v1, p0, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;->callOptions:Lio/grpc/CallOptions;

    iget v2, p0, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;->previousAttempts:I

    iget-boolean v3, p0, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;->isTransparentRetry:Z

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/ClientStreamTracer$StreamInfo;-><init>(Lio/grpc/CallOptions;IZ)V

    return-object v0
.end method

.method public setCallOptions(Lio/grpc/CallOptions;)Lio/grpc/ClientStreamTracer$StreamInfo$Builder;
    .locals 1

    const-string v0, "callOptions cannot be null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/CallOptions;

    iput-object p1, p0, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;->callOptions:Lio/grpc/CallOptions;

    return-object p0
.end method

.method public setIsTransparentRetry(Z)Lio/grpc/ClientStreamTracer$StreamInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;->isTransparentRetry:Z

    return-object p0
.end method

.method public setPreviousAttempts(I)Lio/grpc/ClientStreamTracer$StreamInfo$Builder;
    .locals 0

    iput p1, p0, Lio/grpc/ClientStreamTracer$StreamInfo$Builder;->previousAttempts:I

    return-object p0
.end method
