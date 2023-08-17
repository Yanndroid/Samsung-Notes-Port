.class final Lio/netty/handler/ipfilter/IpSubnetFilterRuleComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/netty/handler/ipfilter/IpSubnetFilterRuleComparator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/handler/ipfilter/IpSubnetFilterRuleComparator;

    invoke-direct {v0}, Lio/netty/handler/ipfilter/IpSubnetFilterRuleComparator;-><init>()V

    sput-object v0, Lio/netty/handler/ipfilter/IpSubnetFilterRuleComparator;->INSTANCE:Lio/netty/handler/ipfilter/IpSubnetFilterRuleComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lio/netty/handler/ipfilter/IpSubnetFilterRule;

    check-cast p2, Ljava/net/InetSocketAddress;

    invoke-virtual {p1, p2}, Lio/netty/handler/ipfilter/IpSubnetFilterRule;->compareTo(Ljava/net/InetSocketAddress;)I

    move-result p1

    return p1
.end method
