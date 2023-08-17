.class public Lorg/apache/poi/java/awt/Frame;
.super Lorg/apache/poi/java/awt/Window;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/Frame$AccessibleAWTFrame;
    }
.end annotation


# static fields
.field public static final CROSSHAIR_CURSOR:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_CURSOR:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final E_RESIZE_CURSOR:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HAND_CURSOR:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICONIFIED:I = 0x1

.field public static final MAXIMIZED_BOTH:I = 0x6

.field public static final MAXIMIZED_HORIZ:I = 0x2

.field public static final MAXIMIZED_VERT:I = 0x4

.field public static final MOVE_CURSOR:I = 0xd
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NE_RESIZE_CURSOR:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NORMAL:I = 0x0

.field public static final NW_RESIZE_CURSOR:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final N_RESIZE_CURSOR:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SE_RESIZE_CURSOR:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SW_RESIZE_CURSOR:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final S_RESIZE_CURSOR:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TEXT_CURSOR:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WAIT_CURSOR:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final W_RESIZE_CURSOR:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final base:Ljava/lang/String; = "frame"

.field private static nameCounter:I = 0x0

.field private static final serialVersionUID:J = 0x251a08c50f4cb36cL


# instance fields
.field private frameSerializedDataVersion:I

.field public maximizedBounds:Lorg/apache/poi/java/awt/Rectangle;

.field public mbManagement:Z

.field public menuBar:Lorg/apache/poi/java/awt/MenuBar;

.field public ownedWindows:Ljava/util/Vector;

.field public resizable:Z

.field private state:I

.field public title:Ljava/lang/String;

