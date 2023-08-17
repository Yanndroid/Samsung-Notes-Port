.class public final Lio/netty/resolver/DefaultAddressResolverGroup;
.super Lio/netty/resolver/AddressResolverGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/resolver/AddressResolverGroup<",
        "Ljava/net/InetSocketAddress;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/netty/resolver/DefaultAddressResolverGroup;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/resolver/DefaultAddressResolverGroup;

    invoke-direct {v0}, Lio/netty/resolver/DefaultAddressResolverGroup;-><init>()V

    sput-object v0, Lio/netty/resolver/DefaultAddressResolverGroup;->INSTANCE:Lio/netty/resolver/DefaultAddressResolverGroup;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/netty/resolver/AddressResolverGroup;-><init>()V

    return-void
.end method


# virtual methods
.method public newResolver(Lio/netty/util/concurrent/EventExecutor;)Lio/netty/resolver/AddressResolver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutor;",
            ")",
            "Lio/netty/resolver/AddressResolver<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/netty/resolver/DefaultNameResolver;

    invoke-direct {v0, p1}, Lio/netty/resolver/DefaultNameResolver;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    invoke-virtual {v0}, Lio/netty/resolver/InetNameResolver;->asAddressResolver()Lio/netty/resolver/AddressResolver;

    move-result-object p1

    return-object p1
.end method
