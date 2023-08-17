.class final Lorg/apache/poi/java/awt/Component$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sun/awt/AWTAccessor$ComponentAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Component;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canBeFocusOwner(Lorg/apache/poi/java/awt/Component;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->canBeFocusOwner()Z

    move-result p1

    return p1
.end method

.method public getAccessControlContext(Lorg/apache/poi/java/awt/Component;)Ljava/security/AccessControlContext;
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object p1

    return-object p1
.end method

.method public getAppContext(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/sun/awt/AppContext;
    .locals 0

    iget-object p1, p1, Lorg/apache/poi/java/awt/Component;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    return-object p1
.end method

.method public getBackground(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Color;
    .locals 0

    iget-object p1, p1, Lorg/apache/poi/java/awt/Component;->background:Lorg/apache/poi/java/awt/Color;

    return-object p1
.end method

.method public getBackgroundEraseDisabled(Lorg/apache/poi/java/awt/Component;)Z
    .locals 0

    iget-boolean p1, p1, Lorg/apache/poi/java/awt/Component;->backgroundEraseDisabled:Z

    return p1
.end method

.method public getBounds(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Rectangle;
    .locals 4

    new-instance v0, Lorg/apache/poi/java/awt/Rectangle;

    iget v1, p1, Lorg/apache/poi/java/awt/Component;->x:I

    iget v2, p1, Lorg/apache/poi/java/awt/Component;->y:I

    iget v3, p1, Lorg/apache/poi/java/awt/Component;->width:I

    iget p1, p1, Lorg/apache/poi/java/awt/Component;->height:I

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/apache/poi/java/awt/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public getCursor(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Cursor;
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getCursor_NoClientCode()Lorg/apache/poi/java/awt/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getFont(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Font;
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getFont_NoClientCode()Lorg/apache/poi/java/awt/Font;

    move-result-object p1

    return-object p1
.end method

.method public getForeground(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Color;
    .locals 0

    iget-object p1, p1, Lorg/apache/poi/java/awt/Component;->foreground:Lorg/apache/poi/java/awt/Color;

    return-object p1
.end method

.method public getHeight(Lorg/apache/poi/java/awt/Component;)I
    .locals 0

    iget p1, p1, Lorg/apache/poi/java/awt/Component;->height:I

    return p1
.end method

.method public getIgnoreRepaint(Lorg/apache/poi/java/awt/Component;)Z
    .locals 0

    iget-boolean p1, p1, Lorg/apache/poi/java/awt/Component;->ignoreRepaint:Z

    return p1
.end method

.method public getLocation(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Point;
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/java/awt/Component;->access$100(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Point;

    move-result-object p1

    return-object p1
.end method

.method public getParent(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Container;
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getParent_NoClientCode()Lorg/apache/poi/java/awt/Container;

    move-result-object p1

    return-object p1
.end method

.method public getPeer(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/peer/ComponentPeer;
    .locals 0

    iget-object p1, p1, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    return-object p1
.end method

.method public getWidth(Lorg/apache/poi/java/awt/Component;)I
    .locals 0

    iget p1, p1, Lorg/apache/poi/java/awt/Component;->width:I

    return p1
.end method

.method public getX(Lorg/apache/poi/java/awt/Component;)I
    .locals 0

    iget p1, p1, Lorg/apache/poi/java/awt/Component;->x:I

    return p1
.end method

.method public getY(Lorg/apache/poi/java/awt/Component;)I
    .locals 0

    iget p1, p1, Lorg/apache/poi/java/awt/Component;->y:I

    return p1
.end method

.method public isDisplayable(Lorg/apache/poi/java/awt/Component;)Z
    .locals 0

    iget-object p1, p1, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEnabled(Lorg/apache/poi/java/awt/Component;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isEnabledImpl()Z

    move-result p1

    return p1
.end method

.method public isLightweight(Lorg/apache/poi/java/awt/Component;)Z
    .locals 0

    iget-object p1, p1, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    instance-of p1, p1, Lorg/apache/poi/java/awt/peer/LightweightPeer;

    return p1
.end method

.method public isVisible(Lorg/apache/poi/java/awt/Component;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isVisible_NoClientCode()Z

    move-result p1

    return p1
.end method

.method public processEvent(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 0

    invoke-virtual {p1, p2}, Lorg/apache/poi/java/awt/Component;->processEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    return-void
.end method

.method public requestFocus(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z
    .locals 0

    invoke-virtual {p1, p2}, Lorg/apache/poi/java/awt/Component;->requestFocus(Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z

    move-result p1

    return p1
.end method

.method public revalidateSynchronously(Lorg/apache/poi/java/awt/Component;)V
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->revalidateSynchronously()V

    return-void
.end method

.method public setAppContext(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/sun/awt/AppContext;)V
    .locals 0

    iput-object p2, p1, Lorg/apache/poi/java/awt/Component;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    return-void
.end method

.method public setBackground(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Color;)V
    .locals 0

    iput-object p2, p1, Lorg/apache/poi/java/awt/Component;->background:Lorg/apache/poi/java/awt/Color;

    return-void
.end method

.method public setBackgroundEraseDisabled(Lorg/apache/poi/java/awt/Component;Z)V
    .locals 0

    iput-boolean p2, p1, Lorg/apache/poi/java/awt/Component;->backgroundEraseDisabled:Z

    return-void
.end method

.method public setGraphicsConfiguration(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/GraphicsConfiguration;)V
    .locals 0

    invoke-virtual {p1, p2}, Lorg/apache/poi/java/awt/Component;->setGraphicsConfiguration(Lorg/apache/poi/java/awt/GraphicsConfiguration;)V

    return-void
.end method

.method public setLocation(Lorg/apache/poi/java/awt/Component;II)V
    .locals 0

    iput p2, p1, Lorg/apache/poi/java/awt/Component;->x:I

    iput p3, p1, Lorg/apache/poi/java/awt/Component;->y:I

    return-void
.end method

.method public setMixingCutoutShape(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Shape;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, v0}, Lorg/apache/poi/sun/java2d/pipe/Region;->getInstance(Lorg/apache/poi/java/awt/Shape;Lorg/apache/poi/java/awt/geom/AffineTransform;)Lorg/apache/poi/sun/java2d/pipe/Region;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isNonOpaqueForMixing()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1, v0}, Lorg/apache/poi/java/awt/Component;->access$002(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/sun/java2d/pipe/Region;)Lorg/apache/poi/sun/java2d/pipe/Region;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isNonOpaqueForMixing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isMixingNeeded()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isLightweight()Z

    move-result v1

    invoke-virtual {p1, v1}, Lorg/apache/poi/java/awt/Component;->mixOnHiding(Z)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->mixOnShowing()V

    :cond_2
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setParent(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Container;)V
    .locals 0

    iput-object p2, p1, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    return-void
.end method

.method public setPeer(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/peer/ComponentPeer;)V
    .locals 0

    iput-object p2, p1, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    return-void
.end method

.method public setRequestFocusController(Lorg/apache/poi/sun/awt/RequestFocusController;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/java/awt/Component;->setRequestFocusController(Lorg/apache/poi/sun/awt/RequestFocusController;)V

    return-void
.end method

.method public setSize(Lorg/apache/poi/java/awt/Component;II)V
    .locals 0

    iput p2, p1, Lorg/apache/poi/java/awt/Component;->width:I

    iput p3, p1, Lorg/apache/poi/java/awt/Component;->height:I

    return-void
.end method
