.class public final Lio/netty/handler/codec/http/HttpContentEncoder$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/HttpContentEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private final contentEncoder:Lio/netty/channel/embedded/EmbeddedChannel;

.field private final targetContentEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/netty/channel/embedded/EmbeddedChannel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "targetContentEncoding"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/netty/handler/codec/http/HttpContentEncoder$Result;->targetContentEncoding:Ljava/lang/String;

    const-string p1, "contentEncoder"

    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/embedded/EmbeddedChannel;

    iput-object p1, p0, Lio/netty/handler/codec/http/HttpContentEncoder$Result;->contentEncoder:Lio/netty/channel/embedded/EmbeddedChannel;

    return-void
.end method


# virtual methods
.method public contentEncoder()Lio/netty/channel/embedded/EmbeddedChannel;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/HttpContentEncoder$Result;->contentEncoder:Lio/netty/channel/embedded/EmbeddedChannel;

    return-object v0
.end method

.method public targetContentEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/http/HttpContentEncoder$Result;->targetContentEncoding:Ljava/lang/String;

    return-object v0
.end method
