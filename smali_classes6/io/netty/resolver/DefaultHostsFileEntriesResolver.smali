.class public final Lio/netty/resolver/DefaultHostsFileEntriesResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/resolver/HostsFileEntriesResolver;


# static fields
.field private static final DEFAULT_REFRESH_INTERVAL:J

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final hostsFileParser:Lio/netty/resolver/HostsFileEntriesProvider$Parser;

.field private volatile inet4Entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile inet6Entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lastRefresh:Ljava/util/concurrent/atomic/AtomicLong;

.field private final refreshInterval:J


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-class v0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "io.netty.hostsFileRefreshInterval"

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lio/netty/util/internal/SystemPropertyUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->DEFAULT_REFRESH_INTERVAL:J

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "-Dio.netty.hostsFileRefreshInterval: {}"

    invoke-interface {v0, v2, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lio/netty/resolver/HostsFileEntriesProvider;->parser()Lio/netty/resolver/HostsFileEntriesProvider$Parser;

    move-result-object v0

    sget-wide v1, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->DEFAULT_REFRESH_INTERVAL:J

    invoke-direct {p0, v0, v1, v2}, Lio/netty/resolver/DefaultHostsFileEntriesResolver;-><init>(Lio/netty/resolver/HostsFileEntriesProvider$Parser;J)V

    return-void
.end method

.method public constructor <init>(Lio/netty/resolver/HostsFileEntriesProvider$Parser;J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->lastRefresh:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->hostsFileParser:Lio/netty/resolver/HostsFileEntriesProvider$Parser;

    const-string v0, "refreshInterval"

    invoke-static {p2, p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(JLjava/lang/String;)J

    move-result-wide p2

    iput-wide p2, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->refreshInterval:J

    invoke-static {p1}, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->parseEntries(Lio/netty/resolver/HostsFileEntriesProvider$Parser;)Lio/netty/resolver/HostsFileEntriesProvider;

    move-result-object p1

    invoke-virtual {p1}, Lio/netty/resolver/HostsFileEntriesProvider;->ipv4Entries()Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet4Entries:Ljava/util/Map;

    invoke-virtual {p1}, Lio/netty/resolver/HostsFileEntriesProvider;->ipv6Entries()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet6Entries:Ljava/util/Map;

    return-void
.end method

.method private static allAddresses(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method private ensureHostsFileEntriesAreFresh()V
    .locals 8

    iget-wide v0, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->refreshInterval:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->lastRefresh:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v6, v4, v2

    cmp-long v0, v6, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->lastRefresh:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->hostsFileParser:Lio/netty/resolver/HostsFileEntriesProvider$Parser;

    invoke-static {v0}, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->parseEntries(Lio/netty/resolver/HostsFileEntriesProvider$Parser;)Lio/netty/resolver/HostsFileEntriesProvider;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/resolver/HostsFileEntriesProvider;->ipv4Entries()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet4Entries:Ljava/util/Map;

    invoke-virtual {v0}, Lio/netty/resolver/HostsFileEntriesProvider;->ipv6Entries()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet6Entries:Ljava/util/Map;

    :cond_1
    return-void
.end method

.method private static firstAddress(Ljava/util/List;)Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Ljava/net/InetAddress;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/InetAddress;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static parseEntries(Lio/netty/resolver/HostsFileEntriesProvider$Parser;)Lio/netty/resolver/HostsFileEntriesProvider;
    .locals 3

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lio/netty/util/CharsetUtil;->UTF_16:Ljava/nio/charset/Charset;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    aput-object v2, v0, v1

    invoke-interface {p0, v0}, Lio/netty/resolver/HostsFileEntriesProvider$Parser;->parseSilently([Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntriesProvider;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lio/netty/resolver/HostsFileEntriesProvider$Parser;->parseSilently()Lio/netty/resolver/HostsFileEntriesProvider;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public address(Ljava/lang/String;Lio/netty/resolver/ResolvedAddressTypes;)Ljava/net/InetAddress;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->addresses(Ljava/lang/String;Lio/netty/resolver/ResolvedAddressTypes;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->firstAddress(Ljava/util/List;)Ljava/net/InetAddress;

    move-result-object p1

    return-object p1
.end method

.method public addresses(Ljava/lang/String;Lio/netty/resolver/ResolvedAddressTypes;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/netty/resolver/ResolvedAddressTypes;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->ensureHostsFileEntriesAreFresh()V

    sget-object v0, Lio/netty/resolver/DefaultHostsFileEntriesResolver$1;->$SwitchMap$io$netty$resolver$ResolvedAddressTypes:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object p2, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet6Entries:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet4Entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p2, p1}, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->allAddresses(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet4Entries:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :goto_0
    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown ResolvedAddressTypes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p2, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet4Entries:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet6Entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p2, p1}, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->allAddresses(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet6Entries:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :goto_1
    return-object p1

    :cond_4
    iget-object p2, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet6Entries:Ljava/util/Map;

    :goto_2
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_5
    iget-object p2, p0, Lio/netty/resolver/DefaultHostsFileEntriesResolver;->inet4Entries:Ljava/util/Map;

    goto :goto_2
.end method

.method public normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
