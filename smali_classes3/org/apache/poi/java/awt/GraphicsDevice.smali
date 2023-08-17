.class public abstract Lorg/apache/poi/java/awt/GraphicsDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;
    }
.end annotation


# static fields
.field public static final TYPE_IMAGE_BUFFER:I = 0x2

.field public static final TYPE_PRINTER:I = 0x1

.field public static final TYPE_RASTER_SCREEN:I


# instance fields
.field private final fsAppContextLock:Ljava/lang/Object;

.field private fullScreenAppContext:Lorg/apache/poi/sun/awt/AppContext;

.field private fullScreenWindow:Lorg/apache/poi/java/awt/Window;

.field private windowedModeBounds:Lorg/apache/poi/java/awt/Rectangle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/java/awt/GraphicsDevice;->fsAppContextLock:Ljava/lang/Object;

    return-void
.end method

.method public static isWindowOpacitySupported()Z
    .locals 2

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/sun/awt/SunToolkit;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    check-cast v0, Lorg/apache/poi/sun/awt/SunToolkit;

    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/SunToolkit;->isWindowOpacitySupported()Z

    move-result v0

    return v0
.end method

.method public static isWindowShapingSupported()Z
    .locals 2

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/sun/awt/SunToolkit;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    check-cast v0, Lorg/apache/poi/sun/awt/SunToolkit;

    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/SunToolkit;->isWindowShapingSupported()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getAvailableAcceleratedMemory()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getBestConfiguration(Lorg/apache/poi/java/awt/GraphicsConfigTemplate;)Lorg/apache/poi/java/awt/GraphicsConfiguration;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/GraphicsDevice;->getConfigurations()[Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/java/awt/GraphicsConfigTemplate;->getBestConfiguration([Lorg/apache/poi/java/awt/GraphicsConfiguration;)Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public abstract getConfigurations()[Lorg/apache/poi/java/awt/GraphicsConfiguration;
.end method

.method public abstract getDefaultConfiguration()Lorg/apache/poi/java/awt/GraphicsConfiguration;
.end method

.method public getDisplayMode()Lorg/apache/poi/java/awt/DisplayMode;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/GraphicsDevice;->getDefaultConfiguration()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getBounds()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v0

    new-instance v2, Lorg/apache/poi/java/awt/DisplayMode;

    iget v3, v1, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget v1, v1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/image/ColorModel;->getPixelSize()I

    move-result v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v0, v4}, Lorg/apache/poi/java/awt/DisplayMode;-><init>(IIII)V

    return-object v2
.end method

.method public getDisplayModes()[Lorg/apache/poi/java/awt/DisplayMode;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/poi/java/awt/DisplayMode;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/GraphicsDevice;->getDisplayMode()Lorg/apache/poi/java/awt/DisplayMode;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getFullScreenWindow()Lorg/apache/poi/java/awt/Window;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/GraphicsDevice;->fsAppContextLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/GraphicsDevice;->fullScreenAppContext:Lorg/apache/poi/sun/awt/AppContext;

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/GraphicsDevice;->fullScreenWindow:Lorg/apache/poi/java/awt/Window;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract getIDstring()Ljava/lang/String;
.end method

.method public getTranslucencyCapableGC()Lorg/apache/poi/java/awt/GraphicsConfiguration;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/GraphicsDevice;->getDefaultConfiguration()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->isTranslucencyCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/GraphicsDevice;->getConfigurations()[Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->isTranslucencyCapable()Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getType()I
.end method

.method public isDisplayChangeSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFullScreenSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isWindowPerpixelTranslucencySupported()Z
    .locals 3

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/sun/awt/SunToolkit;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    check-cast v0, Lorg/apache/poi/sun/awt/SunToolkit;

    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/SunToolkit;->isWindowTranslucencySupported()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/GraphicsDevice;->getTranslucencyCapableGC()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public isWindowTranslucencySupported(Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;)Z
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/GraphicsDevice$1;->$SwitchMap$java$awt$GraphicsDevice$WindowTranslucency:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/GraphicsDevice;->isWindowPerpixelTranslucencySupported()Z

    move-result p1

    return p1

    :cond_1
    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsDevice;->isWindowOpacitySupported()Z

    move-result p1

    return p1

    :cond_2
    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsDevice;->isWindowShapingSupported()Z

    move-result p1

    return p1
.end method

.method public setDisplayMode(Lorg/apache/poi/java/awt/DisplayMode;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot change display mode"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFullScreenWindow(Lorg/apache/poi/java/awt/Window;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Window;->getShape()Lorg/apache/poi/java/awt/Shape;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/apache/poi/java/awt/Window;->setShape(Lorg/apache/poi/java/awt/Shape;)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Window;->getOpacity()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    invoke-virtual {p1, v2}, Lorg/apache/poi/java/awt/Window;->setOpacity(F)V

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Window;->isOpaque()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Window;->getBackground()Lorg/apache/poi/java/awt/Color;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/java/awt/Color;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Color;->getRed()I

    move-result v3

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Color;->getGreen()I

    move-result v4

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Color;->getBlue()I

    move-result v1

    const/16 v5, 0xff

    invoke-direct {v2, v3, v4, v1, v5}, Lorg/apache/poi/java/awt/Color;-><init>(IIII)V

    invoke-virtual {p1, v2}, Lorg/apache/poi/java/awt/Window;->setBackground(Lorg/apache/poi/java/awt/Color;)V

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getGraphicsConfiguration()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getDevice()Lorg/apache/poi/java/awt/GraphicsDevice;

    move-result-object v2

    if-eq v2, p0, :cond_3

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getDevice()Lorg/apache/poi/java/awt/GraphicsDevice;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/GraphicsDevice;->getFullScreenWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v2

    if-ne v2, p1, :cond_3

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getDevice()Lorg/apache/poi/java/awt/GraphicsDevice;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/java/awt/GraphicsDevice;->setFullScreenWindow(Lorg/apache/poi/java/awt/Window;)V

    :cond_3
    iget-object v1, p0, Lorg/apache/poi/java/awt/GraphicsDevice;->fullScreenWindow:Lorg/apache/poi/java/awt/Window;

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    iget-object v3, p0, Lorg/apache/poi/java/awt/GraphicsDevice;->windowedModeBounds:Lorg/apache/poi/java/awt/Rectangle;

    if-eqz v3, :cond_6

    iget v4, v3, Lorg/apache/poi/java/awt/Rectangle;->width:I

    if-nez v4, :cond_4

    iput v2, v3, Lorg/apache/poi/java/awt/Rectangle;->width:I

    :cond_4
    iget v4, v3, Lorg/apache/poi/java/awt/Rectangle;->height:I

    if-nez v4, :cond_5

    iput v2, v3, Lorg/apache/poi/java/awt/Rectangle;->height:I

    :cond_5
    invoke-virtual {v1, v3}, Lorg/apache/poi/java/awt/Window;->setBounds(Lorg/apache/poi/java/awt/Rectangle;)V

    :cond_6
    iget-object v1, p0, Lorg/apache/poi/java/awt/GraphicsDevice;->fsAppContextLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_7

    :goto_0
    :try_start_0
    iput-object v0, p0, Lorg/apache/poi/java/awt/GraphicsDevice;->fullScreenAppContext:Lorg/apache/poi/sun/awt/AppContext;

    goto :goto_1

    :cond_7
    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v0

    goto :goto_0

    :goto_1
    iput-object p1, p0, Lorg/apache/poi/java/awt/GraphicsDevice;->fullScreenWindow:Lorg/apache/poi/java/awt/Window;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getBounds()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/GraphicsDevice;->windowedModeBounds:Lorg/apache/poi/java/awt/Rectangle;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/GraphicsDevice;->getDefaultConfiguration()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getBounds()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/java/awt/GraphicsDevice;->fullScreenWindow:Lorg/apache/poi/java/awt/Window;

    iget v1, p1, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v3, p1, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v4, p1, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget p1, p1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    invoke-virtual {v0, v1, v3, v4, p1}, Lorg/apache/poi/java/awt/Window;->setBounds(IIII)V

    iget-object p1, p0, Lorg/apache/poi/java/awt/GraphicsDevice;->fullScreenWindow:Lorg/apache/poi/java/awt/Window;

    invoke-virtual {p1, v2}, Lorg/apache/poi/java/awt/Window;->setVisible(Z)V

    iget-object p1, p0, Lorg/apache/poi/java/awt/GraphicsDevice;->fullScreenWindow:Lorg/apache/poi/java/awt/Window;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Window;->toFront()V

    :cond_8
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
