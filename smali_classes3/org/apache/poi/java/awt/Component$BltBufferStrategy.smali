.class public Lorg/apache/poi/java/awt/Component$BltBufferStrategy;
.super Lorg/apache/poi/java/awt/image/BufferStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Component;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BltBufferStrategy"
.end annotation


# instance fields
.field public backBuffers:[Lorg/apache/poi/java/awt/image/VolatileImage;

.field public caps:Lorg/apache/poi/java/awt/BufferCapabilities;

.field public height:I

.field private insets:Lorg/apache/poi/java/awt/Insets;

.field public final synthetic this$0:Lorg/apache/poi/java/awt/Component;

.field public validatedContents:Z

.field public width:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Component;ILorg/apache/poi/java/awt/BufferCapabilities;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-direct {p0}, Lorg/apache/poi/java/awt/image/BufferStrategy;-><init>()V

    iput-object p3, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->caps:Lorg/apache/poi/java/awt/BufferCapabilities;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->createBackBuffers(I)V

    return-void
.end method


# virtual methods
.method public contentsLost()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->backBuffers:[Lorg/apache/poi/java/awt/image/VolatileImage;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/VolatileImage;->contentsLost()Z

    move-result v0

    return v0
.end method

.method public contentsRestored()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->validatedContents:Z

    return v0
.end method

.method public createBackBuffers(I)V
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->backBuffers:[Lorg/apache/poi/java/awt/image/VolatileImage;

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getWidth()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->width:I

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getHeight()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->height:I

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-static {v1}, Lorg/apache/poi/java/awt/Component;->access$400(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Insets;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->insets:Lorg/apache/poi/java/awt/Insets;

    iget v2, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->width:I

    iget v3, v1, Lorg/apache/poi/java/awt/Insets;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Lorg/apache/poi/java/awt/Insets;->right:I

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->height:I

    iget v4, v1, Lorg/apache/poi/java/awt/Insets;->top:I

    sub-int/2addr v3, v4

    iget v1, v1, Lorg/apache/poi/java/awt/Insets;->bottom:I

    sub-int/2addr v3, v1

    const/4 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v3, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->backBuffers:[Lorg/apache/poi/java/awt/image/VolatileImage;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    new-array v0, p1, [Lorg/apache/poi/java/awt/image/VolatileImage;

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->backBuffers:[Lorg/apache/poi/java/awt/image/VolatileImage;

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_0
    if-ge v3, p1, :cond_3

    iget-object v5, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->backBuffers:[Lorg/apache/poi/java/awt/image/VolatileImage;

    aget-object v6, v5, v3

    if-eqz v6, :cond_2

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/image/VolatileImage;->flush()V

    iget-object v5, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->backBuffers:[Lorg/apache/poi/java/awt/image/VolatileImage;

    aput-object v0, v5, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-ge v4, p1, :cond_4

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->backBuffers:[Lorg/apache/poi/java/awt/image/VolatileImage;

    iget-object v3, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v3, v2, v1}, Lorg/apache/poi/java/awt/Component;->createVolatileImage(II)Lorg/apache/poi/java/awt/image/VolatileImage;

    move-result-object v3

    aput-object v3, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public dispose()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->backBuffers:[Lorg/apache/poi/java/awt/image/VolatileImage;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->backBuffers:[Lorg/apache/poi/java/awt/image/VolatileImage;

    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/VolatileImage;->flush()V

    iget-object v2, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->backBuffers:[Lorg/apache/poi/java/awt/image/VolatileImage;

    aput-object v1, v2, v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->this$0:Lorg/apache/poi/java/awt/Component;

    iget-object v2, v0, Lorg/apache/poi/java/awt/Component;->bufferStrategy:Lorg/apache/poi/java/awt/image/BufferStrategy;

    if-ne v2, p0, :cond_2

    iput-object v1, v0, Lorg/apache/poi/java/awt/Component;->bufferStrategy:Lorg/apache/poi/java/awt/image/BufferStrategy;

    :cond_2
    return-void
.end method

.method public getBackBuffer()Lorg/apache/poi/java/awt/Image;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->backBuffers:[Lorg/apache/poi/java/awt/image/VolatileImage;

    if-eqz v0, :cond_0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCapabilities()Lorg/apache/poi/java/awt/BufferCapabilities;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->caps:Lorg/apache/poi/java/awt/BufferCapabilities;

    return-object v0
.end method

.method public getDrawGraphics()Lorg/apache/poi/java/awt/Graphics;
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->revalidate()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->getBackBuffer()Lorg/apache/poi/java/awt/Image;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getGraphics()Lorg/apache/poi/java/awt/Graphics;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Image;->getGraphics()Lorg/apache/poi/java/awt/Graphics;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sun/java2d/SunGraphics2D;

    iget-object v2, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->insets:Lorg/apache/poi/java/awt/Insets;

    iget v3, v2, Lorg/apache/poi/java/awt/Insets;->left:I

    neg-int v3, v3

    iget v2, v2, Lorg/apache/poi/java/awt/Insets;->top:I

    neg-int v2, v2

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/apache/poi/java/awt/Image;->getWidth(Lorg/apache/poi/java/awt/image/ImageObserver;)I

    move-result v5

    iget-object v6, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->insets:Lorg/apache/poi/java/awt/Insets;

    iget v6, v6, Lorg/apache/poi/java/awt/Insets;->left:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v4}, Lorg/apache/poi/java/awt/Image;->getHeight(Lorg/apache/poi/java/awt/image/ImageObserver;)I

    move-result v0

    iget-object v4, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->insets:Lorg/apache/poi/java/awt/Insets;

    iget v4, v4, Lorg/apache/poi/java/awt/Insets;->top:I

    add-int/2addr v0, v4

    invoke-virtual {v1, v3, v2, v5, v0}, Lorg/apache/poi/sun/java2d/SunGraphics2D;->constrain(IIII)V

    return-object v1
.end method

.method public revalidate()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->revalidate(Z)V

    return-void
.end method

.method public revalidate(Z)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->validatedContents:Z

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->backBuffers:[Lorg/apache/poi/java/awt/image/VolatileImage;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-static {v1}, Lorg/apache/poi/java/awt/Component;->access$400(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Insets;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Component;->getWidth()I

    move-result v2

    iget v3, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->width:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Component;->getHeight()I

    move-result v2

    iget v3, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->height:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->insets:Lorg/apache/poi/java/awt/Insets;

    invoke-virtual {v1, v2}, Lorg/apache/poi/java/awt/Insets;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->backBuffers:[Lorg/apache/poi/java/awt/image/VolatileImage;

    array-length v1, v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->createBackBuffers(I)V

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->validatedContents:Z

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getGraphicsConfiguration_NoClientCode()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->backBuffers:[Lorg/apache/poi/java/awt/image/VolatileImage;

    array-length v3, v2

    sub-int/2addr v3, v0

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lorg/apache/poi/java/awt/image/VolatileImage;->validate(Lorg/apache/poi/java/awt/GraphicsConfiguration;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->backBuffers:[Lorg/apache/poi/java/awt/image/VolatileImage;

    array-length p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->createBackBuffers(I)V

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->backBuffers:[Lorg/apache/poi/java/awt/image/VolatileImage;

    array-length v2, p1

    sub-int/2addr v2, v0

    aget-object p1, p1, v2

    invoke-virtual {p1, v1}, Lorg/apache/poi/java/awt/image/VolatileImage;->validate(Lorg/apache/poi/java/awt/GraphicsConfiguration;)I

    goto :goto_0

    :cond_3
    if-ne v2, v0, :cond_5

    :cond_4
    :goto_0
    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->validatedContents:Z

    :cond_5
    return-void
.end method

.method public show()V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->insets:Lorg/apache/poi/java/awt/Insets;

    iget v1, v0, Lorg/apache/poi/java/awt/Insets;->left:I

    iget v2, v0, Lorg/apache/poi/java/awt/Insets;->top:I

    iget v3, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->width:I

    iget v4, v0, Lorg/apache/poi/java/awt/Insets;->right:I

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->height:I

    iget v0, v0, Lorg/apache/poi/java/awt/Insets;->bottom:I

    sub-int/2addr v4, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->showSubRegion(IIII)V

    return-void
.end method

.method public showSubRegion(IIII)V
    .locals 19

    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->backBuffers:[Lorg/apache/poi/java/awt/image/VolatileImage;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->insets:Lorg/apache/poi/java/awt/Insets;

    iget v2, v0, Lorg/apache/poi/java/awt/Insets;->left:I

    sub-int v14, p1, v2

    sub-int v2, p3, v2

    iget v0, v0, Lorg/apache/poi/java/awt/Insets;->top:I

    sub-int v15, p2, v0

    sub-int v0, p4, v0

    iget-object v3, v1, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Component;->getGraphics_NoClientCode()Lorg/apache/poi/java/awt/Graphics;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v4, v1, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->insets:Lorg/apache/poi/java/awt/Insets;

    iget v5, v4, Lorg/apache/poi/java/awt/Insets;->left:I

    iget v4, v4, Lorg/apache/poi/java/awt/Insets;->top:I

    invoke-virtual {v3, v5, v4}, Lorg/apache/poi/java/awt/Graphics;->translate(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    move-object/from16 v16, v3

    move v13, v4

    :goto_0
    :try_start_1
    iget-object v3, v1, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->backBuffers:[Lorg/apache/poi/java/awt/image/VolatileImage;

    array-length v4, v3

    if-ge v13, v4, :cond_2

    aget-object v4, v3, v13

    const/16 v17, 0x0

    move-object/from16 v3, v16

    move v5, v14

    move v6, v15

    move v7, v2

    move v8, v0

    move v9, v14

    move v10, v15

    move v11, v2

    move v12, v0

    move/from16 v18, v13

    move-object/from16 v13, v17

    invoke-virtual/range {v3 .. v13}, Lorg/apache/poi/java/awt/Graphics;->drawImage(Lorg/apache/poi/java/awt/Image;IIIIIIIILorg/apache/poi/java/awt/image/ImageObserver;)Z

    invoke-virtual/range {v16 .. v16}, Lorg/apache/poi/java/awt/Graphics;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    :try_start_2
    iget-object v4, v1, Lorg/apache/poi/java/awt/Component$BltBufferStrategy;->backBuffers:[Lorg/apache/poi/java/awt/image/VolatileImage;

    aget-object v4, v4, v18

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/image/VolatileImage;->getGraphics()Lorg/apache/poi/java/awt/Graphics;

    move-result-object v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v13, v18, 0x1

    goto :goto_0

    :cond_2
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Lorg/apache/poi/java/awt/Graphics;->dispose()V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v3, v16

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Graphics;->dispose()V

    :cond_4
    throw v0
.end method
