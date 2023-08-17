.class Lio/grpc/internal/ManagedChannelImplBuilder$DirectAddressNameResolverFactory;
.super Lio/grpc/NameResolver$Factory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImplBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirectAddressNameResolverFactory"
.end annotation


# instance fields
.field public final address:Ljava/net/SocketAddress;

.field public final authority:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/SocketAddress;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/NameResolver$Factory;-><init>()V

    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder$DirectAddressNameResolverFactory;->address:Ljava/net/SocketAddress;

    iput-object p2, p0, Lio/grpc/internal/ManagedChannelImplBuilder$DirectAddressNameResolverFactory;->authority:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDefaultScheme()Ljava/lang/String;
    .locals 1

    const-string v0, "directaddress"

    return-object v0
.end method

.method public newNameResolver(Ljava/net/URI;Lio/grpc/NameResolver$Args;)Lio/grpc/NameResolver;
    .locals 0

    new-instance p1, Lio/grpc/internal/ManagedChannelImplBuilder$DirectAddressNameResolverFactory$1;

    invoke-direct {p1, p0}, Lio/grpc/internal/ManagedChannelImplBuilder$DirectAddressNameResolverFactory$1;-><init>(Lio/grpc/internal/ManagedChannelImplBuilder$DirectAddressNameResolverFactory;)V

    return-object p1
.end method
