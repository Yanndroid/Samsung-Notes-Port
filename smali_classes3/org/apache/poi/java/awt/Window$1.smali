.class final Lorg/apache/poi/java/awt/Window$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sun/awt/AWTAccessor$WindowAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Window;
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
.method public calculateSecurityWarningPosition(Lorg/apache/poi/java/awt/Window;DDDD)Lorg/apache/poi/java/awt/geom/Point2D;
    .locals 0

    invoke-static/range {p1 .. p9}, Lorg/apache/poi/java/awt/Window;->access$1200(Lorg/apache/poi/java/awt/Window;DDDD)Lorg/apache/poi/java/awt/geom/Point2D;

    move-result-object p1

    return-object p1
.end method

.method public getOpacity(Lorg/apache/poi/java/awt/Window;)F
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/java/awt/Window;->access$400(Lorg/apache/poi/java/awt/Window;)F

    move-result p1

    return p1
.end method

.method public getSecurityWarningSize(Lorg/apache/poi/java/awt/Window;)Lorg/apache/poi/java/awt/Dimension;
    .locals 2

    new-instance v0, Lorg/apache/poi/java/awt/Dimension;

    invoke-static {p1}, Lorg/apache/poi/java/awt/Window;->access$600(Lorg/apache/poi/java/awt/Window;)I

    move-result v1

    invoke-static {p1}, Lorg/apache/poi/java/awt/Window;->access$700(Lorg/apache/poi/java/awt/Window;)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    return-object v0
.end method

.method public getShape(Lorg/apache/poi/java/awt/Window;)Lorg/apache/poi/java/awt/Shape;
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Window;->getShape()Lorg/apache/poi/java/awt/Shape;

    move-result-object p1

    return-object p1
.end method

.method public isAutoRequestFocus(Lorg/apache/poi/java/awt/Window;)Z
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/java/awt/Window;->access$1300(Lorg/apache/poi/java/awt/Window;)Z

    move-result p1

    return p1
.end method

.method public isTrayIconWindow(Lorg/apache/poi/java/awt/Window;)Z
    .locals 0

    iget-boolean p1, p1, Lorg/apache/poi/java/awt/Window;->isTrayIconWindow:Z

    return p1
.end method

.method public setLWRequestStatus(Lorg/apache/poi/java/awt/Window;Z)V
    .locals 0

    iput-boolean p2, p1, Lorg/apache/poi/java/awt/Window;->syncLWRequests:Z

    return-void
.end method

.method public setOpacity(Lorg/apache/poi/java/awt/Window;F)V
    .locals 0

    invoke-virtual {p1, p2}, Lorg/apache/poi/java/awt/Window;->setOpacity(F)V

    return-void
.end method

.method public setOpaque(Lorg/apache/poi/java/awt/Window;Z)V
    .locals 5

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Window;->getBackground()Lorg/apache/poi/java/awt/Color;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/apache/poi/java/awt/Color;-><init>(IIII)V

    :cond_0
    new-instance v2, Lorg/apache/poi/java/awt/Color;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Color;->getRed()I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Color;->getGreen()I

    move-result v4

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Color;->getBlue()I

    move-result v0

    if-eqz p2, :cond_1

    const/16 v1, 0xff

    :cond_1
    invoke-direct {v2, v3, v4, v0, v1}, Lorg/apache/poi/java/awt/Color;-><init>(IIII)V

    invoke-virtual {p1, v2}, Lorg/apache/poi/java/awt/Window;->setBackground(Lorg/apache/poi/java/awt/Color;)V

    return-void
.end method

.method public setSecurityWarningPosition(Lorg/apache/poi/java/awt/Window;Lorg/apache/poi/java/awt/geom/Point2D;FF)V
    .locals 2

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/apache/poi/java/awt/Window;->access$802(Lorg/apache/poi/java/awt/Window;D)D

    invoke-virtual {p2}, Lorg/apache/poi/java/awt/geom/Point2D;->getY()D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/apache/poi/java/awt/Window;->access$902(Lorg/apache/poi/java/awt/Window;D)D

    invoke-static {p1, p3}, Lorg/apache/poi/java/awt/Window;->access$1002(Lorg/apache/poi/java/awt/Window;F)F

    invoke-static {p1, p4}, Lorg/apache/poi/java/awt/Window;->access$1102(Lorg/apache/poi/java/awt/Window;F)F

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/java/awt/peer/WindowPeer;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/java/awt/peer/WindowPeer;->repositionSecurityWarning()V

    :cond_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSecurityWarningSize(Lorg/apache/poi/java/awt/Window;II)V
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/poi/java/awt/Window;->access$602(Lorg/apache/poi/java/awt/Window;I)I

    invoke-static {p1, p3}, Lorg/apache/poi/java/awt/Window;->access$702(Lorg/apache/poi/java/awt/Window;I)I

    return-void
.end method

.method public setShape(Lorg/apache/poi/java/awt/Window;Lorg/apache/poi/java/awt/Shape;)V
    .locals 0

    invoke-virtual {p1, p2}, Lorg/apache/poi/java/awt/Window;->setShape(Lorg/apache/poi/java/awt/Shape;)V

    return-void
.end method

.method public setTrayIconWindow(Lorg/apache/poi/java/awt/Window;Z)V
    .locals 0

    iput-boolean p2, p1, Lorg/apache/poi/java/awt/Window;->isTrayIconWindow:Z

    return-void
.end method

.method public updateWindow(Lorg/apache/poi/java/awt/Window;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/java/awt/Window;->access$500(Lorg/apache/poi/java/awt/Window;)V

    return-void
.end method
