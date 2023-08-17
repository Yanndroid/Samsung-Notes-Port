.class public Lorg/apache/poi/java/awt/Window;
.super Lorg/apache/poi/java/awt/Container;
.source "SourceFile"

# interfaces
.implements Ljavax/accessibility/Accessible;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/Window$AccessibleAWTWindow;,
        Lorg/apache/poi/java/awt/Window$Type;,
        Lorg/apache/poi/java/awt/Window$WindowDisposerRecord;
    }
.end annotation


# static fields
.field public static final OPENED:I = 0x1

.field private static final allWindows:Lorg/apache/poi/sun/awt/util/IdentityArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/sun/awt/util/IdentityArrayList<",
            "Lorg/apache/poi/java/awt/Window;",
            ">;"
        }
    .end annotation
.end field

.field private static final base:Ljava/lang/String; = "win"

.field private static final beforeFirstWindowShown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final locationByPlatformProp:Z

.field private static final log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

.field private static nameCounter:I = 0x0

.field private static final serialVersionUID:J = 0x3e6b84dd1d08fa6eL

.field public static systemSyncLWRequests:Z = false


# instance fields
.field private alwaysOnTop:Z

.field public transient anchor:Ljava/lang/Object;

.field private volatile autoRequestFocus:Z

.field public transient beforeFirstShow:Z

.field private transient disposing:Z

.field private focusMgr:Lorg/apache/poi/java/awt/FocusManager;

.field private focusableWindowState:Z

.field public transient icons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/java/awt/Image;",
            ">;"
        }
    .end annotation
.end field

.field public transient inputContext:Lorg/apache/poi/java/awt/im/InputContext;

.field private transient inputContextLock:Ljava/lang/Object;

.field public transient isInShow:Z

.field public transient isTrayIconWindow:Z

.field private locationByPlatform:Z

.field public transient modalBlocker:Lorg/apache/poi/java/awt/Dialog;

.field public modalExclusionType:Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;

.field private opacity:F

.field public transient ownedWindowList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/apache/poi/java/awt/Window;",
            ">;>;"
        }
    .end annotation
.end field

.field private transient securityWarningAlignmentX:F

.field private transient securityWarningAlignmentY:F

.field private volatile transient securityWarningHeight:I

.field private transient securityWarningPointX:D

.field private transient securityWarningPointY:D

.field private volatile transient securityWarningWidth:I

.field private shape:Lorg/apache/poi/java/awt/Shape;

.field public transient showWithParent:Z

.field public state:I

.field public syncLWRequests:Z

.field private transient temporaryLostComponent:Lorg/apache/poi/java/awt/Component;

.field private type:Lorg/apache/poi/java/awt/Window$Type;

.field public warningString:Ljava/lang/String;

.field private transient weakThis:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/apache/poi/java/awt/Window;",
            ">;"
        }
    .end annotation
.end field

.field public transient windowFocusListener:Lorg/apache/poi/java/awt/event/WindowFocusListener;

.field public transient windowListener:Lorg/apache/poi/java/awt/event/WindowListener;

.field private windowSerializedDataVersion:I

