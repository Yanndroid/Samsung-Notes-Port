.class final Lio/netty/util/NetUtilInitializations$NetworkIfaceAndInetAddress;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/NetUtilInitializations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkIfaceAndInetAddress"
.end annotation


# instance fields
.field private final address:Ljava/net/InetAddress;

.field private final iface:Ljava/net/NetworkInterface;


# direct methods
.method public constructor <init>(Ljava/net/NetworkInterface;Ljava/net/InetAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/netty/util/NetUtilInitializations$NetworkIfaceAndInetAddress;->iface:Ljava/net/NetworkInterface;

    iput-object p2, p0, Lio/netty/util/NetUtilInitializations$NetworkIfaceAndInetAddress;->address:Ljava/net/InetAddress;

    return-void
.end method


# virtual methods
.method public address()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lio/netty/util/NetUtilInitializations$NetworkIfaceAndInetAddress;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public iface()Ljava/net/NetworkInterface;
    .locals 1

    iget-object v0, p0, Lio/netty/util/NetUtilInitializations$NetworkIfaceAndInetAddress;->iface:Ljava/net/NetworkInterface;

    return-object v0
.end method
