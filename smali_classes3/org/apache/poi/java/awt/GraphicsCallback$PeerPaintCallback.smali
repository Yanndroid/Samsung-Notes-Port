.class final Lorg/apache/poi/java/awt/GraphicsCallback$PeerPaintCallback;
.super Lorg/apache/poi/java/awt/GraphicsCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/GraphicsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PeerPaintCallback"
.end annotation


# static fields
.field private static instance:Lorg/apache/poi/java/awt/GraphicsCallback$PeerPaintCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/java/awt/GraphicsCallback$PeerPaintCallback;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/GraphicsCallback$PeerPaintCallback;-><init>()V

    sput-object v0, Lorg/apache/poi/java/awt/GraphicsCallback$PeerPaintCallback;->instance:Lorg/apache/poi/java/awt/GraphicsCallback$PeerPaintCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/GraphicsCallback;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/poi/java/awt/GraphicsCallback$PeerPaintCallback;
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/GraphicsCallback$PeerPaintCallback;->instance:Lorg/apache/poi/java/awt/GraphicsCallback$PeerPaintCallback;

    return-object v0
.end method


# virtual methods
.method public run(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Graphics;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->validate()V

    iget-object v0, p1, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of v1, v0, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Lorg/apache/poi/java/awt/Component;->lightweightPaint(Lorg/apache/poi/java/awt/Graphics;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->paint(Lorg/apache/poi/java/awt/Graphics;)V

    :goto_0
    return-void
.end method
