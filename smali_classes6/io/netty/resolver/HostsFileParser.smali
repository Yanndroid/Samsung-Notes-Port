.class public final Lio/netty/resolver/HostsFileParser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hostsFileEntries(Lio/netty/resolver/HostsFileEntriesProvider;)Lio/netty/resolver/HostsFileEntries;
    .locals 2

    sget-object v0, Lio/netty/resolver/HostsFileEntriesProvider;->EMPTY:Lio/netty/resolver/HostsFileEntriesProvider;

    if-ne p0, v0, :cond_0

    sget-object p0, Lio/netty/resolver/HostsFileEntries;->EMPTY:Lio/netty/resolver/HostsFileEntries;

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/resolver/HostsFileEntries;

    invoke-virtual {p0}, Lio/netty/resolver/HostsFileEntriesProvider;->ipv4Entries()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lio/netty/resolver/HostsFileParser;->toMapWithSingleValue(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/resolver/HostsFileEntriesProvider;->ipv6Entries()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lio/netty/resolver/HostsFileParser;->toMapWithSingleValue(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lio/netty/resolver/HostsFileEntries;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static parse()Lio/netty/resolver/HostsFileEntries;
    .locals 1

    invoke-static {}, Lio/netty/resolver/HostsFileEntriesProvider;->parser()Lio/netty/resolver/HostsFileEntriesProvider$Parser;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/resolver/HostsFileEntriesProvider$Parser;->parse()Lio/netty/resolver/HostsFileEntriesProvider;

    move-result-object v0

    invoke-static {v0}, Lio/netty/resolver/HostsFileParser;->hostsFileEntries(Lio/netty/resolver/HostsFileEntriesProvider;)Lio/netty/resolver/HostsFileEntries;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/File;)Lio/netty/resolver/HostsFileEntries;
    .locals 2

    invoke-static {}, Lio/netty/resolver/HostsFileEntriesProvider;->parser()Lio/netty/resolver/HostsFileEntriesProvider$Parser;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/charset/Charset;

    invoke-interface {v0, p0, v1}, Lio/netty/resolver/HostsFileEntriesProvider$Parser;->parse(Ljava/io/File;[Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntriesProvider;

    move-result-object p0

    invoke-static {p0}, Lio/netty/resolver/HostsFileParser;->hostsFileEntries(Lio/netty/resolver/HostsFileEntriesProvider;)Lio/netty/resolver/HostsFileEntries;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parse(Ljava/io/File;[Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntries;
    .locals 1

    invoke-static {}, Lio/netty/resolver/HostsFileEntriesProvider;->parser()Lio/netty/resolver/HostsFileEntriesProvider$Parser;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/netty/resolver/HostsFileEntriesProvider$Parser;->parse(Ljava/io/File;[Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntriesProvider;

    move-result-object p0

    invoke-static {p0}, Lio/netty/resolver/HostsFileParser;->hostsFileEntries(Lio/netty/resolver/HostsFileEntriesProvider;)Lio/netty/resolver/HostsFileEntries;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/io/Reader;)Lio/netty/resolver/HostsFileEntries;
    .locals 1

    invoke-static {}, Lio/netty/resolver/HostsFileEntriesProvider;->parser()Lio/netty/resolver/HostsFileEntriesProvider$Parser;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/resolver/HostsFileEntriesProvider$Parser;->parse(Ljava/io/Reader;)Lio/netty/resolver/HostsFileEntriesProvider;

    move-result-object p0

    invoke-static {p0}, Lio/netty/resolver/HostsFileParser;->hostsFileEntries(Lio/netty/resolver/HostsFileEntriesProvider;)Lio/netty/resolver/HostsFileEntries;

    move-result-object p0

    return-object p0
.end method

.method public static parseSilently()Lio/netty/resolver/HostsFileEntries;
    .locals 1

    invoke-static {}, Lio/netty/resolver/HostsFileEntriesProvider;->parser()Lio/netty/resolver/HostsFileEntriesProvider$Parser;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/resolver/HostsFileEntriesProvider$Parser;->parseSilently()Lio/netty/resolver/HostsFileEntriesProvider;

    move-result-object v0

    invoke-static {v0}, Lio/netty/resolver/HostsFileParser;->hostsFileEntries(Lio/netty/resolver/HostsFileEntriesProvider;)Lio/netty/resolver/HostsFileEntries;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseSilently([Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntries;
    .locals 1

    invoke-static {}, Lio/netty/resolver/HostsFileEntriesProvider;->parser()Lio/netty/resolver/HostsFileEntriesProvider$Parser;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/resolver/HostsFileEntriesProvider$Parser;->parseSilently([Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntriesProvider;

    move-result-object p0

    invoke-static {p0}, Lio/netty/resolver/HostsFileParser;->hostsFileEntries(Lio/netty/resolver/HostsFileEntriesProvider;)Lio/netty/resolver/HostsFileEntries;

    move-result-object p0

    return-object p0
.end method

.method private static toMapWithSingleValue(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method
