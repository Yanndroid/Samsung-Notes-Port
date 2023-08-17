.class Lorg/apache/poi/java/awt/Component$SingleBufferStrategy;
.super Lorg/apache/poi/java/awt/image/BufferStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Component;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SingleBufferStrategy"
.end annotation


# instance fields
.field private caps:Lorg/apache/poi/java/awt/BufferCapabilities;

.field public final synthetic this$0:Lorg/apache/poi/java/awt/Component;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/BufferCapabilities;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component$SingleBufferStrategy;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/BufferStrategy;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/java/awt/Component$SingleBufferStrategy;->caps:Lorg/apache/poi/java/awt/BufferCapabilities;

    return-void
.end method


# virtual methods
.method public contentsLost()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public contentsRestored()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCapabilities()Lorg/apache/poi/java/awt/BufferCapabilities;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$SingleBufferStrategy;->caps:Lorg/apache/poi/java/awt/BufferCapabilities;

    return-object v0
.end method

.method public getDrawGraphics()Lorg/apache/poi/java/awt/Graphics;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$SingleBufferStrategy;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getGraphics()Lorg/apache/poi/java/awt/Graphics;

    move-result-object v0

    return-object v0
.end method

.method public show()V
    .locals 0

    return-void
.end method
