.class Lorg/apache/poi/java/awt/Component$ProxyCapabilities;
.super Lorg/apache/poi/sun/java2d/pipe/hw/ExtendedBufferCapabilities;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Component;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProxyCapabilities"
.end annotation


# instance fields
.field private orig:Lorg/apache/poi/java/awt/BufferCapabilities;

.field public final synthetic this$0:Lorg/apache/poi/java/awt/Component;


# direct methods
.method private constructor <init>(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/BufferCapabilities;)V
    .locals 3

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component$ProxyCapabilities;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/BufferCapabilities;->getFrontBufferCapabilities()Lorg/apache/poi/java/awt/ImageCapabilities;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/BufferCapabilities;->getBackBufferCapabilities()Lorg/apache/poi/java/awt/ImageCapabilities;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/BufferCapabilities;->getFlipContents()Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;->BACKGROUND:Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;->COPIED:Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;

    :goto_0
    invoke-direct {p0, p1, v0, v2}, Lorg/apache/poi/sun/java2d/pipe/hw/ExtendedBufferCapabilities;-><init>(Lorg/apache/poi/java/awt/ImageCapabilities;Lorg/apache/poi/java/awt/ImageCapabilities;Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;)V

    iput-object p2, p0, Lorg/apache/poi/java/awt/Component$ProxyCapabilities;->orig:Lorg/apache/poi/java/awt/BufferCapabilities;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/BufferCapabilities;Lorg/apache/poi/java/awt/Component$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/java/awt/Component$ProxyCapabilities;-><init>(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/BufferCapabilities;)V

    return-void
.end method

.method public static synthetic access$300(Lorg/apache/poi/java/awt/Component$ProxyCapabilities;)Lorg/apache/poi/java/awt/BufferCapabilities;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/java/awt/Component$ProxyCapabilities;->orig:Lorg/apache/poi/java/awt/BufferCapabilities;

    return-object p0
.end method
