.class public Lorg/apache/poi/java/awt/Canvas;
.super Lorg/apache/poi/java/awt/Component;
.source "SourceFile"

# interfaces
.implements Ljavax/accessibility/Accessible;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/Canvas$AccessibleAWTCanvas;
    }
.end annotation


# static fields
.field private static final base:Ljava/lang/String; = "canvas"

.field private static nameCounter:I = 0x0

.field private static final serialVersionUID:J = -0x1fb58589b5b431eeL


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Component;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/GraphicsConfiguration;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Canvas;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Canvas;->setGraphicsConfiguration(Lorg/apache/poi/java/awt/GraphicsConfiguration;)V

    return-void
.end method


# virtual methods
.method public addNotify()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/poi/java/awt/Toolkit;->createCanvas(Lorg/apache/poi/java/awt/Canvas;)Lorg/apache/poi/java/awt/peer/CanvasPeer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->addNotify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public constructComponentName()Ljava/lang/String;
    .locals 4

    const-class v0, Lorg/apache/poi/java/awt/Canvas;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canvas"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/apache/poi/java/awt/Canvas;->nameCounter:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/apache/poi/java/awt/Canvas;->nameCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createBufferStrategy(I)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->createBufferStrategy(I)V

    return-void
.end method

.method public createBufferStrategy(ILorg/apache/poi/java/awt/BufferCapabilities;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/poi/java/awt/Component;->createBufferStrategy(ILorg/apache/poi/java/awt/BufferCapabilities;)V

    return-void
.end method

.method public getAccessibleContext()Ljavax/accessibility/AccessibleContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/Canvas$AccessibleAWTCanvas;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/Canvas$AccessibleAWTCanvas;-><init>(Lorg/apache/poi/java/awt/Canvas;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    return-object v0
.end method

.method public getBufferStrategy()Lorg/apache/poi/java/awt/image/BufferStrategy;
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->getBufferStrategy()Lorg/apache/poi/java/awt/image/BufferStrategy;

    move-result-object v0

    return-object v0
.end method

.method public paint(Lorg/apache/poi/java/awt/Graphics;)V
    .locals 3

    iget v0, p0, Lorg/apache/poi/java/awt/Component;->width:I

    iget v1, p0, Lorg/apache/poi/java/awt/Component;->height:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Lorg/apache/poi/java/awt/Graphics;->clearRect(IIII)V

    return-void
.end method

.method public postsOldMouseEvents()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setGraphicsConfiguration(Lorg/apache/poi/java/awt/GraphicsConfiguration;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/peer/CanvasPeer;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lorg/apache/poi/java/awt/peer/CanvasPeer;->getAppropriateGraphicsConfiguration(Lorg/apache/poi/java/awt/GraphicsConfiguration;)Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->setGraphicsConfiguration(Lorg/apache/poi/java/awt/GraphicsConfiguration;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public update(Lorg/apache/poi/java/awt/Graphics;)V
    .locals 3

    iget v0, p0, Lorg/apache/poi/java/awt/Component;->width:I

    iget v1, p0, Lorg/apache/poi/java/awt/Component;->height:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Lorg/apache/poi/java/awt/Graphics;->clearRect(IIII)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Canvas;->paint(Lorg/apache/poi/java/awt/Graphics;)V

    return-void
.end method
