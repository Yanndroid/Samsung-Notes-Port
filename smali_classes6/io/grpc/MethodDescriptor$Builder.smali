.class public final Lio/grpc/MethodDescriptor$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/MethodDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private fullMethodName:Ljava/lang/String;

.field private idempotent:Z

.field private requestMarshaller:Lio/grpc/MethodDescriptor$Marshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor$Marshaller<",
            "TReqT;>;"
        }
    .end annotation
.end field

.field private responseMarshaller:Lio/grpc/MethodDescriptor$Marshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor$Marshaller<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field private safe:Z

.field private sampledToLocalTracing:Z

.field private schemaDescriptor:Ljava/lang/Object;

.field private type:Lio/grpc/MethodDescriptor$MethodType;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/MethodDescriptor$1;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/MethodDescriptor$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/grpc/MethodDescriptor;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    new-instance v10, Lio/grpc/MethodDescriptor;

    iget-object v1, p0, Lio/grpc/MethodDescriptor$Builder;->type:Lio/grpc/MethodDescriptor$MethodType;

    iget-object v2, p0, Lio/grpc/MethodDescriptor$Builder;->fullMethodName:Ljava/lang/String;

    iget-object v3, p0, Lio/grpc/MethodDescriptor$Builder;->requestMarshaller:Lio/grpc/MethodDescriptor$Marshaller;

    iget-object v4, p0, Lio/grpc/MethodDescriptor$Builder;->responseMarshaller:Lio/grpc/MethodDescriptor$Marshaller;

    iget-object v5, p0, Lio/grpc/MethodDescriptor$Builder;->schemaDescriptor:Ljava/lang/Object;

    iget-boolean v6, p0, Lio/grpc/MethodDescriptor$Builder;->idempotent:Z

    iget-boolean v7, p0, Lio/grpc/MethodDescriptor$Builder;->safe:Z

    iget-boolean v8, p0, Lio/grpc/MethodDescriptor$Builder;->sampledToLocalTracing:Z

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/grpc/MethodDescriptor;-><init>(Lio/grpc/MethodDescriptor$MethodType;Ljava/lang/String;Lio/grpc/MethodDescriptor$Marshaller;Lio/grpc/MethodDescriptor$Marshaller;Ljava/lang/Object;ZZZLio/grpc/MethodDescriptor$1;)V

    return-object v10
.end method

.method public setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/MethodDescriptor$Builder<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/MethodDescriptor$Builder;->fullMethodName:Ljava/lang/String;

    return-object p0
.end method

.method public setIdempotent(Z)Lio/grpc/MethodDescriptor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/grpc/MethodDescriptor$Builder<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lio/grpc/MethodDescriptor$Builder;->idempotent:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/grpc/MethodDescriptor$Builder;->safe:Z

    :cond_0
    return-object p0
.end method

.method public setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor$Marshaller<",
            "TReqT;>;)",
            "Lio/grpc/MethodDescriptor$Builder<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/MethodDescriptor$Builder;->requestMarshaller:Lio/grpc/MethodDescriptor$Marshaller;

    return-object p0
.end method

.method public setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor$Marshaller<",
            "TRespT;>;)",
            "Lio/grpc/MethodDescriptor$Builder<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/MethodDescriptor$Builder;->responseMarshaller:Lio/grpc/MethodDescriptor$Marshaller;

    return-object p0
.end method

.method public setSafe(Z)Lio/grpc/MethodDescriptor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/grpc/MethodDescriptor$Builder<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lio/grpc/MethodDescriptor$Builder;->safe:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/grpc/MethodDescriptor$Builder;->idempotent:Z

    :cond_0
    return-object p0
.end method

.method public setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/grpc/MethodDescriptor$Builder<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lio/grpc/MethodDescriptor$Builder;->sampledToLocalTracing:Z

    return-object p0
.end method

.method public setSchemaDescriptor(Ljava/lang/Object;)Lio/grpc/MethodDescriptor$Builder;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/grpc/MethodDescriptor$Builder<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/MethodDescriptor$Builder;->schemaDescriptor:Ljava/lang/Object;

    return-object p0
.end method

.method public setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor$MethodType;",
            ")",
            "Lio/grpc/MethodDescriptor$Builder<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/MethodDescriptor$Builder;->type:Lio/grpc/MethodDescriptor$MethodType;

    return-object p0
.end method
