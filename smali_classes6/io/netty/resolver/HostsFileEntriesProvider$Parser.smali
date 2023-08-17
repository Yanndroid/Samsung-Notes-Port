.class public interface abstract Lio/netty/resolver/HostsFileEntriesProvider$Parser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/resolver/HostsFileEntriesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Parser"
.end annotation


# virtual methods
.method public abstract parse()Lio/netty/resolver/HostsFileEntriesProvider;
.end method

.method public varargs abstract parse(Ljava/io/File;[Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntriesProvider;
.end method

.method public abstract parse(Ljava/io/Reader;)Lio/netty/resolver/HostsFileEntriesProvider;
.end method

.method public varargs abstract parse([Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntriesProvider;
.end method

.method public abstract parseSilently()Lio/netty/resolver/HostsFileEntriesProvider;
.end method

.method public varargs abstract parseSilently(Ljava/io/File;[Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntriesProvider;
.end method

.method public varargs abstract parseSilently([Ljava/nio/charset/Charset;)Lio/netty/resolver/HostsFileEntriesProvider;
.end method
