.class public Lorg/apache/poi/java/awt/Robot;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/Robot$RobotDisposer;
    }
.end annotation


# static fields
.field private static LEGAL_BUTTON_MASK:I = 0x0

.field private static final MAX_DELAY:I = 0xea60


# instance fields
.field private transient anchor:Ljava/lang/Object;

.field private autoDelay:I

.field private transient disposer:Lorg/apache/poi/java/awt/Robot$RobotDisposer;

.field private gdLoc:Lorg/apache/poi/java/awt/Point;

.field private isAutoWaitForIdle:Z

.field private peer:Lorg/apache/poi/java/awt/peer/RobotPeer;

.field private screenCapCM:Lorg/apache/poi/java/awt/image/DirectColorModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Robot;->isAutoWaitForIdle:Z

    iput v0, p0, Lorg/apache/poi/java/awt/Robot;->autoDelay:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/java/awt/Robot;->screenCapCM:Lorg/apache/poi/java/awt/image/DirectColorModel;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Robot;->anchor:Ljava/lang/Object;

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Lorg/apache/poi/java/awt/GraphicsEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->getDefaultScreenDevice()Lorg/apache/poi/java/awt/GraphicsDevice;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/java/awt/Robot;->init(Lorg/apache/poi/java/awt/GraphicsDevice;)V

    return-void

    :cond_0
    new-instance v0, Lorg/apache/poi/java/awt/AWTException;

    const-string v1, "headless environment"

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/AWTException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/GraphicsDevice;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Robot;->isAutoWaitForIdle:Z

    iput v0, p0, Lorg/apache/poi/java/awt/Robot;->autoDelay:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/java/awt/Robot;->screenCapCM:Lorg/apache/poi/java/awt/image/DirectColorModel;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Robot;->anchor:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Robot;->checkIsScreenDevice(Lorg/apache/poi/java/awt/GraphicsDevice;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Robot;->init(Lorg/apache/poi/java/awt/GraphicsDevice;)V

    return-void
.end method

.method private afterEvent()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Robot;->autoWaitForIdle()V

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Robot;->autoDelay()V

    return-void
.end method

.method private autoDelay()V
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/Robot;->autoDelay:I

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Robot;->delay(I)V

    return-void
.end method

.method private autoWaitForIdle()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Robot;->isAutoWaitForIdle:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Robot;->waitForIdle()V

    :cond_0
    return-void
.end method

.method private checkButtonsArgument(I)V
    .locals 1

    sget v0, Lorg/apache/poi/java/awt/Robot;->LEGAL_BUTTON_MASK:I

    or-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid combination of button flags"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkDelayArgument(I)V
    .locals 1

    if-ltz p1, :cond_0

    const v0, 0xea60

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Delay must be to 0 to 60,000ms"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkIsScreenDevice(Lorg/apache/poi/java/awt/GraphicsDevice;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/GraphicsDevice;->getType()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not a valid screen device"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkKeycodeArgument(I)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid key code"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkNotDispatchThread()V
    .locals 2

    invoke-static {}, Lorg/apache/poi/java/awt/EventQueue;->isDispatchThread()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Cannot call method from the event dispatcher thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkRobotAllowed()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lorg/apache/poi/sun/security/util/SecurityConstants$AWT;->CREATE_ROBOT_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    return-void
.end method

.method private static checkScreenCaptureAllowed()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lorg/apache/poi/sun/security/util/SecurityConstants$AWT;->READ_DISPLAY_PIXELS_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    return-void
.end method

.method private static checkValidRect(Lorg/apache/poi/java/awt/Rectangle;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    if-lez v0, :cond_0

    iget p0, p0, Lorg/apache/poi/java/awt/Rectangle;->height:I

    if-lez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Rectangle width and height must be > 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private init(Lorg/apache/poi/java/awt/GraphicsDevice;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Robot;->checkRobotAllowed()V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/GraphicsDevice;->getDefaultConfiguration()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getBounds()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Rectangle;->getLocation()Lorg/apache/poi/java/awt/Point;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/java/awt/Robot;->gdLoc:Lorg/apache/poi/java/awt/Point;

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/sun/awt/ComponentFactory;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/sun/awt/ComponentFactory;

    invoke-interface {v0, p0, p1}, Lorg/apache/poi/sun/awt/ComponentFactory;->createRobot(Lorg/apache/poi/java/awt/Robot;Lorg/apache/poi/java/awt/GraphicsDevice;)Lorg/apache/poi/java/awt/peer/RobotPeer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Robot;->peer:Lorg/apache/poi/java/awt/peer/RobotPeer;

    new-instance v0, Lorg/apache/poi/java/awt/Robot$RobotDisposer;

    invoke-direct {v0, p1}, Lorg/apache/poi/java/awt/Robot$RobotDisposer;-><init>(Lorg/apache/poi/java/awt/peer/RobotPeer;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Robot;->disposer:Lorg/apache/poi/java/awt/Robot$RobotDisposer;

    iget-object p1, p0, Lorg/apache/poi/java/awt/Robot;->anchor:Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/apache/poi/sun/java2d/Disposer;->addRecord(Ljava/lang/Object;Lorg/apache/poi/sun/java2d/DisposerRecord;)V

    :cond_0
    invoke-static {}, Lorg/apache/poi/java/awt/Robot;->initLegalButtonMask()V

    return-void
.end method

.method private static declared-synchronized initLegalButtonMask()V
    .locals 5

    const-class v0, Lorg/apache/poi/java/awt/Robot;

    monitor-enter v0

    :try_start_0
    sget v1, Lorg/apache/poi/java/awt/Robot;->LEGAL_BUTTON_MASK:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Toolkit;->areExtraMouseButtonsEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/poi/sun/awt/SunToolkit;

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sun/awt/SunToolkit;

    invoke-virtual {v1}, Lorg/apache/poi/sun/awt/SunToolkit;->getNumberOfButtons()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lorg/apache/poi/java/awt/event/InputEvent;->getMaskForButton(I)I

    move-result v4

    or-int/2addr v3, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :cond_2
    or-int/lit16 v1, v2, 0x1c1c

    sput v1, Lorg/apache/poi/java/awt/Robot;->LEGAL_BUTTON_MASK:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized createScreenCapture(Lorg/apache/poi/java/awt/Rectangle;)Lorg/apache/poi/java/awt/image/BufferedImage;
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/apache/poi/java/awt/Robot;->checkScreenCaptureAllowed()V

    new-instance v0, Lorg/apache/poi/java/awt/Rectangle;

    invoke-direct {v0, p1}, Lorg/apache/poi/java/awt/Rectangle;-><init>(Lorg/apache/poi/java/awt/Rectangle;)V

    iget-object p1, p0, Lorg/apache/poi/java/awt/Robot;->gdLoc:Lorg/apache/poi/java/awt/Point;

    iget v1, p1, Lorg/apache/poi/java/awt/Point;->x:I

    iget p1, p1, Lorg/apache/poi/java/awt/Point;->y:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/java/awt/Rectangle;->translate(II)V

    invoke-static {v0}, Lorg/apache/poi/java/awt/Robot;->checkValidRect(Lorg/apache/poi/java/awt/Rectangle;)V

    iget-object p1, p0, Lorg/apache/poi/java/awt/Robot;->screenCapCM:Lorg/apache/poi/java/awt/image/DirectColorModel;

    if-nez p1, :cond_0

    new-instance p1, Lorg/apache/poi/java/awt/image/DirectColorModel;

    const/16 v1, 0x18

    const/high16 v2, 0xff0000

    const v3, 0xff00

    const/16 v4, 0xff

    invoke-direct {p1, v1, v2, v3, v4}, Lorg/apache/poi/java/awt/image/DirectColorModel;-><init>(IIII)V

    iput-object p1, p0, Lorg/apache/poi/java/awt/Robot;->screenCapCM:Lorg/apache/poi/java/awt/image/DirectColorModel;

    :cond_0
    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Toolkit;->sync()V

    const/4 p1, 0x3

    new-array v5, p1, [I

    iget-object p1, p0, Lorg/apache/poi/java/awt/Robot;->peer:Lorg/apache/poi/java/awt/peer/RobotPeer;

    invoke-interface {p1, v0}, Lorg/apache/poi/java/awt/peer/RobotPeer;->getRGBPixels(Lorg/apache/poi/java/awt/Rectangle;)[I

    move-result-object p1

    new-instance v7, Lorg/apache/poi/java/awt/image/DataBufferInt;

    array-length v1, p1

    invoke-direct {v7, p1, v1}, Lorg/apache/poi/java/awt/image/DataBufferInt;-><init>([II)V

    iget-object p1, p0, Lorg/apache/poi/java/awt/Robot;->screenCapCM:Lorg/apache/poi/java/awt/image/DirectColorModel;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/image/DirectColorModel;->getRedMask()I

    move-result p1

    const/4 v8, 0x0

    aput p1, v5, v8

    const/4 p1, 0x1

    iget-object v1, p0, Lorg/apache/poi/java/awt/Robot;->screenCapCM:Lorg/apache/poi/java/awt/image/DirectColorModel;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/DirectColorModel;->getGreenMask()I

    move-result v1

    aput v1, v5, p1

    const/4 p1, 0x2

    iget-object v1, p0, Lorg/apache/poi/java/awt/Robot;->screenCapCM:Lorg/apache/poi/java/awt/image/DirectColorModel;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/DirectColorModel;->getBlueMask()I

    move-result v1

    aput v1, v5, p1

    iget v4, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget v3, v0, Lorg/apache/poi/java/awt/Rectangle;->height:I

    const/4 v6, 0x0

    move-object v1, v7

    move v2, v4

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/java/awt/image/Raster;->createPackedRaster(Lorg/apache/poi/java/awt/image/DataBuffer;III[ILorg/apache/poi/java/awt/Point;)Lorg/apache/poi/java/awt/image/WritableRaster;

    move-result-object p1

    invoke-static {v7}, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->makeTrackable(Lorg/apache/poi/java/awt/image/DataBuffer;)V

    new-instance v0, Lorg/apache/poi/java/awt/image/BufferedImage;

    iget-object v1, p0, Lorg/apache/poi/java/awt/Robot;->screenCapCM:Lorg/apache/poi/java/awt/image/DirectColorModel;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v8, v2}, Lorg/apache/poi/java/awt/image/BufferedImage;-><init>(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/WritableRaster;ZLjava/util/Hashtable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized delay(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Robot;->checkDelayArgument(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, p1

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAutoDelay()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/poi/java/awt/Robot;->autoDelay:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPixelColor(II)Lorg/apache/poi/java/awt/Color;
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/apache/poi/java/awt/Color;

    iget-object v1, p0, Lorg/apache/poi/java/awt/Robot;->peer:Lorg/apache/poi/java/awt/peer/RobotPeer;

    iget-object v2, p0, Lorg/apache/poi/java/awt/Robot;->gdLoc:Lorg/apache/poi/java/awt/Point;

    iget v3, v2, Lorg/apache/poi/java/awt/Point;->x:I

    add-int/2addr v3, p1

    iget p1, v2, Lorg/apache/poi/java/awt/Point;->y:I

    add-int/2addr p1, p2

    invoke-interface {v1, v3, p1}, Lorg/apache/poi/java/awt/peer/RobotPeer;->getRGBPixel(II)I

    move-result p1

    invoke-direct {v0, p1}, Lorg/apache/poi/java/awt/Color;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isAutoWaitForIdle()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Robot;->isAutoWaitForIdle:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized keyPress(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Robot;->checkKeycodeArgument(I)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/Robot;->peer:Lorg/apache/poi/java/awt/peer/RobotPeer;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/RobotPeer;->keyPress(I)V

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Robot;->afterEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized keyRelease(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Robot;->checkKeycodeArgument(I)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/Robot;->peer:Lorg/apache/poi/java/awt/peer/RobotPeer;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/RobotPeer;->keyRelease(I)V

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Robot;->afterEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized mouseMove(II)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Robot;->peer:Lorg/apache/poi/java/awt/peer/RobotPeer;

    iget-object v1, p0, Lorg/apache/poi/java/awt/Robot;->gdLoc:Lorg/apache/poi/java/awt/Point;

    iget v2, v1, Lorg/apache/poi/java/awt/Point;->x:I

    add-int/2addr v2, p1

    iget p1, v1, Lorg/apache/poi/java/awt/Point;->y:I

    add-int/2addr p1, p2

    invoke-interface {v0, v2, p1}, Lorg/apache/poi/java/awt/peer/RobotPeer;->mouseMove(II)V

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Robot;->afterEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized mousePress(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Robot;->checkButtonsArgument(I)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/Robot;->peer:Lorg/apache/poi/java/awt/peer/RobotPeer;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/RobotPeer;->mousePress(I)V

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Robot;->afterEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized mouseRelease(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Robot;->checkButtonsArgument(I)V

    iget-object v0, p0, Lorg/apache/poi/java/awt/Robot;->peer:Lorg/apache/poi/java/awt/peer/RobotPeer;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/RobotPeer;->mouseRelease(I)V

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Robot;->afterEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized mouseWheel(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Robot;->peer:Lorg/apache/poi/java/awt/peer/RobotPeer;

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/RobotPeer;->mouseWheel(I)V

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Robot;->afterEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAutoDelay(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Robot;->checkDelayArgument(I)V

    iput p1, p0, Lorg/apache/poi/java/awt/Robot;->autoDelay:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAutoWaitForIdle(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Robot;->isAutoWaitForIdle:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoDelay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Robot;->getAutoDelay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "autoWaitForIdle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Robot;->isAutoWaitForIdle()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized waitForIdle()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/java/awt/Robot;->checkNotDispatchThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lorg/apache/poi/sun/awt/SunToolkit;->flushPendingEvents()V

    new-instance v0, Lorg/apache/poi/java/awt/Robot$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/Robot$1;-><init>(Lorg/apache/poi/java/awt/Robot;)V

    invoke-static {v0}, Lorg/apache/poi/java/awt/EventQueue;->invokeAndWait(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Robot.waitForIdle, non-fatal exception caught:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Robot.waitForIdle, non-fatal exception caught:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
