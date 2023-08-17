.class public Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;
.super Lorg/apache/poi/java/awt/image/BufferStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Component;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlipBufferStrategy"
.end annotation


# instance fields
.field public caps:Lorg/apache/poi/java/awt/BufferCapabilities;

.field public drawBuffer:Lorg/apache/poi/java/awt/Image;

.field public drawVBuffer:Lorg/apache/poi/java/awt/image/VolatileImage;

.field public height:I

.field public numBuffers:I

.field public final synthetic this$0:Lorg/apache/poi/java/awt/Component;

.field public validatedContents:Z

.field public width:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Component;ILorg/apache/poi/java/awt/BufferCapabilities;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/BufferStrategy;-><init>()V

    instance-of v0, p1, Lorg/apache/poi/java/awt/Window;

    if-nez v0, :cond_1

    instance-of p1, p1, Lorg/apache/poi/java/awt/Canvas;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string p2, "Component must be a Canvas or Window"

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p2, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->numBuffers:I

    iput-object p3, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->caps:Lorg/apache/poi/java/awt/BufferCapabilities;

    invoke-virtual {p0, p2, p3}, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->createBuffers(ILorg/apache/poi/java/awt/BufferCapabilities;)V

    return-void
.end method

.method private updateInternalBuffers()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->getBackBuffer()Lorg/apache/poi/java/awt/Image;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->drawBuffer:Lorg/apache/poi/java/awt/Image;

    instance-of v1, v0, Lorg/apache/poi/java/awt/image/VolatileImage;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/java/awt/image/VolatileImage;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->drawVBuffer:Lorg/apache/poi/java/awt/image/VolatileImage;

    return-void
.end method


# virtual methods
.method public contentsLost()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->drawVBuffer:Lorg/apache/poi/java/awt/image/VolatileImage;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/VolatileImage;->contentsLost()Z

    move-result v0

    return v0
.end method

.method public contentsRestored()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->validatedContents:Z

    return v0
.end method

