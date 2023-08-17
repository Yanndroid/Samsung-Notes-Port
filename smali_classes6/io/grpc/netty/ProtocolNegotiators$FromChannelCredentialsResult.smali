.class public final Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/ProtocolNegotiators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FromChannelCredentialsResult"
.end annotation


# instance fields
.field public final callCredentials:Lio/grpc/CallCredentials;

.field public final error:Ljava/lang/String;

.field public final negotiator:Lio/grpc/netty/ProtocolNegotiator$ClientFactory;


# direct methods
.method private constructor <init>(Lio/grpc/netty/ProtocolNegotiator$ClientFactory;Lio/grpc/CallCredentials;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;->negotiator:Lio/grpc/netty/ProtocolNegotiator$ClientFactory;

    iput-object p2, p0, Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;->callCredentials:Lio/grpc/CallCredentials;

    iput-object p3, p0, Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;->error:Ljava/lang/String;

    return-void
.end method

.method public static error(Ljava/lang/String;)Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;
    .locals 2

    new-instance v0, Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;

    const-string v1, "error"

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0}, Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;-><init>(Lio/grpc/netty/ProtocolNegotiator$ClientFactory;Lio/grpc/CallCredentials;Ljava/lang/String;)V

    return-object v0
.end method

.method public static negotiator(Lio/grpc/netty/ProtocolNegotiator$ClientFactory;)Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;
    .locals 2

    new-instance v0, Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;

    const-string v1, "factory"

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/netty/ProtocolNegotiator$ClientFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;-><init>(Lio/grpc/netty/ProtocolNegotiator$ClientFactory;Lio/grpc/CallCredentials;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public withCallCredentials(Lio/grpc/CallCredentials;)Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;
    .locals 3

    const-string v0, "callCreds"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;->error:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;->callCredentials:Lio/grpc/CallCredentials;

    if-eqz v0, :cond_1

    new-instance v1, Lio/grpc/CompositeCallCredentials;

    invoke-direct {v1, v0, p1}, Lio/grpc/CompositeCallCredentials;-><init>(Lio/grpc/CallCredentials;Lio/grpc/CallCredentials;)V

    move-object p1, v1

    :cond_1
    new-instance v0, Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;

    iget-object v1, p0, Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;->negotiator:Lio/grpc/netty/ProtocolNegotiator$ClientFactory;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lio/grpc/netty/ProtocolNegotiators$FromChannelCredentialsResult;-><init>(Lio/grpc/netty/ProtocolNegotiator$ClientFactory;Lio/grpc/CallCredentials;Ljava/lang/String;)V

    return-object v0
.end method