.field public undecorated:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Frame;->initIDs()V

    :cond_0
    new-instance v0, Lorg/apache/poi/java/awt/Frame$1;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/Frame$1;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/sun/awt/AWTAccessor;->setFrameAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$FrameAccessor;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/apache/poi/java/awt/Frame;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Window;-><init>()V

    const-string v0, "Untitled"

    iput-object v0, p0, Lorg/apache/poi/java/awt/Frame;->title:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Frame;->resizable:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Frame;->undecorated:Z

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Frame;->mbManagement:Z

    iput v1, p0, Lorg/apache/poi/java/awt/Frame;->state:I

    iput v0, p0, Lorg/apache/poi/java/awt/Frame;->frameSerializedDataVersion:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/java/awt/Frame;->init(Ljava/lang/String;Lorg/apache/poi/java/awt/GraphicsConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/poi/java/awt/GraphicsConfiguration;)V
    .locals 2

    invoke-direct {p0, p2}, Lorg/apache/poi/java/awt/Window;-><init>(Lorg/apache/poi/java/awt/GraphicsConfiguration;)V

    const-string v0, "Untitled"

    iput-object v0, p0, Lorg/apache/poi/java/awt/Frame;->title:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/java/awt/Frame;->resizable:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Frame;->undecorated:Z

    iput-boolean v1, p0, Lorg/apache/poi/java/awt/Frame;->mbManagement:Z

    iput v1, p0, Lorg/apache/poi/java/awt/Frame;->state:I

    iput v0, p0, Lorg/apache/poi/java/awt/Frame;->frameSerializedDataVersion:I

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/java/awt/Frame;->init(Ljava/lang/String;Lorg/apache/poi/java/awt/GraphicsConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/GraphicsConfiguration;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/java/awt/Frame;-><init>(Ljava/lang/String;Lorg/apache/poi/java/awt/GraphicsConfiguration;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/java/awt/Frame;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/java/awt/Frame;->state:I

    return p0
.end method

.method public static synthetic access$002(Lorg/apache/poi/java/awt/Frame;I)I
    .locals 0

    iput p1, p0, Lorg/apache/poi/java/awt/Frame;->state:I

    return p1
.end method

.method public static getFrames()[Lorg/apache/poi/java/awt/Frame;
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

    instance-of v5, v5, Lorg/apache/poi/java/awt/Frame;

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array v1, v4, [Lorg/apache/poi/java/awt/Frame;

    array-length v3, v0

    move v4, v2

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    instance-of v6, v5, Lorg/apache/poi/java/awt/Frame;

    if-eqz v6, :cond_2

    add-int/lit8 v6, v4, 0x1

    check-cast v5, Lorg/apache/poi/java/awt/Frame;

    aput-object v5, v1, v4

    move v4, v6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method private init(Ljava/lang/String;Lorg/apache/poi/java/awt/GraphicsConfiguration;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Frame;->title:Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/poi/sun/awt/SunToolkit;->checkAndSetPolicy(Lorg/apache/poi/java/awt/Container;)V

    return-void
.end method

.method private static native initIDs()V
.end method

.method private isFrameStateSupported(I)Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Toolkit;->isFrameStateSupported(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/Toolkit;->isFrameStateSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    and-int/lit8 p1, p1, -0x2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Toolkit;->isFrameStateSupported(I)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/java/awt/Image;

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->icons:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Window;->icons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/OptionalDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-boolean v0, p1, Ljava/io/OptionalDataException;->eof:Z

    if-eqz v0, :cond_4

    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/apache/poi/java/awt/Frame;->menuBar:Lorg/apache/poi/java/awt/MenuBar;

    if-eqz p1, :cond_1

    iput-object p0, p1, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/java/awt/Frame;->ownedWindows:Ljava/util/Vector;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lorg/apache/poi/java/awt/Frame;->ownedWindows:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Frame;->ownedWindows:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/Window;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Window;->connectOwnedWindow(Lorg/apache/poi/java/awt/Window;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Frame;->ownedWindows:Ljava/util/Vector;

    :cond_3
    return-void

    :cond_4
    throw p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->icons:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->icons:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/Image;

    instance-of v1, v0, Ljava/io/Serializable;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addNotify()V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/poi/java/awt/Toolkit;->createFrame(Lorg/apache/poi/java/awt/Frame;)Lorg/apache/poi/java/awt/peer/FramePeer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v1, Lorg/apache/poi/java/awt/peer/FramePeer;

    iget-object v2, p0, Lorg/apache/poi/java/awt/Frame;->menuBar:Lorg/apache/poi/java/awt/MenuBar;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/poi/java/awt/Frame;->mbManagement:Z

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/MenuBar;->addNotify()V

    invoke-interface {v1, v2}, Lorg/apache/poi/java/awt/peer/FramePeer;->setMenuBar(Lorg/apache/poi/java/awt/MenuBar;)V

    :cond_1
    iget-object v2, p0, Lorg/apache/poi/java/awt/Frame;->maximizedBounds:Lorg/apache/poi/java/awt/Rectangle;

    invoke-interface {v1, v2}, Lorg/apache/poi/java/awt/peer/FramePeer;->setMaximizedBounds(Lorg/apache/poi/java/awt/Rectangle;)V

    invoke-super {p0}, Lorg/apache/poi/java/awt/Window;->addNotify()V

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

    const-class v0, Lorg/apache/poi/java/awt/Frame;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/apache/poi/java/awt/Frame;->nameCounter:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/apache/poi/java/awt/Frame;->nameCounter:I

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

.method public getAccessibleContext()Ljavax/accessibility/AccessibleContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/Frame$AccessibleAWTFrame;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/Frame$AccessibleAWTFrame;-><init>(Lorg/apache/poi/java/awt/Frame;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    return-object v0
.end method

.method public getCursorType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getCursor()Lorg/apache/poi/java/awt/Cursor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Cursor;->getType()I

    move-result v0

    return v0
.end method

.method public getExtendedState()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getObjectLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/apache/poi/java/awt/Frame;->state:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIconImage()Lorg/apache/poi/java/awt/Image;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Window;->icons:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/Image;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaximizedBounds()Lorg/apache/poi/java/awt/Rectangle;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getObjectLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Frame;->maximizedBounds:Lorg/apache/poi/java/awt/Rectangle;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMenuBar()Lorg/apache/poi/java/awt/MenuBar;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Frame;->menuBar:Lorg/apache/poi/java/awt/MenuBar;

    return-object v0
.end method

.method public declared-synchronized getState()I
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Frame;->getExtendedState()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Frame;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isResizable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Frame;->resizable:Z

    return v0
.end method

.method public isUndecorated()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Frame;->undecorated:Z

    return v0
.end method

.method public paramString()Ljava/lang/String;
    .locals 4

    invoke-super {p0}, Lorg/apache/poi/java/awt/Container;->paramString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Frame;->title:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",title="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/poi/java/awt/Frame;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-boolean v1, p0, Lorg/apache/poi/java/awt/Frame;->resizable:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",resizable"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Frame;->getExtendedState()I

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",normal"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",iconified"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    and-int/lit8 v2, v1, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",maximized"

    goto :goto_0

    :cond_4
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",maximized_horiz"

    goto :goto_0

    :cond_5
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",maximized_vert"

    goto :goto_0

    :cond_6
    :goto_1
    return-object v0
.end method

.method public postProcessKeyEvent(Lorg/apache/poi/java/awt/event/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Frame;->menuBar:Lorg/apache/poi/java/awt/MenuBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/MenuBar;->handleShortcut(Lorg/apache/poi/java/awt/event/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/KeyEvent;->consume()V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Window;->postProcessKeyEvent(Lorg/apache/poi/java/awt/event/KeyEvent;)V

    return-void
.end method

.method public remove(Lorg/apache/poi/java/awt/MenuComponent;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Frame;->menuBar:Lorg/apache/poi/java/awt/MenuBar;

    if-ne p1, v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/java/awt/Frame;->menuBar:Lorg/apache/poi/java/awt/MenuBar;

    iget-object v2, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v2, Lorg/apache/poi/java/awt/peer/FramePeer;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/poi/java/awt/Frame;->mbManagement:Z

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->invalidateIfValid()V

    invoke-interface {v2, v1}, Lorg/apache/poi/java/awt/peer/FramePeer;->setMenuBar(Lorg/apache/poi/java/awt/MenuBar;)V

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/MenuComponent;->removeNotify()V

    :cond_1
    iput-object v1, p1, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Component;->remove(Lorg/apache/poi/java/awt/MenuComponent;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeNotify()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v1, Lorg/apache/poi/java/awt/peer/FramePeer;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Frame;->getState()I

    iget-object v2, p0, Lorg/apache/poi/java/awt/Frame;->menuBar:Lorg/apache/poi/java/awt/MenuBar;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/poi/java/awt/Frame;->mbManagement:Z

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/apache/poi/java/awt/peer/FramePeer;->setMenuBar(Lorg/apache/poi/java/awt/MenuBar;)V

    iget-object v1, p0, Lorg/apache/poi/java/awt/Frame;->menuBar:Lorg/apache/poi/java/awt/MenuBar;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/MenuBar;->removeNotify()V

    :cond_0
    invoke-super {p0}, Lorg/apache/poi/java/awt/Window;->removeNotify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBackground(Lorg/apache/poi/java/awt/Color;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Color;->getAlpha()I

    move-result v1

    const/16 v2, 0xff

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Frame;->isUndecorated()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/java/awt/IllegalComponentStateException;

    const-string v1, "The frame is decorated"

    invoke-direct {p1, v1}, Lorg/apache/poi/java/awt/IllegalComponentStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Window;->setBackground(Lorg/apache/poi/java/awt/Color;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setCursor(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-ltz p1, :cond_0

    const/16 v0, 0xd

    if-gt p1, v0, :cond_0

    invoke-static {p1}, Lorg/apache/poi/java/awt/Cursor;->getPredefinedCursor(I)Lorg/apache/poi/java/awt/Cursor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Window;->setCursor(Lorg/apache/poi/java/awt/Cursor;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "illegal cursor type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setExtendedState(I)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Frame;->isFrameStateSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getObjectLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lorg/apache/poi/java/awt/Frame;->state:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/FramePeer;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/FramePeer;->setState(I)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setIconImage(Lorg/apache/poi/java/awt/Image;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Window;->setIconImage(Lorg/apache/poi/java/awt/Image;)V

    return-void
.end method

.method public setMaximizedBounds(Lorg/apache/poi/java/awt/Rectangle;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getObjectLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lorg/apache/poi/java/awt/Frame;->maximizedBounds:Lorg/apache/poi/java/awt/Rectangle;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v0, Lorg/apache/poi/java/awt/peer/FramePeer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/poi/java/awt/peer/FramePeer;->setMaximizedBounds(Lorg/apache/poi/java/awt/Rectangle;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setMenuBar(Lorg/apache/poi/java/awt/MenuBar;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Frame;->menuBar:Lorg/apache/poi/java/awt/MenuBar;

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p1, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lorg/apache/poi/java/awt/MenuContainer;->remove(Lorg/apache/poi/java/awt/MenuComponent;)V

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/java/awt/Frame;->menuBar:Lorg/apache/poi/java/awt/MenuBar;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/Frame;->remove(Lorg/apache/poi/java/awt/MenuComponent;)V

    :cond_2
    iput-object p1, p0, Lorg/apache/poi/java/awt/Frame;->menuBar:Lorg/apache/poi/java/awt/MenuBar;

    if-eqz p1, :cond_3

    iput-object p0, p1, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v1, Lorg/apache/poi/java/awt/peer/FramePeer;

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/poi/java/awt/Frame;->mbManagement:Z

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/MenuBar;->addNotify()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->invalidateIfValid()V

    iget-object p1, p0, Lorg/apache/poi/java/awt/Frame;->menuBar:Lorg/apache/poi/java/awt/MenuBar;

    invoke-interface {v1, p1}, Lorg/apache/poi/java/awt/peer/FramePeer;->setMenuBar(Lorg/apache/poi/java/awt/MenuBar;)V

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setOpacity(F)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Frame;->isUndecorated()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/java/awt/IllegalComponentStateException;

    const-string v1, "The frame is decorated"

    invoke-direct {p1, v1}, Lorg/apache/poi/java/awt/IllegalComponentStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Window;->setOpacity(F)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setResizable(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/Frame;->resizable:Z

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Frame;->resizable:Z

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v1, Lorg/apache/poi/java/awt/peer/FramePeer;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lorg/apache/poi/java/awt/peer/FramePeer;->setResizable(Z)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->invalidateIfValid()V

    :cond_1
    const-string v1, "resizable"

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/poi/java/awt/Component;->firePropertyChange(Ljava/lang/String;ZZ)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setShape(Lorg/apache/poi/java/awt/Shape;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Frame;->isUndecorated()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/java/awt/IllegalComponentStateException;

    const-string v1, "The frame is decorated"

    invoke-direct {p1, v1}, Lorg/apache/poi/java/awt/IllegalComponentStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/apache/poi/java/awt/Window;->setShape(Lorg/apache/poi/java/awt/Shape;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized setState(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Frame;->getExtendedState()I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_0

    or-int/lit8 p1, v0, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Frame;->setExtendedState(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    and-int/lit8 p1, v0, 0x1

    if-eqz p1, :cond_1

    and-int/lit8 p1, v0, -0x2

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/Frame;->setExtendedState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Frame;->title:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/apache/poi/java/awt/Frame;->title:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component;->peer:Lorg/apache/poi/java/awt/peer/ComponentPeer;

    check-cast v1, Lorg/apache/poi/java/awt/peer/FramePeer;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lorg/apache/poi/java/awt/peer/FramePeer;->setTitle(Ljava/lang/String;)V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v1, "title"

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/poi/java/awt/Component;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setUndecorated(Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->isDisplayable()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getOpacity()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getShape()Lorg/apache/poi/java/awt/Shape;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Window;->getBackground()Lorg/apache/poi/java/awt/Color;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Color;->getAlpha()I

    move-result v1

    const/16 v2, 0xff

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/java/awt/IllegalComponentStateException;

    const-string v1, "The frame background color is not opaque"

    invoke-direct {p1, v1}, Lorg/apache/poi/java/awt/IllegalComponentStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/apache/poi/java/awt/IllegalComponentStateException;

    const-string v1, "The frame does not have a default shape"

    invoke-direct {p1, v1}, Lorg/apache/poi/java/awt/IllegalComponentStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/apache/poi/java/awt/IllegalComponentStateException;

    const-string v1, "The frame is not opaque"

    invoke-direct {p1, v1}, Lorg/apache/poi/java/awt/IllegalComponentStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iput-boolean p1, p0, Lorg/apache/poi/java/awt/Frame;->undecorated:Z

    monitor-exit v0

    return-void

    :cond_4
    new-instance p1, Lorg/apache/poi/java/awt/IllegalComponentStateException;

    const-string v1, "The frame is displayable."

    invoke-direct {p1, v1}, Lorg/apache/poi/java/awt/IllegalComponentStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
