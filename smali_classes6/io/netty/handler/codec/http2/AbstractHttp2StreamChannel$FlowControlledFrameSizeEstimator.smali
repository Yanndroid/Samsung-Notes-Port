.class final Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$FlowControlledFrameSizeEstimator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/MessageSizeEstimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlowControlledFrameSizeEstimator"
.end annotation


# static fields
.field private static final HANDLE_INSTANCE:Lio/netty/channel/MessageSizeEstimator$Handle;

.field public static final INSTANCE:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$FlowControlledFrameSizeEstimator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$FlowControlledFrameSizeEstimator;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$FlowControlledFrameSizeEstimator;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$FlowControlledFrameSizeEstimator;->INSTANCE:Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$FlowControlledFrameSizeEstimator;

    new-instance v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$FlowControlledFrameSizeEstimator$1;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$FlowControlledFrameSizeEstimator$1;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$FlowControlledFrameSizeEstimator;->HANDLE_INSTANCE:Lio/netty/channel/MessageSizeEstimator$Handle;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$1900()Lio/netty/channel/MessageSizeEstimator$Handle;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$FlowControlledFrameSizeEstimator;->HANDLE_INSTANCE:Lio/netty/channel/MessageSizeEstimator$Handle;

    return-object v0
.end method


# virtual methods
.method public newHandle()Lio/netty/channel/MessageSizeEstimator$Handle;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/AbstractHttp2StreamChannel$FlowControlledFrameSizeEstimator;->HANDLE_INSTANCE:Lio/netty/channel/MessageSizeEstimator$Handle;

    return-object v0
.end method
