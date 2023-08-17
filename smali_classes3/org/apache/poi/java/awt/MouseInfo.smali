.class public Lorg/apache/poi/java/awt/MouseInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $assertionsDisabled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static areScreenDevicesIndependent([Lorg/apache/poi/java/awt/GraphicsDevice;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/GraphicsDevice;->getDefaultConfiguration()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getBounds()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v2

    iget v3, v2, Lorg/apache/poi/java/awt/Rectangle;->x:I

    if-nez v3, :cond_1

    iget v2, v2, Lorg/apache/poi/java/awt/Rectangle;->y:I

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static getNumberOfButtons()I
    .locals 2

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    const-string v1, "awt.mouse.numButtons"

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/Toolkit;->getDesktopProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Lorg/apache/poi/java/awt/HeadlessException;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/HeadlessException;-><init>()V

    throw v0
.end method

.method public static getPointerInfo()Lorg/apache/poi/java/awt/PointerInfo;
    .locals 6

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lorg/apache/poi/sun/security/util/SecurityConstants$AWT;->WATCH_MOUSE_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    new-instance v0, Lorg/apache/poi/java/awt/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Toolkit;->getMouseInfoPeer()Lorg/apache/poi/java/awt/peer/MouseInfoPeer;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/apache/poi/java/awt/peer/MouseInfoPeer;->fillPointWithCoords(Lorg/apache/poi/java/awt/Point;)I

    move-result v2

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Lorg/apache/poi/java/awt/GraphicsEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->getScreenDevices()[Lorg/apache/poi/java/awt/GraphicsDevice;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3}, Lorg/apache/poi/java/awt/MouseInfo;->areScreenDevicesIndependent([Lorg/apache/poi/java/awt/GraphicsDevice;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v1, Lorg/apache/poi/java/awt/PointerInfo;

    aget-object v2, v3, v2

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/java/awt/PointerInfo;-><init>(Lorg/apache/poi/java/awt/GraphicsDevice;Lorg/apache/poi/java/awt/Point;)V

    goto :goto_1

    :cond_1
    :goto_0
    array-length v2, v3

    if-ge v1, v2, :cond_3

    aget-object v2, v3, v1

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/GraphicsDevice;->getDefaultConfiguration()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getBounds()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/poi/java/awt/Rectangle;->contains(Lorg/apache/poi/java/awt/Point;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lorg/apache/poi/java/awt/PointerInfo;

    aget-object v4, v3, v1

    invoke-direct {v2, v4, v0}, Lorg/apache/poi/java/awt/PointerInfo;-><init>(Lorg/apache/poi/java/awt/GraphicsDevice;Lorg/apache/poi/java/awt/Point;)V

    move-object v4, v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move-object v1, v4

    :goto_1
    return-object v1

    :cond_4
    new-instance v0, Lorg/apache/poi/java/awt/HeadlessException;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/HeadlessException;-><init>()V

    throw v0
.end method