.field public transient windowStateListener:Lorg/apache/poi/java/awt/event/WindowStateListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    invoke-direct {v0}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;-><init>()V

    sput-object v0, Lorg/apache/poi/java/awt/Window;->allWindows:Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    const/4 v0, 0x0

    sput v0, Lorg/apache/poi/java/awt/Window;->nameCounter:I

    const-string v1, "org.apache.poi.java.awt.Window"

    invoke-static {v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/java/awt/Window;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Window;->initIDs()V

    :cond_0
    new-instance v1, Lorg/apache/poi/sun/security/action/GetPropertyAction;

    const-string v2, "org.apache.poi.java.awt.syncLWRequests"

    invoke-direct {v1, v2}, Lorg/apache/poi/sun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "true"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    sput-boolean v1, Lorg/apache/poi/java/awt/Window;->systemSyncLWRequests:Z

    new-instance v1, Lorg/apache/poi/sun/security/action/GetPropertyAction;

    const-string v4, "org.apache.poi.java.awt.Window.locationByPlatform"

    invoke-direct {v1, v4}, Lorg/apache/poi/sun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v3

    :cond_2
    sput-boolean v0, Lorg/apache/poi/java/awt/Window;->locationByPlatformProp:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lorg/apache/poi/java/awt/Window;->beforeFirstWindowShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lorg/apache/poi/java/awt/Window$1;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/Window$1;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/sun/awt/AWTAccessor;->setWindowAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$WindowAccessor;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Container;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Window;->syncLWRequests:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Window;->beforeFirstShow:Z

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Window;->disposing:Z

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/poi/java/awt/Window;->ownedWindowList:Ljava/util/Vector;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/apache/poi/java/awt/Window;->inputContextLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Window;->focusableWindowState:Z

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Window;->autoRequestFocus:Z

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Window;->isInShow:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/apache/poi/java/awt/Window;->opacity:F

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/poi/java/awt/Window;->shape:Lorg/apache/poi/java/awt/Shape;

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Window;->isTrayIconWindow:Z

    iput v0, p0, Lorg/apache/poi/java/awt/Window;->securityWarningWidth:I

    iput v0, p0, Lorg/apache/poi/java/awt/Window;->securityWarningHeight:I

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    iput-wide v3, p0, Lorg/apache/poi/java/awt/Window;->securityWarningPointX:D

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lorg/apache/poi/java/awt/Window;->securityWarningPointY:D

    iput v1, p0, Lorg/apache/poi/java/awt/Window;->securityWarningAlignmentX:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/java/awt/Window;->securityWarningAlignmentY:F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Window;->anchor:Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/java/awt/Window$Type;->NORMAL:Lorg/apache/poi/java/awt/Window$Type;

    iput-object v0, p0, Lorg/apache/poi/java/awt/Window;->type:Lorg/apache/poi/java/awt/Window$Type;

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/poi/java/awt/Window;->windowSerializedDataVersion:I

    sget-boolean v0, Lorg/apache/poi/java/awt/Window;->locationByPlatformProp:Z

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Window;->locationByPlatform:Z

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    invoke-direct {p0, v2}, Lorg/apache/poi/java/awt/Window;->init(Lorg/apache/poi/java/awt/GraphicsConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Frame;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getGraphicsConfiguration()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/poi/java/awt/Window;-><init>(Lorg/apache/poi/java/awt/GraphicsConfiguration;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Window;->ownedInit(Lorg/apache/poi/java/awt/Window;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/GraphicsConfiguration;)V
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Container;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Window;->syncLWRequests:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Window;->beforeFirstShow:Z

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Window;->disposing:Z

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/poi/java/awt/Window;->ownedWindowList:Ljava/util/Vector;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/apache/poi/java/awt/Window;->inputContextLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Window;->focusableWindowState:Z

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Window;->autoRequestFocus:Z

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Window;->isInShow:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/apache/poi/java/awt/Window;->opacity:F

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/poi/java/awt/Window;->shape:Lorg/apache/poi/java/awt/Shape;

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Window;->isTrayIconWindow:Z

    iput v0, p0, Lorg/apache/poi/java/awt/Window;->securityWarningWidth:I

    iput v0, p0, Lorg/apache/poi/java/awt/Window;->securityWarningHeight:I

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iput-wide v2, p0, Lorg/apache/poi/java/awt/Window;->securityWarningPointX:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/apache/poi/java/awt/Window;->securityWarningPointY:D

    iput v1, p0, Lorg/apache/poi/java/awt/Window;->securityWarningAlignmentX:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/java/awt/Window;->securityWarningAlignmentY:F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Window;->anchor:Ljava/lang/Object;

    sget-object v0, Lorg/apache/poi/java/awt/Window$Type;->NORMAL:Lorg/apache/poi/java/awt/Window$Type;

    iput-object v0, p0, Lorg/apache/poi/java/awt/Window;->type:Lorg/apache/poi/java/awt/Window$Type;

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/poi/java/awt/Window;->windowSerializedDataVersion:I

    sget-boolean v0, Lorg/apache/poi/java/awt/Window;->locationByPlatformProp:Z

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Window;->locationByPlatform:Z

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Window;->init(Lorg/apache/poi/java/awt/GraphicsConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Window;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getGraphicsConfiguration()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/poi/java/awt/Window;-><init>(Lorg/apache/poi/java/awt/GraphicsConfiguration;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Window;->ownedInit(Lorg/apache/poi/java/awt/Window;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Window;Lorg/apache/poi/java/awt/GraphicsConfiguration;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/apache/poi/java/awt/Window;-><init>(Lorg/apache/poi/java/awt/GraphicsConfiguration;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Window;->ownedInit(Lorg/apache/poi/java/awt/Window;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/java/awt/Window;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/java/awt/Window;->weakThis:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/apache/poi/sun/awt/AppContext;Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/Window;->removeFromWindowList(Lorg/apache/poi/sun/awt/AppContext;Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public static synthetic access$1002(Lorg/apache/poi/java/awt/Window;F)F
    .locals 0

    iput p1, p0, Lorg/apache/poi/java/awt/Window;->securityWarningAlignmentX:F

    return p1
.end method

.method public static synthetic access$1102(Lorg/apache/poi/java/awt/Window;F)F
    .locals 0

    iput p1, p0, Lorg/apache/poi/java/awt/Window;->securityWarningAlignmentY:F

    return p1
.end method

.method public static synthetic access$1200(Lorg/apache/poi/java/awt/Window;DDDD)Lorg/apache/poi/java/awt/geom/Point2D;
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/apache/poi/java/awt/Window;->calculateSecurityWarningPosition(DDDD)Lorg/apache/poi/java/awt/geom/Point2D;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1300(Lorg/apache/poi/java/awt/Window;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/java/awt/Window;->autoRequestFocus:Z

    return p0
.end method

.method public static synthetic access$202(Lorg/apache/poi/java/awt/Window;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Window;->disposing:Z

    return p1
.end method

.method public static synthetic access$300(Lorg/apache/poi/java/awt/Window;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/java/awt/Window;->inputContextLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/apache/poi/java/awt/Window;)F
    .locals 0

    iget p0, p0, Lorg/apache/poi/java/awt/Window;->opacity:F

    return p0
.end method

.method public static synthetic access$500(Lorg/apache/poi/java/awt/Window;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Window;->updateWindow()V

    return-void
.end method

.method public static synthetic access$600(Lorg/apache/poi/java/awt/Window;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/java/awt/Window;->securityWarningWidth:I

    return p0
.end method

.method public static synthetic access$602(Lorg/apache/poi/java/awt/Window;I)I
    .locals 0

    iput p1, p0, Lorg/apache/poi/java/awt/Window;->securityWarningWidth:I

    return p1
.end method

.method public static synthetic access$700(Lorg/apache/poi/java/awt/Window;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/java/awt/Window;->securityWarningHeight:I

    return p0
.end method

.method public static synthetic access$702(Lorg/apache/poi/java/awt/Window;I)I
    .locals 0

    iput p1, p0, Lorg/apache/poi/java/awt/Window;->securityWarningHeight:I

    return p1
.end method

.method public static synthetic access$802(Lorg/apache/poi/java/awt/Window;D)D
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/java/awt/Window;->securityWarningPointX:D

    return-wide p1
.end method

.method public static synthetic access$902(Lorg/apache/poi/java/awt/Window;D)D
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/java/awt/Window;->securityWarningPointY:D

    return-wide p1
.end method

.method private addToWindowList()V
    .locals 4

    const-class v0, Lorg/apache/poi/java/awt/Window;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    const-class v2, Lorg/apache/poi/java/awt/Window;

    invoke-virtual {v1, v2}, Lorg/apache/poi/sun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iget-object v2, p0, Lorg/apache/poi/java/awt/Component;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    const-class v3, Lorg/apache/poi/java/awt/Window;

    invoke-virtual {v2, v3, v1}, Lorg/apache/poi/sun/awt/AppContext;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lorg/apache/poi/java/awt/Window;->weakThis:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private calculateSecurityWarningPosition(DDDD)Lorg/apache/poi/java/awt/geom/Point2D;
    .locals 13

    move-object v0, p0

    iget v1, v0, Lorg/apache/poi/java/awt/Window;->securityWarningAlignmentX:F

    float-to-double v1, v1

    mul-double v1, v1, p5

    add-double/2addr v1, p1

    iget-wide v3, v0, Lorg/apache/poi/java/awt/Window;->securityWarningPointX:D

    add-double v5, v1, v3

    iget v1, v0, Lorg/apache/poi/java/awt/Window;->securityWarningAlignmentY:F

    float-to-double v1, v1

    mul-double v1, v1, p7

    add-double v1, p3, v1

    iget-wide v3, v0, Lorg/apache/poi/java/awt/Window;->securityWarningPointY:D

    add-double/2addr v1, v3

    iget v3, v0, Lorg/apache/poi/java/awt/Window;->securityWarningWidth:I

    int-to-double v3, v3

    sub-double v3, p1, v3

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    sub-double v7, v3, v11

    add-double v3, p1, p5

    add-double v9, v3, v11

    invoke-static/range {v5 .. v10}, Lorg/apache/poi/java/awt/Window;->limit(DDD)D

    move-result-wide v3

    iget v5, v0, Lorg/apache/poi/java/awt/Window;->securityWarningHeight:I

    int-to-double v5, v5

    sub-double v5, p3, v5

    sub-double/2addr v5, v11

    add-double v7, p3, p7

    add-double/2addr v7, v11

    move-wide p1, v1

    move-wide/from16 p3, v5

    move-wide/from16 p5, v7

    invoke-static/range {p1 .. p6}, Lorg/apache/poi/java/awt/Window;->limit(DDD)D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getGraphicsConfiguration_NoClientCode()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getBounds()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v6

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v7

    invoke-virtual {v7, v5}, Lorg/apache/poi/java/awt/Toolkit;->getScreenInsets(Lorg/apache/poi/java/awt/GraphicsConfiguration;)Lorg/apache/poi/java/awt/Insets;

    move-result-object v5

    iget v7, v6, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v8, v5, Lorg/apache/poi/java/awt/Insets;->left:I

    add-int/2addr v8, v7

    int-to-double v8, v8

    iget v10, v6, Lorg/apache/poi/java/awt/Rectangle;->width:I

    add-int/2addr v7, v10

    iget v10, v5, Lorg/apache/poi/java/awt/Insets;->right:I

    sub-int/2addr v7, v10

    iget v10, v0, Lorg/apache/poi/java/awt/Window;->securityWarningWidth:I

    sub-int/2addr v7, v10

    int-to-double v10, v7

    move-wide p1, v3

    move-wide/from16 p3, v8

    move-wide/from16 p5, v10

    invoke-static/range {p1 .. p6}, Lorg/apache/poi/java/awt/Window;->limit(DDD)D

    move-result-wide v3

    iget v7, v6, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v8, v5, Lorg/apache/poi/java/awt/Insets;->top:I

    add-int/2addr v8, v7

    int-to-double v8, v8

    iget v6, v6, Lorg/apache/poi/java/awt/Rectangle;->height:I

    add-int/2addr v7, v6

    iget v5, v5, Lorg/apache/poi/java/awt/Insets;->bottom:I

    sub-int/2addr v7, v5

    iget v5, v0, Lorg/apache/poi/java/awt/Window;->securityWarningHeight:I

    sub-int/2addr v7, v5

    int-to-double v5, v7

    move-wide p1, v1

    move-wide/from16 p3, v8

    move-wide/from16 p5, v5

    invoke-static/range {p1 .. p6}, Lorg/apache/poi/java/awt/Window;->limit(DDD)D

    move-result-wide v1

    new-instance v5, Lorg/apache/poi/java/awt/geom/Point2D$Double;

    invoke-direct {v5, v3, v4, v1, v2}, Lorg/apache/poi/java/awt/geom/Point2D$Double;-><init>(DD)V

    return-object v5
.end method

.method private deserializeResources(Ljava/io/ObjectInputStream;)V
    .locals 2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Window;->ownedWindowList:Ljava/util/Vector;

    iget v0, p0, Lorg/apache/poi/java/awt/Window;->windowSerializedDataVersion:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->focusMgr:Lorg/apache/poi/java/awt/FocusManager;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/apache/poi/java/awt/FocusManager;->focusOwner:Lorg/apache/poi/java/awt/Component;

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setMostRecentFocusOwner(Lorg/apache/poi/java/awt/Window;Lorg/apache/poi/java/awt/Component;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Window;->focusableWindowState:Z

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "windowL"

    if-ne v1, v0, :cond_2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/event/WindowListener;

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/java/awt/event/WindowListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Window;->addWindowListener(Lorg/apache/poi/java/awt/event/WindowListener;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "windowFocusL"

    if-ne v1, v0, :cond_3

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/event/WindowFocusListener;

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/java/awt/event/WindowFocusListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Window;->addWindowFocusListener(Lorg/apache/poi/java/awt/event/WindowFocusListener;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "windowStateL"

    if-ne v1, v0, :cond_4

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/event/WindowStateListener;

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/java/awt/event/WindowStateListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Window;->addWindowStateListener(Lorg/apache/poi/java/awt/event/WindowStateListener;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    goto :goto_0

    :cond_5
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ownedL"

    if-ne v1, v0, :cond_6

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/Window;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Window;->connectOwnedWindow(Lorg/apache/poi/java/awt/Window;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/java/awt/Window;->icons:Ljava/util/List;

    :goto_2
    if-eqz v0, :cond_9

    instance-of v1, v0, Lorg/apache/poi/java/awt/Image;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/apache/poi/java/awt/Window;->icons:Ljava/util/List;

    check-cast v0, Lorg/apache/poi/java/awt/Image;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/OptionalDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    :cond_9
    return-void
.end method

.method public static getAllUnblockedWindows()Lorg/apache/poi/sun/awt/util/IdentityArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sun/awt/util/IdentityArrayList<",
            "Lorg/apache/poi/java/awt/Window;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/apache/poi/java/awt/Window;->allWindows:Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    invoke-direct {v1}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lorg/apache/poi/java/awt/Window;->allWindows:Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    invoke-virtual {v3}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-virtual {v3, v2}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/java/awt/Window;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Window;->isModalBlocked()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v3}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getAllWindows()Lorg/apache/poi/sun/awt/util/IdentityArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sun/awt/util/IdentityArrayList<",
            "Lorg/apache/poi/java/awt/Window;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/apache/poi/java/awt/Window;->allWindows:Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    invoke-direct {v1}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;-><init>()V

    invoke-virtual {v1, v0}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getOwnerlessWindows()[Lorg/apache/poi/java/awt/Window;
    .locals 7

    invoke-static {}, Lorg/apache/poi/java/awt/Window;->getWindows()[Lorg/apache/poi/java/awt/Window;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/Window;->getOwner()Lorg/apache/poi/java/awt/Window;

    move-result-object v5

    if-nez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array v1, v4, [Lorg/apache/poi/java/awt/Window;

    array-length v3, v0

    move v4, v2

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/Window;->getOwner()Lorg/apache/poi/java/awt/Window;

    move-result-object v6

    if-nez v6, :cond_2

    add-int/lit8 v6, v4, 0x1

    aput-object v5, v1, v4

    move v4, v6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public static getWindows()[Lorg/apache/poi/java/awt/Window;
    .locals 1

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/java/awt/Window;->getWindows(Lorg/apache/poi/sun/awt/AppContext;)[Lorg/apache/poi/java/awt/Window;

    move-result-object v0

    return-object v0
.end method

.method private static getWindows(Lorg/apache/poi/sun/awt/AppContext;)[Lorg/apache/poi/java/awt/Window;
    .locals 7

    const-class v0, Lorg/apache/poi/java/awt/Window;

    monitor-enter v0

    :try_start_0
    const-class v1, Lorg/apache/poi/java/awt/Window;

    invoke-virtual {p0, v1}, Lorg/apache/poi/sun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Vector;

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v3, v2, [Lorg/apache/poi/java/awt/Window;

    move v4, v1

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/java/awt/Window;

    if-eqz v5, :cond_0

    add-int/lit8 v6, v4, 0x1

    aput-object v5, v3, v4

    move v4, v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eq v2, v4, :cond_3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, [Lorg/apache/poi/java/awt/Window;

    goto :goto_1

    :cond_2
    new-array v3, v1, [Lorg/apache/poi/java/awt/Window;

    :cond_3
    :goto_1
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private init(Lorg/apache/poi/java/awt/GraphicsConfiguration;)V
    .locals 3

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    sget-boolean v0, Lorg/apache/poi/java/awt/Window;->systemSyncLWRequests:Z

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Window;->syncLWRequests:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Window;->weakThis:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Window;->addToWindowList()V

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Window;->setWarningString()V

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/poi/java/awt/Cursor;->getPredefinedCursor(I)Lorg/apache/poi/java/awt/Cursor;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/Component;->cursor:Lorg/apache/poi/java/awt/Cursor;

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->visible:Z

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Window;->initGC(Lorg/apache/poi/java/awt/GraphicsConfiguration;)Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getDevice()Lorg/apache/poi/java/awt/GraphicsDevice;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/GraphicsDevice;->getType()I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/poi/java/awt/BorderLayout;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/BorderLayout;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Container;->setLayout(Lorg/apache/poi/java/awt/LayoutManager;)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getBounds()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/poi/java/awt/Toolkit;->getScreenInsets(Lorg/apache/poi/java/awt/GraphicsConfiguration;)Lorg/apache/poi/java/awt/Insets;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getX()I

    move-result v1

    iget v2, v0, Lorg/apache/poi/java/awt/Rectangle;->x:I

    add-int/2addr v1, v2

    iget v2, p1, Lorg/apache/poi/java/awt/Insets;->left:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getY()I

    move-result v2

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    add-int/2addr v2, v0

    iget p1, p1, Lorg/apache/poi/java/awt/Insets;->top:I

    add-int/2addr v2, p1

    iget p1, p0, Lorg/apache/poi/java/awt/Component;->x:I

    if-ne v1, p1, :cond_0

    iget p1, p0, Lorg/apache/poi/java/awt/Component;->y:I

    if-eq v2, p1, :cond_1

    :cond_0
    invoke-virtual {p0, v1, v2}, Lorg/apache/poi/java/awt/Window;->setLocation(II)V

    sget-boolean p1, Lorg/apache/poi/java/awt/Window;->locationByPlatformProp:Z

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Window;->setLocationByPlatform(Z)V

    :cond_1
    sget-object p1, Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;->NO_EXCLUDE:Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;

    iput-object p1, p0, Lorg/apache/poi/java/awt/Window;->modalExclusionType:Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;

    invoke-static {p0}, Lorg/apache/poi/sun/awt/SunToolkit;->checkAndSetPolicy(Lorg/apache/poi/java/awt/Container;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not a screen device"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initDeserializedWindow()V
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Window;->setWarningString()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Window;->inputContextLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->visible:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Window;->weakThis:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Window;->anchor:Ljava/lang/Object;

    new-instance v1, Lorg/apache/poi/java/awt/Window$WindowDisposerRecord;

    iget-object v2, p0, Lorg/apache/poi/java/awt/Component;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    invoke-direct {v1, v2, p0}, Lorg/apache/poi/java/awt/Window$WindowDisposerRecord;-><init>(Lorg/apache/poi/sun/awt/AppContext;Lorg/apache/poi/java/awt/Window;)V

    invoke-static {v0, v1}, Lorg/apache/poi/sun/java2d/Disposer;->addRecord(Ljava/lang/Object;Lorg/apache/poi/sun/java2d/DisposerRecord;)V

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Window;->addToWindowList()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/java/awt/Window;->initGC(Lorg/apache/poi/java/awt/GraphicsConfiguration;)Lorg/apache/poi/java/awt/GraphicsConfiguration;

    return-void
.end method

.method private initGC(Lorg/apache/poi/java/awt/GraphicsConfiguration;)Lorg/apache/poi/java/awt/GraphicsConfiguration;
    .locals 0

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    if-nez p1, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Lorg/apache/poi/java/awt/GraphicsEnvironment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->getDefaultScreenDevice()Lorg/apache/poi/java/awt/GraphicsDevice;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/GraphicsDevice;->getDefaultConfiguration()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Window;->setGraphicsConfiguration(Lorg/apache/poi/java/awt/GraphicsConfiguration;)V

    return-object p1
.end method

.method private static native initIDs()V
.end method

.method private static limit(DDD)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private ownedInit(Lorg/apache/poi/java/awt/Window;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->weakThis:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, v0}, Lorg/apache/poi/java/awt/Window;->addOwnedWindow(Ljava/lang/ref/WeakReference;)V

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/java/awt/Window;->anchor:Ljava/lang/Object;

    new-instance v0, Lorg/apache/poi/java/awt/Window$WindowDisposerRecord;

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/java/awt/Window$WindowDisposerRecord;-><init>(Lorg/apache/poi/sun/awt/AppContext;Lorg/apache/poi/java/awt/Window;)V

    invoke-static {p1, v0}, Lorg/apache/poi/sun/java2d/Disposer;->addRecord(Ljava/lang/Object;Lorg/apache/poi/sun/java2d/DisposerRecord;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Window;->initDeserializedWindow()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    sget-boolean v1, Lorg/apache/poi/java/awt/Window;->systemSyncLWRequests:Z

    const-string/jumbo v2, "syncLWRequests"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Window;->syncLWRequests:Z

    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/java/awt/Window;->state:I

    const-string v1, "focusableWindowState"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Window;->focusableWindowState:Z

    const-string/jumbo v1, "windowSerializedDataVersion"

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/java/awt/Window;->windowSerializedDataVersion:I

    sget-boolean v1, Lorg/apache/poi/java/awt/Window;->locationByPlatformProp:Z

    const-string v3, "locationByPlatform"

    invoke-virtual {v0, v3, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Window;->locationByPlatform:Z

    const-string v1, "focusMgr"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/FocusManager;

    iput-object v1, p0, Lorg/apache/poi/java/awt/Window;->focusMgr:Lorg/apache/poi/java/awt/FocusManager;

    sget-object v1, Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;->NO_EXCLUDE:Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;

    const-string v4, "modalExclusionType"

    invoke-virtual {v0, v4, v1}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/Window;->setModalExclusionType(Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;)V

    const-string v1, "alwaysOnTop"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/Window;->setAlwaysOnTop(Z)V

    :cond_0
    const-string/jumbo v1, "shape"

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/Shape;

    iput-object v1, p0, Lorg/apache/poi/java/awt/Window;->shape:Lorg/apache/poi/java/awt/Shape;

    const-string v1, "opacity"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lorg/apache/poi/java/awt/Window;->opacity:F

    iput v2, p0, Lorg/apache/poi/java/awt/Window;->securityWarningWidth:I

    iput v2, p0, Lorg/apache/poi/java/awt/Window;->securityWarningHeight:I

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/Window;->securityWarningPointX:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/java/awt/Window;->securityWarningPointY:D

    iput v3, p0, Lorg/apache/poi/java/awt/Window;->securityWarningAlignmentX:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/java/awt/Window;->securityWarningAlignmentY:F

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Window;->deserializeResources(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private removeFromWindowList()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    iget-object v1, p0, Lorg/apache/poi/java/awt/Window;->weakThis:Ljava/lang/ref/WeakReference;

    invoke-static {v0, v1}, Lorg/apache/poi/java/awt/Window;->removeFromWindowList(Lorg/apache/poi/sun/awt/AppContext;Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method private static removeFromWindowList(Lorg/apache/poi/sun/awt/AppContext;Ljava/lang/ref/WeakReference;)V
    .locals 2

    const-class v0, Lorg/apache/poi/java/awt/Window;

    monitor-enter v0

    :try_start_0
    const-class v1, Lorg/apache/poi/java/awt/Window;

    invoke-virtual {p0, v1}, Lorg/apache/poi/sun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Vector;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static setLayersOpaque(Lorg/apache/poi/java/awt/Component;Z)V
    .locals 3

    const-string v0, "javax.swing.RootPaneContainer"

    invoke-static {p0, v0}, Lorg/apache/poi/sun/awt/SunToolkit;->isInstanceOf(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p0, Ljavax/swing/RootPaneContainer;

    invoke-interface {p0}, Ljavax/swing/RootPaneContainer;->getRootPane()Ljavax/swing/JRootPane;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/swing/JRootPane;->getLayeredPane()Ljavax/swing/JLayeredPane;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/swing/JRootPane;->getContentPane()Lorg/apache/poi/java/awt/Container;

    move-result-object v1

    instance-of v2, v1, Ljavax/swing/JComponent;

    if-eqz v2, :cond_0

    check-cast v1, Ljavax/swing/JComponent;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Ljavax/swing/JLayeredPane;->setOpaque(Z)V

    invoke-virtual {p0, p1}, Ljavax/swing/JRootPane;->setOpaque(Z)V

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljavax/swing/JComponent;->setOpaque(Z)V

    invoke-virtual {v1}, Ljavax/swing/JComponent;->getComponentCount()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Ljavax/swing/JComponent;->getComponent(I)Lorg/apache/poi/java/awt/Component;

    move-result-object p0

    instance-of v0, p0, Ljavax/swing/RootPaneContainer;

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/Window;->setLayersOpaque(Lorg/apache/poi/java/awt/Component;Z)V

    :cond_1
    return-void
.end method

.method private setWarningString()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/java/awt/Window;->warningString:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkTopLevelWindow(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/sun/security/action/GetPropertyAction;

    const-string v1, "awt.appletWarning"

    const-string v2, "Java Applet Window"

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/sun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/java/awt/Window;->warningString:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static updateChildFocusableWindowState(Lorg/apache/poi/java/awt/Window;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/peer/WindowPeer;

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/WindowPeer;->updateFocusableWindowState()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Window;->ownedWindowList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/java/awt/Window;->ownedWindowList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/Window;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lorg/apache/poi/java/awt/Window;->updateChildFocusableWindowState(Lorg/apache/poi/java/awt/Window;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateWindow()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/peer/WindowPeer;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/poi/java/awt/peer/WindowPeer;->updateWindow()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/apache/poi/java/awt/FocusManager;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/FocusManager;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Window;->focusMgr:Lorg/apache/poi/java/awt/FocusManager;

    iput-object p0, v0, Lorg/apache/poi/java/awt/FocusManager;->focusRoot:Lorg/apache/poi/java/awt/Container;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getMostRecentFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/java/awt/FocusManager;->focusOwner:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/java/awt/Window;->focusMgr:Lorg/apache/poi/java/awt/FocusManager;

    const-string/jumbo v1, "windowL"

    iget-object v2, p0, Lorg/apache/poi/java/awt/Window;->windowListener:Lorg/apache/poi/java/awt/event/WindowListener;

    invoke-static {p1, v1, v2}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->save(Ljava/io/ObjectOutputStream;Ljava/lang/String;Ljava/util/EventListener;)V

    const-string/jumbo v1, "windowFocusL"

    iget-object v2, p0, Lorg/apache/poi/java/awt/Window;->windowFocusListener:Lorg/apache/poi/java/awt/event/WindowFocusListener;

    invoke-static {p1, v1, v2}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->save(Ljava/io/ObjectOutputStream;Ljava/lang/String;Ljava/util/EventListener;)V

    const-string/jumbo v1, "windowStateL"

    iget-object v2, p0, Lorg/apache/poi/java/awt/Window;->windowStateListener:Lorg/apache/poi/java/awt/event/WindowStateListener;

    invoke-static {p1, v1, v2}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->save(Ljava/io/ObjectOutputStream;Ljava/lang/String;Ljava/util/EventListener;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/poi/java/awt/Window;->ownedWindowList:Ljava/util/Vector;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_1
    iget-object v3, p0, Lorg/apache/poi/java/awt/Window;->ownedWindowList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/apache/poi/java/awt/Window;->ownedWindowList:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/java/awt/Window;

    if-eqz v3, :cond_0

    const-string v4, "ownedL"

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/poi/java/awt/Window;->icons:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/Image;

    instance-of v3, v2, Ljava/io/Serializable;

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method


# virtual methods
.method public addNotify()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Container;->addNotify()V

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/poi/java/awt/Toolkit;->createWindow(Lorg/apache/poi/java/awt/Window;)Lorg/apache/poi/java/awt/peer/WindowPeer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    :cond_1
    sget-object v1, Lorg/apache/poi/java/awt/Window;->allWindows:Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, p0}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-super {p0}, Lorg/apache/poi/java/awt/Container;->addNotify()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public addOwnedWindow(Ljava/lang/ref/WeakReference;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->ownedWindowList:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Window;->ownedWindowList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Window;->ownedWindowList:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Container;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    return-void
.end method

.method public addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/poi/java/awt/Container;->addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    return-void
.end method

.method public declared-synchronized addWindowFocusListener(Lorg/apache/poi/java/awt/event/WindowFocusListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->windowFocusListener:Lorg/apache/poi/java/awt/event/WindowFocusListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->add(Lorg/apache/poi/java/awt/event/WindowFocusListener;Lorg/apache/poi/java/awt/event/WindowFocusListener;)Lorg/apache/poi/java/awt/event/WindowFocusListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Window;->windowFocusListener:Lorg/apache/poi/java/awt/event/WindowFocusListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Component;->newEventsOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addWindowListener(Lorg/apache/poi/java/awt/event/WindowListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->newEventsOnly:Z

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->windowListener:Lorg/apache/poi/java/awt/event/WindowListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->add(Lorg/apache/poi/java/awt/event/WindowListener;Lorg/apache/poi/java/awt/event/WindowListener;)Lorg/apache/poi/java/awt/event/WindowListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Window;->windowListener:Lorg/apache/poi/java/awt/event/WindowListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addWindowStateListener(Lorg/apache/poi/java/awt/event/WindowStateListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->windowStateListener:Lorg/apache/poi/java/awt/event/WindowStateListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->add(Lorg/apache/poi/java/awt/event/WindowStateListener;Lorg/apache/poi/java/awt/event/WindowStateListener;)Lorg/apache/poi/java/awt/event/WindowStateListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Window;->windowStateListener:Lorg/apache/poi/java/awt/event/WindowStateListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Component;->newEventsOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public adjustDecendantsOnParent(I)V
    .locals 0

    return-void
.end method

.method public adjustListeningChildrenOnParent(JI)V
    .locals 0

    return-void
.end method

.method public final applyCompoundShape(Lorg/apache/poi/sun/java2d/pipe/Region;)V
    .locals 0

    return-void
.end method

.method public final applyCurrentShape()V
    .locals 0

    return-void
.end method

.method public applyResourceBundle(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Window;->applyResourceBundle(Ljava/util/ResourceBundle;)V

    return-void
.end method

.method public applyResourceBundle(Ljava/util/ResourceBundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lorg/apache/poi/java/awt/ComponentOrientation;->getOrientation(Ljava/util/ResourceBundle;)Lorg/apache/poi/java/awt/ComponentOrientation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Container;->applyComponentOrientation(Lorg/apache/poi/java/awt/ComponentOrientation;)V

    return-void
.end method

.method public canContainFocusOwner(Lorg/apache/poi/java/awt/Component;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Container;->canContainFocusOwner(Lorg/apache/poi/java/awt/Component;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->isFocusableWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final clearMostRecentFocusOwnerOnHide()V
    .locals 0

    return-void
.end method

.method public final closeSplashScreen()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Window;->isTrayIconWindow:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/apache/poi/java/awt/Window;->beforeFirstWindowShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/apache/poi/sun/awt/SunToolkit;->closeSplashScreen()V

    invoke-static {}, Lorg/apache/poi/java/awt/SplashScreen;->markClosed()V

    :cond_1
    return-void
.end method

.method public connectOwnedWindow(Lorg/apache/poi/java/awt/Window;)V
    .locals 0

    iput-object p0, p1, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    iget-object p1, p1, Lorg/apache/poi/java/awt/Window;->weakThis:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Window;->addOwnedWindow(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public constructComponentName()Ljava/lang/String;
    .locals 4

    const-class v0, Lorg/apache/poi/java/awt/Window;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "win"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/apache/poi/java/awt/Window;->nameCounter:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/apache/poi/java/awt/Window;->nameCounter:I

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

.method public deliverMouseWheelToAncestor(Lorg/apache/poi/java/awt/event/MouseWheelEvent;)V
    .locals 0

    return-void
.end method

.method public dispatchEventImpl(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/AWTEvent;->getID()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->invalidate()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->validate()V

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Container;->dispatchEventImpl(Lorg/apache/poi/java/awt/AWTEvent;)V

    return-void
.end method

.method public dispatchMouseWheelToAncestor(Lorg/apache/poi/java/awt/event/MouseWheelEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public dispose()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->doDispose()V

    return-void
.end method

.method public disposeImpl()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->dispose()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->doDispose()V

    :cond_0
    return-void
.end method

.method public doDispose()V
    .locals 3

    new-instance v0, Lorg/apache/poi/java/awt/Window$1DisposeAction;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/Window$1DisposeAction;-><init>(Lorg/apache/poi/java/awt/Window;)V

    invoke-static {}, Lorg/apache/poi/java/awt/EventQueue;->isDispatchThread()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Window$1DisposeAction;->run()V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0, v0}, Lorg/apache/poi/java/awt/EventQueue;->invokeAndWait(Ljava/lang/Object;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Exception during disposal:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Disposal was interrupted:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/16 v0, 0xca

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Window;->postWindowEvent(I)V

    return-void
.end method

.method public eventEnabled(Lorg/apache/poi/java/awt/AWTEvent;)Z
    .locals 9

    iget v0, p1, Lorg/apache/poi/java/awt/AWTEvent;->id:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Container;->eventEnabled(Lorg/apache/poi/java/awt/AWTEvent;)Z

    move-result p1

    return p1

    :pswitch_0
    iget-wide v5, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/32 v7, 0x40000

    and-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/java/awt/Window;->windowStateListener:Lorg/apache/poi/java/awt/event/WindowStateListener;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v2

    :pswitch_1
    iget-wide v5, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/32 v7, 0x80000

    and-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/apache/poi/java/awt/Window;->windowFocusListener:Lorg/apache/poi/java/awt/event/WindowFocusListener;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v2

    :pswitch_2
    iget-wide v5, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v7, 0x40

    and-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/apache/poi/java/awt/Window;->windowListener:Lorg/apache/poi/java/awt/event/WindowListener;

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    return v1

    :cond_5
    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAccessibleContext()Ljavax/accessibility/AccessibleContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/Window$AccessibleAWTWindow;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/Window$AccessibleAWTWindow;-><init>(Lorg/apache/poi/java/awt/Window;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    return-object v0
.end method

.method public getBackground()Lorg/apache/poi/java/awt/Color;
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->getBackground()Lorg/apache/poi/java/awt/Color;

    move-result-object v0

    return-object v0
.end method

.method public getBufferStrategy()Lorg/apache/poi/java/awt/image/BufferStrategy;
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->getBufferStrategy()Lorg/apache/poi/java/awt/image/BufferStrategy;

    move-result-object v0

    return-object v0
.end method

.method public final getContainer()Lorg/apache/poi/java/awt/Container;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentRoot()Lorg/apache/poi/java/awt/Window;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    move-object v1, p0

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Window;->getOwner()Lorg/apache/poi/java/awt/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Window;->getOwner()Lorg/apache/poi/java/awt/Window;

    move-result-object v1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getFocusCycleRootAncestor()Lorg/apache/poi/java/awt/Container;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFocusOwner()Lorg/apache/poi/java/awt/Component;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFocusTraversalKeys(I)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lorg/apache/poi/java/awt/AWTKeyStroke;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_2

    const/4 v0, 0x4

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->focusTraversalKeys:[Ljava/util/Set;

    if-eqz v0, :cond_0

    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getDefaultFocusTraversalKeys(I)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid focus traversal key identifier"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFocusableWindowState()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Window;->focusableWindowState:Z

    return v0
.end method

.method public getIconImages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/java/awt/Image;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->icons:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getInputContext()Lorg/apache/poi/java/awt/im/InputContext;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->inputContextLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Window;->inputContext:Lorg/apache/poi/java/awt/im/InputContext;

    if-nez v1, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/im/InputContext;->getInstance()Lorg/apache/poi/java/awt/im/InputContext;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/Window;->inputContext:Lorg/apache/poi/java/awt/im/InputContext;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->inputContext:Lorg/apache/poi/java/awt/im/InputContext;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    const-class v0, Lorg/apache/poi/java/awt/event/WindowFocusListener;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->windowFocusListener:Lorg/apache/poi/java/awt/event/WindowFocusListener;

    goto :goto_0

    :cond_0
    const-class v0, Lorg/apache/poi/java/awt/event/WindowStateListener;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->windowStateListener:Lorg/apache/poi/java/awt/event/WindowStateListener;

    goto :goto_0

    :cond_1
    const-class v0, Lorg/apache/poi/java/awt/event/WindowListener;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->windowListener:Lorg/apache/poi/java/awt/event/WindowListener;

    :goto_0
    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->getListeners(Ljava/util/EventListener;Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Container;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object p1

    return-object p1
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getLocationOnWindow()Lorg/apache/poi/java/awt/Point;
    .locals 2

    new-instance v0, Lorg/apache/poi/java/awt/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    return-object v0
.end method

.method public getModalBlocker()Lorg/apache/poi/java/awt/Dialog;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->modalBlocker:Lorg/apache/poi/java/awt/Dialog;

    return-object v0
.end method

.method public getModalExclusionType()Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->modalExclusionType:Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;

    return-object v0
.end method

.method public getMostRecentFocusOwner()Lorg/apache/poi/java/awt/Component;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getMostRecentFocusOwner(Lorg/apache/poi/java/awt/Window;)Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->isFocusableWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getFocusTraversalPolicy()Lorg/apache/poi/java/awt/FocusTraversalPolicy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/java/awt/FocusTraversalPolicy;->getInitialComponent(Lorg/apache/poi/java/awt/Window;)Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getOpacity()F
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/apache/poi/java/awt/Window;->opacity:F

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOwnedWindows()[Lorg/apache/poi/java/awt/Window;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getOwnedWindows_NoClientCode()[Lorg/apache/poi/java/awt/Window;

    move-result-object v0

    return-object v0
.end method

.method public final getOwnedWindows_NoClientCode()[Lorg/apache/poi/java/awt/Window;
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->ownedWindowList:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Window;->ownedWindowList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v2, v1, [Lorg/apache/poi/java/awt/Window;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v5, p0, Lorg/apache/poi/java/awt/Window;->ownedWindowList:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/java/awt/Window;

    aput-object v5, v2, v4

    aget-object v5, v2, v4

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eq v1, v4, :cond_2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [Lorg/apache/poi/java/awt/Window;

    :cond_2
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOwner()Lorg/apache/poi/java/awt/Window;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getOwner_NoClientCode()Lorg/apache/poi/java/awt/Window;

    move-result-object v0

    return-object v0
.end method

.method public final getOwner_NoClientCode()Lorg/apache/poi/java/awt/Window;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    check-cast v0, Lorg/apache/poi/java/awt/Window;

    return-object v0
.end method

.method public getShape()Lorg/apache/poi/java/awt/Shape;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Window;->shape:Lorg/apache/poi/java/awt/Shape;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/apache/poi/java/awt/geom/Path2D$Float;

    invoke-direct {v2, v1}, Lorg/apache/poi/java/awt/geom/Path2D$Float;-><init>(Lorg/apache/poi/java/awt/Shape;)V

    move-object v1, v2

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

.method public getTemporaryLostComponent()Lorg/apache/poi/java/awt/Component;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->temporaryLostComponent:Lorg/apache/poi/java/awt/Component;

    return-object v0
.end method

.method public getToolkit()Lorg/apache/poi/java/awt/Toolkit;
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lorg/apache/poi/java/awt/Window$Type;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getObjectLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Window;->type:Lorg/apache/poi/java/awt/Window$Type;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getWarningString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->warningString:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getWindowFocusListeners()[Lorg/apache/poi/java/awt/event/WindowFocusListener;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-class v0, Lorg/apache/poi/java/awt/event/WindowFocusListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Window;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/java/awt/event/WindowFocusListener;

    check-cast v0, [Lorg/apache/poi/java/awt/event/WindowFocusListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWindowListeners()[Lorg/apache/poi/java/awt/event/WindowListener;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-class v0, Lorg/apache/poi/java/awt/event/WindowListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Window;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/java/awt/event/WindowListener;

    check-cast v0, [Lorg/apache/poi/java/awt/event/WindowListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWindowStateListeners()[Lorg/apache/poi/java/awt/event/WindowStateListener;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-class v0, Lorg/apache/poi/java/awt/event/WindowStateListener;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Window;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/java/awt/event/WindowStateListener;

    check-cast v0, [Lorg/apache/poi/java/awt/event/WindowStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hide()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->ownedWindowList:Ljava/util/Vector;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/java/awt/Window;->ownedWindowList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/java/awt/Window;->ownedWindowList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/Window;

    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lorg/apache/poi/java/awt/Component;->visible:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/Window;->hide()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/poi/java/awt/Window;->showWithParent:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->isModalBlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->modalBlocker:Lorg/apache/poi/java/awt/Dialog;

    invoke-virtual {v0, p0}, Lorg/apache/poi/java/awt/Dialog;->unblockWindow(Lorg/apache/poi/java/awt/Window;)V

    :cond_2
    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->hide()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isActive()Z
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getActiveWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isAlwaysOnTop()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Window;->alwaysOnTop:Z

    return v0
.end method

.method public isAlwaysOnTopSupported()Z
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Toolkit;->isAlwaysOnTopSupported()Z

    move-result v0

    return v0
.end method

.method public isAutoRequestFocus()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Window;->autoRequestFocus:Z

    return v0
.end method

.method public isDisposing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Window;->disposing:Z

    return v0
.end method

.method public final isFocusCycleRoot()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isFocusableWindow()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getFocusableWindowState()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Lorg/apache/poi/java/awt/Frame;

    if-nez v0, :cond_6

    instance-of v0, p0, Lorg/apache/poi/java/awt/Dialog;

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getFocusTraversalPolicy()Lorg/apache/poi/java/awt/FocusTraversalPolicy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/java/awt/FocusTraversalPolicy;->getDefaultComponent(Lorg/apache/poi/java/awt/Container;)Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getOwner()Lorg/apache/poi/java/awt/Window;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_5

    instance-of v2, v0, Lorg/apache/poi/java/awt/Frame;

    if-nez v2, :cond_4

    instance-of v2, v0, Lorg/apache/poi/java/awt/Dialog;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Window;->getOwner()Lorg/apache/poi/java/awt/Window;

    move-result-object v0

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Window;->isShowing()Z

    move-result v0

    return v0

    :cond_5
    return v1

    :cond_6
    :goto_2
    const/4 v0, 0x1

    return v0
.end method

.method public isFocused()Z
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getGlobalFocusedWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLocationByPlatform()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/poi/java/awt/Window;->locationByPlatform:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isModalBlocked()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->modalBlocker:Lorg/apache/poi/java/awt/Dialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isModalExcluded(Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->modalExclusionType:Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getOwner_NoClientCode()Lorg/apache/poi/java/awt/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Window;->isModalExcluded(Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isOpaque()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getBackground()Lorg/apache/poi/java/awt/Color;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Color;->getAlpha()I

    move-result v0

    const/16 v2, 0xff

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isRecursivelyVisible()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->visible:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->visible:Z

    return v0
.end method

.method public isValidateRoot()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mixOnReshaping()V
    .locals 0

    return-void
.end method

.method public pack()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->parent:Lorg/apache/poi/java/awt/Container;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Container;->addNotify()V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->addNotify()V

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getPreferredSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz v1, :cond_2

    iget v1, v0, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v0, v0, Lorg/apache/poi/java/awt/Dimension;->height:I

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/java/awt/Window;->setClientSize(II)V

    :cond_2
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Window;->beforeFirstShow:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->isPacked:Z

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->validateUnconditionally()V

    return-void
.end method

.method public paint(Lorg/apache/poi/java/awt/Graphics;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Graphics;->create()Lorg/apache/poi/java/awt/Graphics;

    move-result-object v0

    :try_start_0
    instance-of v1, v0, Lorg/apache/poi/java/awt/Graphics2D;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getBackground()Lorg/apache/poi/java/awt/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/Graphics;->setColor(Lorg/apache/poi/java/awt/Color;)V

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/java/awt/Graphics2D;

    const/4 v2, 0x2

    invoke-static {v2}, Lorg/apache/poi/java/awt/AlphaComposite;->getInstance(I)Lorg/apache/poi/java/awt/AlphaComposite;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/java/awt/Graphics2D;->setComposite(Lorg/apache/poi/java/awt/Composite;)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lorg/apache/poi/java/awt/Graphics;->fillRect(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Graphics;->dispose()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Graphics;->dispose()V

    throw p1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Container;->paint(Lorg/apache/poi/java/awt/Graphics;)V

    return-void
.end method

.method public postEvent(Lorg/apache/poi/java/awt/Event;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Component;->handleEvent(Lorg/apache/poi/java/awt/Event;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Event;->consume()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public postProcessKeyEvent(Lorg/apache/poi/java/awt/event/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized postWindowEvent(I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->windowListener:Lorg/apache/poi/java/awt/event/WindowListener;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/poi/java/awt/Component;->eventMask:J

    const-wide/16 v2, 0x40

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    invoke-static {v2, v3}, Lorg/apache/poi/java/awt/Toolkit;->enabledOnToolkit(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lorg/apache/poi/java/awt/event/WindowEvent;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/java/awt/event/WindowEvent;-><init>(Lorg/apache/poi/java/awt/Window;I)V

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/poi/java/awt/EventQueue;->postEvent(Lorg/apache/poi/java/awt/AWTEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public preProcessKeyEvent(Lorg/apache/poi/java/awt/event/KeyEvent;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->isActionKey()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x70

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->isControlDown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->isShiftDown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->getID()I

    move-result p1

    const/16 v0, 0x191

    if-ne p1, v0, :cond_0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/java/awt/Container;->list(Ljava/io/PrintStream;I)V

    :cond_0
    return-void
.end method

.method public processEvent(Lorg/apache/poi/java/awt/AWTEvent;)V
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/java/awt/event/WindowEvent;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/AWTEvent;->getID()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lorg/apache/poi/java/awt/event/WindowEvent;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Window;->processWindowStateEvent(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    goto :goto_0

    :pswitch_1
    check-cast p1, Lorg/apache/poi/java/awt/event/WindowEvent;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Window;->processWindowFocusEvent(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    goto :goto_0

    :pswitch_2
    check-cast p1, Lorg/apache/poi/java/awt/event/WindowEvent;

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Window;->processWindowEvent(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Container;->processEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public processWindowEvent(Lorg/apache/poi/java/awt/event/WindowEvent;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->windowListener:Lorg/apache/poi/java/awt/event/WindowListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/WindowEvent;->getID()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowListener;->windowDeactivated(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    goto :goto_0

    :pswitch_1
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowListener;->windowActivated(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowListener;->windowDeiconified(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    goto :goto_0

    :pswitch_3
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowListener;->windowIconified(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    goto :goto_0

    :pswitch_4
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowListener;->windowClosed(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    goto :goto_0

    :pswitch_5
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowListener;->windowClosing(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    goto :goto_0

    :pswitch_6
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowListener;->windowOpened(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public processWindowFocusEvent(Lorg/apache/poi/java/awt/event/WindowEvent;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->windowFocusListener:Lorg/apache/poi/java/awt/event/WindowFocusListener;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/WindowEvent;->getID()I

    move-result v1

    const/16 v2, 0xcf

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowFocusListener;->windowLostFocus(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowFocusListener;->windowGainedFocus(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public processWindowStateEvent(Lorg/apache/poi/java/awt/event/WindowEvent;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->windowStateListener:Lorg/apache/poi/java/awt/event/WindowStateListener;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/WindowEvent;->getID()I

    move-result v1

    const/16 v2, 0xd1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/event/WindowStateListener;->windowStateChanged(Lorg/apache/poi/java/awt/event/WindowEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeNotify()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/Window;->allWindows:Lorg/apache/poi/sun/awt/util/IdentityArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, p0}, Lorg/apache/poi/sun/awt/util/IdentityArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-super {p0}, Lorg/apache/poi/java/awt/Container;->removeNotify()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public removeOwnedWindow(Ljava/lang/ref/WeakReference;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->ownedWindowList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized removeWindowFocusListener(Lorg/apache/poi/java/awt/event/WindowFocusListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->windowFocusListener:Lorg/apache/poi/java/awt/event/WindowFocusListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->remove(Lorg/apache/poi/java/awt/event/WindowFocusListener;Lorg/apache/poi/java/awt/event/WindowFocusListener;)Lorg/apache/poi/java/awt/event/WindowFocusListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Window;->windowFocusListener:Lorg/apache/poi/java/awt/event/WindowFocusListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeWindowListener(Lorg/apache/poi/java/awt/event/WindowListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->windowListener:Lorg/apache/poi/java/awt/event/WindowListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->remove(Lorg/apache/poi/java/awt/event/WindowListener;Lorg/apache/poi/java/awt/event/WindowListener;)Lorg/apache/poi/java/awt/event/WindowListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Window;->windowListener:Lorg/apache/poi/java/awt/event/WindowListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeWindowStateListener(Lorg/apache/poi/java/awt/event/WindowStateListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->windowStateListener:Lorg/apache/poi/java/awt/event/WindowStateListener;

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AWTEventMulticaster;->remove(Lorg/apache/poi/java/awt/event/WindowStateListener;Lorg/apache/poi/java/awt/event/WindowStateListener;)Lorg/apache/poi/java/awt/event/WindowStateListener;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Window;->windowStateListener:Lorg/apache/poi/java/awt/event/WindowStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reshape(IIII)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isMinimumSizeSet()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->getMinimumSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v0

    iget v1, v0, Lorg/apache/poi/java/awt/Dimension;->width:I

    if-ge p3, v1, :cond_0

    move p3, v1

    :cond_0
    iget v0, v0, Lorg/apache/poi/java/awt/Dimension;->height:I

    if-ge p4, v0, :cond_1

    move p4, v0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/Component;->reshape(IIII)V

    return-void
.end method

.method public final setAlwaysOnTop(Z)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lorg/apache/poi/sun/security/util/SecurityConstants$AWT;->SET_WINDOW_ALWAYS_ON_TOP_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Window;->alwaysOnTop:Z

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Window;->alwaysOnTop:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eq v0, p1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->isAlwaysOnTopSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v1, Lorg/apache/poi/java/awt/peer/WindowPeer;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Lorg/apache/poi/java/awt/peer/WindowPeer;->updateAlwaysOnTopState()V

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_0
    const-string v1, "alwaysOnTop"

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/poi/java/awt/Component;->firePropertyChange(Ljava/lang/String;ZZ)V

    :cond_3
    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public setAutoRequestFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Window;->autoRequestFocus:Z

    return-void
.end method

.method public setBackground(Lorg/apache/poi/java/awt/Color;)V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getBackground()Lorg/apache/poi/java/awt/Color;

    move-result-object v0

    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->setBackground(Lorg/apache/poi/java/awt/Color;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Color;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xff

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Color;->getAlpha()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Color;->getAlpha()I

    move-result p1

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_6

    if-ge p1, v1, :cond_6

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getGraphicsConfiguration()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getDevice()Lorg/apache/poi/java/awt/GraphicsDevice;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getDevice()Lorg/apache/poi/java/awt/GraphicsDevice;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/GraphicsDevice;->getFullScreenWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v5

    if-eq v5, p0, :cond_5

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->isTranslucencyCapable()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4}, Lorg/apache/poi/java/awt/GraphicsDevice;->getTranslucencyCapableGC()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Window;->setGraphicsConfiguration(Lorg/apache/poi/java/awt/GraphicsConfiguration;)V

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "PERPIXEL_TRANSLUCENT translucency is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    invoke-static {p0, v2}, Lorg/apache/poi/java/awt/Window;->setLayersOpaque(Lorg/apache/poi/java/awt/Component;Z)V

    goto :goto_3

    :cond_5
    new-instance p1, Lorg/apache/poi/java/awt/IllegalComponentStateException;

    const-string v0, "Making full-screen window non opaque is not supported."

    invoke-direct {p1, v0}, Lorg/apache/poi/java/awt/IllegalComponentStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    if-ge v0, v1, :cond_7

    if-ne p1, v1, :cond_7

    invoke-static {p0, v3}, Lorg/apache/poi/java/awt/Window;->setLayersOpaque(Lorg/apache/poi/java/awt/Component;Z)V

    :cond_7
    :goto_3
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/peer/WindowPeer;

    if-eqz v0, :cond_9

    if-ne p1, v1, :cond_8

    move v2, v3

    :cond_8
    invoke-interface {v0, v2}, Lorg/apache/poi/java/awt/peer/WindowPeer;->setOpaque(Z)V

    :cond_9
    return-void
.end method

.method public setBounds(IIII)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getBoundsOp()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getBoundsOp()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Window;->locationByPlatform:Z

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/Component;->setBounds(IIII)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setBounds(Lorg/apache/poi/java/awt/Rectangle;)V
    .locals 3

    iget v0, p1, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v1, p1, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v2, p1, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget p1, p1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/apache/poi/java/awt/Window;->setBounds(IIII)V

    return-void
.end method

.method public setClientSize(II)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/Component;->setBoundsOp(I)V

    iget v1, p0, Lorg/apache/poi/java/awt/Component;->x:I

    iget v2, p0, Lorg/apache/poi/java/awt/Component;->y:I

    invoke-virtual {p0, v1, v2, p1, p2}, Lorg/apache/poi/java/awt/Window;->setBounds(IIII)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setCursor(Lorg/apache/poi/java/awt/Cursor;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Lorg/apache/poi/java/awt/Cursor;->getPredefinedCursor(I)Lorg/apache/poi/java/awt/Cursor;

    move-result-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->setCursor(Lorg/apache/poi/java/awt/Cursor;)V

    return-void
.end method

.method public final setFocusCycleRoot(Z)V
    .locals 0

    return-void
.end method

.method public setFocusableWindowState(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Window;->focusableWindowState:Z

    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Window;->focusableWindowState:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v1, Lorg/apache/poi/java/awt/peer/WindowPeer;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/poi/java/awt/peer/WindowPeer;->updateFocusableWindowState()V

    :cond_0
    const-string v1, "focusableWindowState"

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/poi/java/awt/Component;->firePropertyChange(Ljava/lang/String;ZZ)V

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getOwner()Lorg/apache/poi/java/awt/Window;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    invoke-static {p1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getMostRecentFocusOwner(Lorg/apache/poi/java/awt/Window;)Lorg/apache/poi/java/awt/Component;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;->ACTIVATION:Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/java/awt/Component;->requestFocus(ZLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Window;->getOwner()Lorg/apache/poi/java/awt/Window;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager()Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->clearGlobalFocusOwner()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setGraphicsConfiguration(Lorg/apache/poi/java/awt/GraphicsConfiguration;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Lorg/apache/poi/java/awt/GraphicsEnvironment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->getDefaultScreenDevice()Lorg/apache/poi/java/awt/GraphicsDevice;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/GraphicsDevice;->getDefaultConfiguration()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->setGraphicsConfiguration(Lorg/apache/poi/java/awt/GraphicsConfiguration;)V

    sget-object p1, Lorg/apache/poi/java/awt/Window;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    const/16 v1, 0x190

    invoke-virtual {p1, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+ Window.setGraphicsConfiguration(): new GC is \n+ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getGraphicsConfiguration_NoClientCode()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n+ this is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finer(Ljava/lang/String;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setIconImage(Lorg/apache/poi/java/awt/Image;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Window;->setIconImages(Ljava/util/List;)V

    return-void
.end method

.method public declared-synchronized setIconImages(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/java/awt/Image;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/java/awt/Window;->icons:Ljava/util/List;

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast p1, Lorg/apache/poi/java/awt/peer/WindowPeer;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/apache/poi/java/awt/peer/WindowPeer;->updateIconImages()V

    :cond_1
    const-string p1, "iconImage"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/apache/poi/java/awt/Component;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLocation(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/poi/java/awt/Component;->setLocation(II)V

    return-void
.end method

.method public setLocation(Lorg/apache/poi/java/awt/Point;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->setLocation(Lorg/apache/poi/java/awt/Point;)V

    return-void
.end method

.method public setLocationByPlatform(Z)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/java/awt/IllegalComponentStateException;

    const-string v1, "The window is showing on screen."

    invoke-direct {p1, v1}, Lorg/apache/poi/java/awt/IllegalComponentStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Window;->locationByPlatform:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setLocationRelativeTo(Lorg/apache/poi/java/awt/Component;)V
    .locals 12

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getGraphicsConfiguration_NoClientCode()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getBounds()Lorg/apache/poi/java/awt/Rectangle;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/poi/sun/awt/SunToolkit;->getContainingWindow(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Window;

    move-result-object v1

    if-eqz p1, :cond_4

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getGraphicsConfiguration()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getBounds()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object p1

    iget v1, p1, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v2, p1, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget v3, v0, Lorg/apache/poi/java/awt/Dimension;->width:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p1, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v3, p1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    iget v4, v0, Lorg/apache/poi/java/awt/Dimension;->height:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getGraphicsConfiguration()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getBounds()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->getLocationOnScreen()Lorg/apache/poi/java/awt/Point;

    move-result-object p1

    iget v3, p1, Lorg/apache/poi/java/awt/Point;->x:I

    iget v4, v2, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v5, v0, Lorg/apache/poi/java/awt/Dimension;->width:I

    sub-int v6, v4, v5

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    iget p1, p1, Lorg/apache/poi/java/awt/Point;->y:I

    iget v2, v2, Lorg/apache/poi/java/awt/Dimension;->height:I

    iget v7, v0, Lorg/apache/poi/java/awt/Dimension;->height:I

    sub-int/2addr v2, v7

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p1

    add-int p1, v2, v7

    iget v8, v1, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v9, v1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    add-int v10, v8, v9

    if-le p1, v10, :cond_3

    add-int/2addr v8, v9

    sub-int v2, v8, v7

    iget p1, v1, Lorg/apache/poi/java/awt/Rectangle;->x:I

    sub-int p1, v3, p1

    div-int/lit8 v6, v4, 0x2

    add-int/2addr p1, v6

    iget v6, v1, Lorg/apache/poi/java/awt/Rectangle;->width:I

    div-int/lit8 v6, v6, 0x2

    if-ge p1, v6, :cond_2

    add-int p1, v3, v4

    goto :goto_0

    :cond_2
    sub-int p1, v3, v5

    :goto_0
    move-object v11, v1

    move v1, p1

    move-object p1, v11

    goto :goto_2

    :cond_3
    move-object p1, v1

    move v1, v6

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Lorg/apache/poi/java/awt/GraphicsEnvironment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->getDefaultScreenDevice()Lorg/apache/poi/java/awt/GraphicsDevice;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/GraphicsDevice;->getDefaultConfiguration()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getBounds()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->getCenterPoint()Lorg/apache/poi/java/awt/Point;

    move-result-object p1

    iget v2, p1, Lorg/apache/poi/java/awt/Point;->x:I

    iget v3, v0, Lorg/apache/poi/java/awt/Dimension;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget p1, p1, Lorg/apache/poi/java/awt/Point;->y:I

    iget v3, v0, Lorg/apache/poi/java/awt/Dimension;->height:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr p1, v3

    move v11, v2

    move v2, p1

    move-object p1, v1

    move v1, v11

    :goto_2
    iget v3, v0, Lorg/apache/poi/java/awt/Dimension;->height:I

    add-int v4, v2, v3

    iget v5, p1, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v6, p1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    add-int v7, v5, v6

    if-le v4, v7, :cond_5

    add-int/2addr v6, v5

    sub-int v2, v6, v3

    :cond_5
    if-ge v2, v5, :cond_6

    goto :goto_3

    :cond_6
    move v5, v2

    :goto_3
    iget v0, v0, Lorg/apache/poi/java/awt/Dimension;->width:I

    add-int v2, v1, v0

    iget v3, p1, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget p1, p1, Lorg/apache/poi/java/awt/Rectangle;->width:I

    add-int v4, v3, p1

    if-le v2, v4, :cond_7

    add-int/2addr p1, v3

    sub-int v1, p1, v0

    :cond_7
    if-ge v1, v3, :cond_8

    goto :goto_4

    :cond_8
    move v3, v1

    :goto_4
    invoke-virtual {p0, v3, v5}, Lorg/apache/poi/java/awt/Window;->setLocation(II)V

    return-void
.end method

.method public setMinimumSize(Lorg/apache/poi/java/awt/Dimension;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->setMinimumSize(Lorg/apache/poi/java/awt/Dimension;)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isMinimumSizeSet()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v1, Lorg/apache/poi/java/awt/Dimension;->width:I

    iget v3, p1, Lorg/apache/poi/java/awt/Dimension;->width:I

    if-lt v2, v3, :cond_0

    iget v1, v1, Lorg/apache/poi/java/awt/Dimension;->height:I

    iget v2, p1, Lorg/apache/poi/java/awt/Dimension;->height:I

    if-ge v1, v2, :cond_1

    :cond_0
    iget v1, p0, Lorg/apache/poi/java/awt/Component;->width:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lorg/apache/poi/java/awt/Component;->height:I

    iget p1, p1, Lorg/apache/poi/java/awt/Dimension;->height:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lorg/apache/poi/java/awt/Window;->setSize(II)V

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-eqz p1, :cond_2

    check-cast p1, Lorg/apache/poi/java/awt/peer/WindowPeer;

    invoke-interface {p1}, Lorg/apache/poi/java/awt/peer/WindowPeer;->updateMinimumSize()V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setModalBlocked(Lorg/apache/poi/java/awt/Dialog;ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/java/awt/Window;->modalBlocker:Lorg/apache/poi/java/awt/Dialog;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast p3, Lorg/apache/poi/java/awt/peer/WindowPeer;

    if-eqz p3, :cond_1

    invoke-interface {p3, p1, p2}, Lorg/apache/poi/java/awt/peer/WindowPeer;->setModalBlocked(Lorg/apache/poi/java/awt/Dialog;Z)V

    :cond_1
    return-void
.end method

.method public setModalExclusionType(Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;->NO_EXCLUDE:Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;

    :cond_0
    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Toolkit;->isModalExclusionTypeSupported(Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;->NO_EXCLUDE:Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->modalExclusionType:Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;

    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    sget-object v0, Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;->TOOLKIT_EXCLUDE:Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;

    if-ne p1, v0, :cond_3

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lorg/apache/poi/sun/security/util/SecurityConstants$AWT;->TOOLKIT_MODALITY_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_3
    iput-object p1, p0, Lorg/apache/poi/java/awt/Window;->modalExclusionType:Lorg/apache/poi/java/awt/Dialog$ModalExclusionType;

    return-void
.end method

.method public setOpacity(F)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-gtz v2, :cond_4

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getGraphicsConfiguration()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getDevice()Lorg/apache/poi/java/awt/GraphicsDevice;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getDevice()Lorg/apache/poi/java/awt/GraphicsDevice;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/GraphicsDevice;->getFullScreenWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v1

    if-eq v1, p0, :cond_1

    sget-object v1, Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;->TRANSLUCENT:Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;

    invoke-virtual {v2, v1}, Lorg/apache/poi/java/awt/GraphicsDevice;->isWindowTranslucencySupported(Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TRANSLUCENT translucency is not supported."

    invoke-direct {p1, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/apache/poi/java/awt/IllegalComponentStateException;

    const-string v1, "Setting opacity for full-screen window is not supported."

    invoke-direct {p1, v1}, Lorg/apache/poi/java/awt/IllegalComponentStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iput p1, p0, Lorg/apache/poi/java/awt/Window;->opacity:F

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/peer/WindowPeer;

    if-eqz v1, :cond_3

    invoke-interface {v1, p1}, Lorg/apache/poi/java/awt/peer/WindowPeer;->setOpacity(F)V

    :cond_3
    monitor-exit v0

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "The value of opacity should be in the range [0.0f .. 1.0f]."

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setShape(Lorg/apache/poi/java/awt/Shape;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getGraphicsConfiguration()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getDevice()Lorg/apache/poi/java/awt/GraphicsDevice;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/GraphicsConfiguration;->getDevice()Lorg/apache/poi/java/awt/GraphicsDevice;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/GraphicsDevice;->getFullScreenWindow()Lorg/apache/poi/java/awt/Window;

    move-result-object v1

    if-eq v1, p0, :cond_1

    sget-object v1, Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;->PERPIXEL_TRANSPARENT:Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;

    invoke-virtual {v2, v1}, Lorg/apache/poi/java/awt/GraphicsDevice;->isWindowTranslucencySupported(Lorg/apache/poi/java/awt/GraphicsDevice$WindowTranslucency;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v1, "PERPIXEL_TRANSPARENT translucency is not supported."

    invoke-direct {p1, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/apache/poi/java/awt/IllegalComponentStateException;

    const-string v1, "Setting shape for full-screen window is not supported."

    invoke-direct {p1, v1}, Lorg/apache/poi/java/awt/IllegalComponentStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_3

    move-object v2, v1

    goto :goto_1

    :cond_3
    new-instance v2, Lorg/apache/poi/java/awt/geom/Path2D$Float;

    invoke-direct {v2, p1}, Lorg/apache/poi/java/awt/geom/Path2D$Float;-><init>(Lorg/apache/poi/java/awt/Shape;)V

    :goto_1
    iput-object v2, p0, Lorg/apache/poi/java/awt/Window;->shape:Lorg/apache/poi/java/awt/Shape;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/java/awt/peer/WindowPeer;

    if-eqz v2, :cond_5

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p1, v1}, Lorg/apache/poi/sun/java2d/pipe/Region;->getInstance(Lorg/apache/poi/java/awt/Shape;Lorg/apache/poi/java/awt/geom/AffineTransform;)Lorg/apache/poi/sun/java2d/pipe/Region;

    move-result-object v1

    :goto_2
    invoke-interface {v2, v1}, Lorg/apache/poi/java/awt/peer/WindowPeer;->applyShape(Lorg/apache/poi/sun/java2d/pipe/Region;)V

    :cond_5
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSize(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/poi/java/awt/Component;->setSize(II)V

    return-void
.end method

.method public setSize(Lorg/apache/poi/java/awt/Dimension;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->setSize(Lorg/apache/poi/java/awt/Dimension;)V

    return-void
.end method

.method public setTemporaryLostComponent(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Component;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->temporaryLostComponent:Lorg/apache/poi/java/awt/Component;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Component;->canBeFocusOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/poi/java/awt/Window;->temporaryLostComponent:Lorg/apache/poi/java/awt/Component;

    return-object v0
.end method

.method public setType(Lorg/apache/poi/java/awt/Window$Type;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isDisplayable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getObjectLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object p1, p0, Lorg/apache/poi/java/awt/Window;->type:Lorg/apache/poi/java/awt/Window$Type;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :cond_0
    new-instance p1, Lorg/apache/poi/java/awt/IllegalComponentStateException;

    const-string v1, "The window is displayable."

    invoke-direct {p1, v1}, Lorg/apache/poi/java/awt/IllegalComponentStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "type should not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVisible(Z)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->setVisible(Z)V

    return-void
.end method

.method public show()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->addNotify()V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Container;->validateUnconditionally()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Window;->isInShow:Z

    iget-boolean v1, p0, Lorg/apache/poi/java/awt/Component;->visible:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->toFront()V

    goto :goto_2

    :cond_1
    iput-boolean v2, p0, Lorg/apache/poi/java/awt/Window;->beforeFirstShow:Z

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->closeSplashScreen()V

    invoke-static {p0}, Lorg/apache/poi/java/awt/Dialog;->checkShouldBeBlocked(Lorg/apache/poi/java/awt/Window;)V

    invoke-super {p0}, Lorg/apache/poi/java/awt/Component;->show()V

    iput-boolean v2, p0, Lorg/apache/poi/java/awt/Window;->locationByPlatform:Z

    move v1, v2

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/java/awt/Window;->ownedWindowList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lorg/apache/poi/java/awt/Window;->ownedWindowList:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/java/awt/Window;

    if-eqz v3, :cond_2

    iget-boolean v4, v3, Lorg/apache/poi/java/awt/Window;->showWithParent:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Window;->show()V

    iput-boolean v2, v3, Lorg/apache/poi/java/awt/Window;->showWithParent:Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->isModalBlocked()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->updateChildrenBlocking()V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lorg/apache/poi/java/awt/Window;->modalBlocker:Lorg/apache/poi/java/awt/Dialog;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Window;->toFront_NoClientCode()V

    :goto_1
    instance-of v1, p0, Lorg/apache/poi/java/awt/Frame;

    if-nez v1, :cond_5

    instance-of v1, p0, Lorg/apache/poi/java/awt/Dialog;

    if-eqz v1, :cond_6

    :cond_5
    invoke-static {p0}, Lorg/apache/poi/java/awt/Window;->updateChildFocusableWindowState(Lorg/apache/poi/java/awt/Window;)V

    :cond_6
    :goto_2
    iput-boolean v2, p0, Lorg/apache/poi/java/awt/Window;->isInShow:Z

    iget v1, p0, Lorg/apache/poi/java/awt/Window;->state:I

    and-int/2addr v1, v0

    if-nez v1, :cond_7

    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/Window;->postWindowEvent(I)V

    iget v1, p0, Lorg/apache/poi/java/awt/Window;->state:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/java/awt/Window;->state:I

    :cond_7
    return-void
.end method

.method public toBack()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->toBack_NoClientCode()V

    return-void
.end method

.method public final toBack_NoClientCode()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->isAlwaysOnTop()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Window;->setAlwaysOnTop(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->visible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/WindowPeer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/WindowPeer;->toBack()V

    :cond_1
    return-void
.end method

.method public toFront()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->toFront_NoClientCode()V

    return-void
.end method

.method public final toFront_NoClientCode()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Component;->visible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/WindowPeer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/WindowPeer;->toFront()V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->isModalBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->modalBlocker:Lorg/apache/poi/java/awt/Dialog;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Window;->toFront_NoClientCode()V

    :cond_1
    return-void
.end method

.method public updateChildrenBlocking()V
    .locals 6

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getOwnedWindows()[Lorg/apache/poi/java/awt/Window;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/java/awt/Window;

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Window;->isModalBlocked()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Window;->getModalBlocker()Lorg/apache/poi/java/awt/Dialog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/poi/java/awt/Dialog;->unblockWindow(Lorg/apache/poi/java/awt/Window;)V

    :cond_1
    invoke-static {v3}, Lorg/apache/poi/java/awt/Dialog;->checkShouldBeBlocked(Lorg/apache/poi/java/awt/Window;)V

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Window;->getOwnedWindows()[Lorg/apache/poi/java/awt/Window;

    move-result-object v3

    move v4, v2

    :goto_2
    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget-object v5, v3, v4

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public updateZOrder()V
    .locals 0

    return-void
.end method
