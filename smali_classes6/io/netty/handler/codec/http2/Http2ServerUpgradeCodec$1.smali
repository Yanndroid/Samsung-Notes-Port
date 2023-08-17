.class Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec$1;
.super Lio/netty/handler/codec/http2/Http2FrameAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->decodeSettings(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http2/Http2Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;

.field public final synthetic val$decodedSettings:Lio/netty/handler/codec/http2/Http2Settings;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;Lio/netty/handler/codec/http2/Http2Settings;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec$1;->this$0:Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;

    iput-object p2, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec$1;->val$decodedSettings:Lio/netty/handler/codec/http2/Http2Settings;

    invoke-direct {p0}, Lio/netty/handler/codec/http2/Http2FrameAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingsRead(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Settings;)V
    .locals 0

    iget-object p1, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec$1;->val$decodedSettings:Lio/netty/handler/codec/http2/Http2Settings;

    invoke-virtual {p1, p2}, Lio/netty/handler/codec/http2/Http2Settings;->copyFrom(Lio/netty/handler/codec/http2/Http2Settings;)Lio/netty/handler/codec/http2/Http2Settings;

    return-void
.end method
