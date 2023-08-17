.class final Lio/netty/channel/embedded/EmbeddedChannelId;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/ChannelId;


# static fields
.field public static final INSTANCE:Lio/netty/channel/ChannelId;

.field private static final serialVersionUID:J = -0x37e42a8dcab1992L


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/channel/embedded/EmbeddedChannelId;

    invoke-direct {v0}, Lio/netty/channel/embedded/EmbeddedChannelId;-><init>()V

    sput-object v0, Lio/netty/channel/embedded/EmbeddedChannelId;->INSTANCE:Lio/netty/channel/ChannelId;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asLongText()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannelId;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asShortText()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannelId;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lio/netty/channel/ChannelId;)I
    .locals 1

    instance-of v0, p1, Lio/netty/channel/embedded/EmbeddedChannelId;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/embedded/EmbeddedChannelId;->asLongText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/ChannelId;->asLongText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lio/netty/channel/ChannelId;

    invoke-virtual {p0, p1}, Lio/netty/channel/embedded/EmbeddedChannelId;->compareTo(Lio/netty/channel/ChannelId;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lio/netty/channel/embedded/EmbeddedChannelId;

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "embedded"

    return-object v0
.end method
