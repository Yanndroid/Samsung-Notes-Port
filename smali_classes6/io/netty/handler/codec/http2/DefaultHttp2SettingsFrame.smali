.class public Lio/netty/handler/codec/http2/DefaultHttp2SettingsFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2SettingsFrame;


# instance fields
.field private final settings:Lio/netty/handler/codec/http2/Http2Settings;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Settings;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "settings"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/handler/codec/http2/Http2Settings;

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2SettingsFrame;->settings:Lio/netty/handler/codec/http2/Http2Settings;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lio/netty/handler/codec/http2/Http2SettingsFrame;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lio/netty/handler/codec/http2/Http2SettingsFrame;

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2SettingsFrame;->settings:Lio/netty/handler/codec/http2/Http2Settings;

    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2SettingsFrame;->settings()Lio/netty/handler/codec/http2/Http2Settings;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/netty/util/collection/CharObjectHashMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2SettingsFrame;->settings:Lio/netty/handler/codec/http2/Http2Settings;

    invoke-virtual {v0}, Lio/netty/util/collection/CharObjectHashMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string v0, "SETTINGS"

    return-object v0
.end method

.method public settings()Lio/netty/handler/codec/http2/Http2Settings;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2SettingsFrame;->settings:Lio/netty/handler/codec/http2/Http2Settings;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(settings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2SettingsFrame;->settings:Lio/netty/handler/codec/http2/Http2Settings;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
