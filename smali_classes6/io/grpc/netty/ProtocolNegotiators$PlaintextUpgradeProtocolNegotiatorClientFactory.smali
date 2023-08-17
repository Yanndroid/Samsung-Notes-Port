.class final Lio/grpc/netty/ProtocolNegotiators$PlaintextUpgradeProtocolNegotiatorClientFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/ProtocolNegotiator$ClientFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/ProtocolNegotiators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaintextUpgradeProtocolNegotiatorClientFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/netty/ProtocolNegotiators$1;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/ProtocolNegotiators$PlaintextUpgradeProtocolNegotiatorClientFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultPort()I
    .locals 1

    const/16 v0, 0x50

    return v0
.end method

.method public newNegotiator()Lio/grpc/netty/ProtocolNegotiator;
    .locals 1

    invoke-static {}, Lio/grpc/netty/ProtocolNegotiators;->plaintextUpgrade()Lio/grpc/netty/ProtocolNegotiator;

    move-result-object v0

    return-object v0
.end method
