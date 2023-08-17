.class final Lio/netty/util/NetUtilSubstitutions$NetUtilLocalhostLazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/NetUtilSubstitutions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetUtilLocalhostLazyHolder"
.end annotation


# static fields
.field private static final LOCALHOST:Ljava/net/InetAddress;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lio/netty/util/NetUtilSubstitutions$NetUtilLocalhost4LazyHolder;->access$000()Ljava/net/Inet4Address;

    move-result-object v0

    invoke-static {}, Lio/netty/util/NetUtilSubstitutions$NetUtilLocalhost6LazyHolder;->access$100()Ljava/net/Inet6Address;

    move-result-object v1

    invoke-static {v0, v1}, Lio/netty/util/NetUtilInitializations;->determineLoopback(Ljava/net/Inet4Address;Ljava/net/Inet6Address;)Lio/netty/util/NetUtilInitializations$NetworkIfaceAndInetAddress;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/NetUtilInitializations$NetworkIfaceAndInetAddress;->address()Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lio/netty/util/NetUtilSubstitutions$NetUtilLocalhostLazyHolder;->LOCALHOST:Ljava/net/InetAddress;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$200()Ljava/net/InetAddress;
    .locals 1

    sget-object v0, Lio/netty/util/NetUtilSubstitutions$NetUtilLocalhostLazyHolder;->LOCALHOST:Ljava/net/InetAddress;

    return-object v0
.end method
