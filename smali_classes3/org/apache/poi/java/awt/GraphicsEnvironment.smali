.class public abstract Lorg/apache/poi/java/awt/GraphicsEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static defaultHeadless:Ljava/lang/Boolean;

.field private static headless:Ljava/lang/Boolean;

.field private static localEnv:Lorg/apache/poi/java/awt/GraphicsEnvironment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    sput-object p0, Lorg/apache/poi/java/awt/GraphicsEnvironment;->headless:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic access$102(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    sput-object p0, Lorg/apache/poi/java/awt/GraphicsEnvironment;->defaultHeadless:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static checkHeadless()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/poi/java/awt/HeadlessException;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/HeadlessException;-><init>()V

    throw v0
.end method

.method private static createGE()Lorg/apache/poi/java/awt/GraphicsEnvironment;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public static getHeadlessMessage()Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/apache/poi/java/awt/GraphicsEnvironment;->headless:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->getHeadlessProperty()Z

    :cond_0
    sget-object v0, Lorg/apache/poi/java/awt/GraphicsEnvironment;->defaultHeadless:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "\nNo X11 DISPLAY variable was set, but this program performed an operation which requires it."

    :goto_0
    return-object v0
.end method

.method private static getHeadlessProperty()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/GraphicsEnvironment;->headless:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/GraphicsEnvironment$1;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/GraphicsEnvironment$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lorg/apache/poi/java/awt/GraphicsEnvironment;->headless:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getLocalGraphicsEnvironment()Lorg/apache/poi/java/awt/GraphicsEnvironment;
    .locals 2

    const-class v0, Lorg/apache/poi/java/awt/GraphicsEnvironment;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/GraphicsEnvironment;->localEnv:Lorg/apache/poi/java/awt/GraphicsEnvironment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->createGE()Lorg/apache/poi/java/awt/GraphicsEnvironment;

    const/4 v1, 0x0

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isHeadless()Z
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->getHeadlessProperty()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract createGraphics(Lorg/apache/poi/java/awt/image/BufferedImage;)Lorg/apache/poi/java/awt/Graphics2D;
.end method

.method public abstract getAllFonts()[Lorg/apache/poi/java/awt/Font;
.end method

.method public abstract getAvailableFontFamilyNames()[Ljava/lang/String;
.end method

.method public abstract getAvailableFontFamilyNames(Ljava/util/Locale;)[Ljava/lang/String;
.end method

.method public getCenterPoint()Lorg/apache/poi/java/awt/Point;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->getDefaultScreenDevice()Lorg/apache/poi/java/awt/GraphicsDevice;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/sun/java2d/SunGraphicsEnvironment;->getUsableBounds(Lorg/apache/poi/java/awt/GraphicsDevice;)Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/java/awt/Point;

    iget v2, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    div-int/lit8 v2, v2, 0x2

    iget v3, v0, Lorg/apache/poi/java/awt/Rectangle;->x:I

    add-int/2addr v2, v3

    iget v3, v0, Lorg/apache/poi/java/awt/Rectangle;->height:I

    div-int/lit8 v3, v3, 0x2

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    add-int/2addr v3, v0

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    return-object v1
.end method

.method public abstract getDefaultScreenDevice()Lorg/apache/poi/java/awt/GraphicsDevice;
.end method

.method public getMaximumWindowBounds()Lorg/apache/poi/java/awt/Rectangle;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->getDefaultScreenDevice()Lorg/apache/poi/java/awt/GraphicsDevice;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/sun/java2d/SunGraphicsEnvironment;->getUsableBounds(Lorg/apache/poi/java/awt/GraphicsDevice;)Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public abstract getScreenDevices()[Lorg/apache/poi/java/awt/GraphicsDevice;
.end method

.method public isHeadlessInstance()Z
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->getHeadlessProperty()Z

    move-result v0

    return v0
.end method

.method public preferLocaleFonts()V
    .locals 1

    invoke-static {}, Lsun/font/FontManagerFactory;->getInstance()Lsun/font/FontManager;

    move-result-object v0

    invoke-interface {v0}, Lsun/font/FontManager;->preferLocaleFonts()V

    return-void
.end method

.method public preferProportionalFonts()V
    .locals 1

    invoke-static {}, Lsun/font/FontManagerFactory;->getInstance()Lsun/font/FontManager;

    move-result-object v0

    invoke-interface {v0}, Lsun/font/FontManager;->preferProportionalFonts()V

    return-void
.end method

.method public registerFont(Lorg/apache/poi/java/awt/Font;)Z
    .locals 1

    const-string v0, "font cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lsun/font/FontManagerFactory;->getInstance()Lsun/font/FontManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lsun/font/FontManager;->registerFont(Lorg/apache/poi/java/awt/Font;)Z

    move-result p1

    return p1
.end method
