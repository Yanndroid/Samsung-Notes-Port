.class public final Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/ProtocolNegotiators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FromServerCredentialsResult"
.end annotation


# instance fields
.field public final error:Ljava/lang/String;

.field public final negotiator:Lio/grpc/netty/ProtocolNegotiator$ServerFactory;


# direct methods
.method private constructor <init>(Lio/grpc/netty/ProtocolNegotiator$ServerFactory;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;->negotiator:Lio/grpc/netty/ProtocolNegotiator$ServerFactory;

    iput-object p2, p0, Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;->error:Ljava/lang/String;

    return-void
.end method

.method public static error(Ljava/lang/String;)Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;
    .locals 2

    new-instance v0, Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;

    const-string v1, "error"

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;-><init>(Lio/grpc/netty/ProtocolNegotiator$ServerFactory;Ljava/lang/String;)V

    return-object v0
.end method

.method public static negotiator(Lio/grpc/netty/ProtocolNegotiator$ServerFactory;)Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;
    .locals 2

    new-instance v0, Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;

    const-string v1, "factory"

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/netty/ProtocolNegotiator$ServerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/netty/ProtocolNegotiators$FromServerCredentialsResult;-><init>(Lio/grpc/netty/ProtocolNegotiator$ServerFactory;Ljava/lang/String;)V

    return-object v0
.end method