.method public createBuffers(ILorg/apache/poi/java/awt/BufferCapabilities;)V
    .locals 3

    const/4 v0, 0x2

    if-lt p1, v0, :cond_4

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->this$0:Lorg/apache/poi/java/awt/Component;

    iget-object v0, v0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/BufferCapabilities;->isPageFlipping()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->width:I

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->height:I

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->drawBuffer:Lorg/apache/poi/java/awt/Image;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->drawBuffer:Lorg/apache/poi/java/awt/Image;

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->drawVBuffer:Lorg/apache/poi/java/awt/image/VolatileImage;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->destroyBuffers()V

    :cond_0
    instance-of v0, p2, Lorg/apache/poi/sun/java2d/pipe/hw/ExtendedBufferCapabilities;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/apache/poi/sun/java2d/pipe/hw/ExtendedBufferCapabilities;

    invoke-virtual {v0}, Lorg/apache/poi/sun/java2d/pipe/hw/ExtendedBufferCapabilities;->getVSync()Lorg/apache/poi/sun/java2d/pipe/hw/ExtendedBufferCapabilities$VSyncType;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/sun/java2d/pipe/hw/ExtendedBufferCapabilities$VSyncType;->VSYNC_ON:Lorg/apache/poi/sun/java2d/pipe/hw/ExtendedBufferCapabilities$VSyncType;

    if-ne v1, v2, :cond_1

    invoke-static {p0}, Lorg/apache/poi/sun/awt/image/VSyncedBSManager;->vsyncAllowed(Lorg/apache/poi/java/awt/image/BufferStrategy;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p2, Lorg/apache/poi/sun/java2d/pipe/hw/ExtendedBufferCapabilities$VSyncType;->VSYNC_DEFAULT:Lorg/apache/poi/sun/java2d/pipe/hw/ExtendedBufferCapabilities$VSyncType;

    invoke-virtual {v0, p2}, Lorg/apache/poi/sun/java2d/pipe/hw/ExtendedBufferCapabilities;->derive(Lorg/apache/poi/sun/java2d/pipe/hw/ExtendedBufferCapabilities$VSyncType;)Lorg/apache/poi/sun/java2d/pipe/hw/ExtendedBufferCapabilities;

    move-result-object p2

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->this$0:Lorg/apache/poi/java/awt/Component;

    iget-object v0, v0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    invoke-interface {v0, p1, p2}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->createBuffers(ILorg/apache/poi/java/awt/BufferCapabilities;)V

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->updateInternalBuffers()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Page flipping capabilities must be specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Component must have a valid peer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of buffers cannot be less than two"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public destroyBuffers()V
    .locals 2

    invoke-static {p0}, Lorg/apache/poi/sun/awt/image/VSyncedBSManager;->releaseVsync(Lorg/apache/poi/java/awt/image/BufferStrategy;)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->this$0:Lorg/apache/poi/java/awt/Component;

    iget-object v0, v0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->destroyBuffers()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component must have a valid peer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispose()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->this$0:Lorg/apache/poi/java/awt/Component;

    iget-object v1, v0, Lorg/apache/poi/java/awt/Component;->bufferStrategy:Lorg/apache/poi/java/awt/image/BufferStrategy;

    if-ne v1, p0, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/apache/poi/java/awt/Component;->bufferStrategy:Lorg/apache/poi/java/awt/image/BufferStrategy;

    iget-object v0, v0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->destroyBuffers()V

    :cond_0
    return-void
.end method

.method public flip(Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;)V
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->this$0:Lorg/apache/poi/java/awt/Component;

    iget-object v0, v0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->getBackBuffer()Lorg/apache/poi/java/awt/Image;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->this$0:Lorg/apache/poi/java/awt/Component;

    iget-object v2, v1, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/Image;->getWidth(Lorg/apache/poi/java/awt/image/ImageObserver;)I

    move-result v5

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/Image;->getHeight(Lorg/apache/poi/java/awt/image/ImageObserver;)I

    move-result v6

    move-object v7, p1

    invoke-interface/range {v2 .. v7}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->flip(IIIILorg/apache/poi/java/awt/BufferCapabilities$FlipContents;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Component must have a valid peer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public flipSubRegion(IIIILorg/apache/poi/java/awt/BufferCapabilities$FlipContents;)V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->this$0:Lorg/apache/poi/java/awt/Component;

    iget-object v1, v0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v1, :cond_0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->flip(IIIILorg/apache/poi/java/awt/BufferCapabilities$FlipContents;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Component must have a valid peer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBackBuffer()Lorg/apache/poi/java/awt/Image;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->this$0:Lorg/apache/poi/java/awt/Component;

    iget-object v0, v0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->getBackBuffer()Lorg/apache/poi/java/awt/Image;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component must have a valid peer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCapabilities()Lorg/apache/poi/java/awt/BufferCapabilities;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->caps:Lorg/apache/poi/java/awt/BufferCapabilities;

    instance-of v1, v0, Lorg/apache/poi/java/awt/Component$ProxyCapabilities;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/java/awt/Component$ProxyCapabilities;

    invoke-static {v0}, Lorg/apache/poi/java/awt/Component$ProxyCapabilities;->access$300(Lorg/apache/poi/java/awt/Component$ProxyCapabilities;)Lorg/apache/poi/java/awt/BufferCapabilities;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDrawGraphics()Lorg/apache/poi/java/awt/Graphics;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->revalidate()V

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->drawBuffer:Lorg/apache/poi/java/awt/Image;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Image;->getGraphics()Lorg/apache/poi/java/awt/Graphics;

    move-result-object v0

    return-object v0
.end method

.method public revalidate()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->revalidate(Z)V

    return-void
.end method

.method public revalidate(Z)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->validatedContents:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getWidth()I

    move-result p1

    iget v1, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->width:I

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getHeight()I

    move-result p1

    iget v1, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->height:I

    if-eq p1, v1, :cond_1

    :cond_0
    :try_start_0
    iget p1, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->numBuffers:I

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->caps:Lorg/apache/poi/java/awt/BufferCapabilities;

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->createBuffers(ILorg/apache/poi/java/awt/BufferCapabilities;)V
    :try_end_0
    .catch Lorg/apache/poi/java/awt/AWTException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->validatedContents:Z

    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->updateInternalBuffers()V

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->drawVBuffer:Lorg/apache/poi/java/awt/image/VolatileImage;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getGraphicsConfiguration_NoClientCode()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->drawVBuffer:Lorg/apache/poi/java/awt/image/VolatileImage;

    invoke-virtual {v1, p1}, Lorg/apache/poi/java/awt/image/VolatileImage;->validate(Lorg/apache/poi/java/awt/GraphicsConfiguration;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :try_start_1
    iget v1, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->numBuffers:I

    iget-object v2, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->caps:Lorg/apache/poi/java/awt/BufferCapabilities;

    invoke-virtual {p0, v1, v2}, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->createBuffers(ILorg/apache/poi/java/awt/BufferCapabilities;)V
    :try_end_1
    .catch Lorg/apache/poi/java/awt/AWTException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->drawVBuffer:Lorg/apache/poi/java/awt/image/VolatileImage;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Lorg/apache/poi/java/awt/image/VolatileImage;->validate(Lorg/apache/poi/java/awt/GraphicsConfiguration;)I

    goto :goto_0

    :cond_2
    if-ne v1, v0, :cond_4

    :cond_3
    :goto_0
    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->validatedContents:Z

    :cond_4
    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->caps:Lorg/apache/poi/java/awt/BufferCapabilities;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/BufferCapabilities;->getFlipContents()Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->flip(Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;)V

    return-void
.end method

.method public showSubRegion(IIII)V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->caps:Lorg/apache/poi/java/awt/BufferCapabilities;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/BufferCapabilities;->getFlipContents()Lorg/apache/poi/java/awt/BufferCapabilities$FlipContents;

    move-result-object v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/java/awt/Component$FlipBufferStrategy;->flipSubRegion(IIIILorg/apache/poi/java/awt/BufferCapabilities$FlipContents;)V

    return-void
.end method
