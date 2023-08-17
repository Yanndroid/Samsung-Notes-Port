.class public abstract Lio/netty/handler/codec/http/DefaultHttpMessage;
.super Lio/netty/handler/codec/http/DefaultHttpObject;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http/HttpMessage;


# static fields
.field private static final HASH_CODE_PRIME:I = 0x1f


# instance fields
.field private final headers:Lio/netty/handler/codec/http/HttpHeaders;

.field private version:Lio/netty/handler/codec/http/HttpVersion;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http/HttpVersion;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/netty/handler/codec/http/DefaultHttpMessage;-><init>(Lio/netty/handler/codec/http/HttpVersion;ZZ)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpHeaders;)V
    .locals 1

    invoke-direct {p0}, Lio/netty/handler/codec/http/DefaultHttpObject;-><init>()V

    const-string v0, "version"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http/HttpVersion;

    iput-object p1, p0, Lio/netty/handler/codec/http/DefaultHttpMessage;->version:Lio/netty/handler/codec/http/HttpVersion;

    const-string p1, "headers"

    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http/HttpHeaders;

    iput-object p1, p0, Lio/netty/handler/codec/http/DefaultHttpMessage;->headers:Lio/netty/handler/codec/http/HttpHeaders;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/HttpVersion;ZZ)V
    .locals 0

    if-eqz p3, :cond_0

    new-instance p3, Lio/netty/handler/codec/http/CombinedHttpHeaders;

    invoke-direct {p3, p2}, Lio/netty/handler/codec/http/CombinedHttpHeaders;-><init>(Z)V

    goto :goto_0

    :cond_0
    new-instance p3, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    invoke-direct {p3, p2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;-><init>(Z)V

    :goto_0
    invoke-direct {p0, p1, p3}, Lio/netty/handler/codec/http/DefaultHttpMessage;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpHeaders;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lio/netty/handler/codec/http/DefaultHttpMessage;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http/DefaultHttpMessage;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultHttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {v0}, Lio/netty/handler/codec/http/DefaultHttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultHttpMessage;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v2

    invoke-virtual {v0}, Lio/netty/handler/codec/http/DefaultHttpMessage;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/netty/handler/codec/http/HttpVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpObject;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getProtocolVersion()Lio/netty/handler/codec/http/HttpVersion;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultHttpMessage;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpMessage;->headers:Lio/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lio/netty/handler/codec/http/DefaultHttpMessage;->version:Lio/netty/handler/codec/http/HttpVersion;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpVersion;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-super {p0}, Lio/netty/handler/codec/http/DefaultHttpObject;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public headers()Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpMessage;->headers:Lio/netty/handler/codec/http/HttpHeaders;

    return-object v0
.end method

.method public protocolVersion()Lio/netty/handler/codec/http/HttpVersion;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpMessage;->version:Lio/netty/handler/codec/http/HttpVersion;

    return-object v0
.end method

.method public setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/HttpMessage;
    .locals 1

    const-string v0, "version"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http/HttpVersion;

    iput-object p1, p0, Lio/netty/handler/codec/http/DefaultHttpMessage;->version:Lio/netty/handler/codec/http/HttpVersion;

    return-object p0
.end method
