.class public interface abstract Lio/netty/handler/codec/http2/Http2SettingsAckFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2Frame;


# static fields
.field public static final INSTANCE:Lio/netty/handler/codec/http2/Http2SettingsAckFrame;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2SettingsAckFrame;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/DefaultHttp2SettingsAckFrame;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http2/Http2SettingsAckFrame;->INSTANCE:Lio/netty/handler/codec/http2/Http2SettingsAckFrame;

    return-void
.end method


# virtual methods
.method public abstract name()Ljava/lang/String;
.end method
