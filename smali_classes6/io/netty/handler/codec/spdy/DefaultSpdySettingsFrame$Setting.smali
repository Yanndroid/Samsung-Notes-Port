.class final Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Setting"
.end annotation


# instance fields
.field private persist:Z

.field private persisted:Z

.field private value:I


# direct methods
.method public constructor <init>(IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->value:I

    iput-boolean p2, p0, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->persist:Z

    iput-boolean p3, p0, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->persisted:Z

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->value:I

    return v0
.end method

.method public isPersist()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->persist:Z

    return v0
.end method

.method public isPersisted()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->persisted:Z

    return v0
.end method

.method public setPersist(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->persist:Z

    return-void
.end method

.method public setPersisted(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->persisted:Z

    return-void
.end method

.method public setValue(I)V
    .locals 0

    iput p1, p0, Lio/netty/handler/codec/spdy/DefaultSpdySettingsFrame$Setting;->value:I

    return-void
.end method
