.class public Lorg/apache/poi/java/awt/Cursor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/Cursor$CursorDisposer;
    }
.end annotation


# static fields
.field public static final CROSSHAIR_CURSOR:I = 0x1

.field public static final CUSTOM_CURSOR:I = -0x1

.field private static final CursorDotPrefix:Ljava/lang/String; = "Cursor."

.field public static final DEFAULT_CURSOR:I = 0x0

.field private static final DotFileSuffix:Ljava/lang/String; = ".File"

.field private static final DotHotspotSuffix:Ljava/lang/String; = ".HotSpot"

.field private static final DotNameSuffix:Ljava/lang/String; = ".Name"

.field public static final E_RESIZE_CURSOR:I = 0xb

.field public static final HAND_CURSOR:I = 0xc

.field public static final MOVE_CURSOR:I = 0xd

.field public static final NE_RESIZE_CURSOR:I = 0x7

.field public static final NW_RESIZE_CURSOR:I = 0x6

.field public static final N_RESIZE_CURSOR:I = 0x8

.field public static final SE_RESIZE_CURSOR:I = 0x5

.field public static final SW_RESIZE_CURSOR:I = 0x4

.field public static final S_RESIZE_CURSOR:I = 0x9

.field public static final TEXT_CURSOR:I = 0x2

.field public static final WAIT_CURSOR:I = 0x3

.field public static final W_RESIZE_CURSOR:I = 0xa

.field public static final cursorProperties:[[Ljava/lang/String;

.field private static final log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

.field public static predefined:[Lorg/apache/poi/java/awt/Cursor; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final predefinedPrivate:[Lorg/apache/poi/java/awt/Cursor;

.field private static final serialVersionUID:J = 0x6f6a0777f71201a0L

.field private static final systemCustomCursorDirPrefix:Ljava/lang/String;

.field private static systemCustomCursorProperties:Ljava/util/Properties;

.field private static final systemCustomCursorPropertiesFile:Ljava/lang/String;

.field private static final systemCustomCursors:Ljava/util/Hashtable;


# instance fields
.field private transient anchor:Ljava/lang/Object;

.field public transient disposer:Lorg/apache/poi/java/awt/Cursor$CursorDisposer;

.field public name:Ljava/lang/String;

.field private transient pData:J

.field public type:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xe

    new-array v1, v0, [Lorg/apache/poi/java/awt/Cursor;

    sput-object v1, Lorg/apache/poi/java/awt/Cursor;->predefined:[Lorg/apache/poi/java/awt/Cursor;

    new-array v1, v0, [Lorg/apache/poi/java/awt/Cursor;

    sput-object v1, Lorg/apache/poi/java/awt/Cursor;->predefinedPrivate:[Lorg/apache/poi/java/awt/Cursor;

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "AWT.DefaultCursor"

    const-string v2, "Default Cursor"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "AWT.CrosshairCursor"

    const-string v2, "Crosshair Cursor"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "AWT.TextCursor"

    const-string v3, "Text Cursor"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "AWT.WaitCursor"

    const-string v3, "Wait Cursor"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "AWT.SWResizeCursor"

    const-string v3, "Southwest Resize Cursor"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "AWT.SEResizeCursor"

    const-string v3, "Southeast Resize Cursor"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "AWT.NWResizeCursor"

    const-string v3, "Northwest Resize Cursor"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-string v1, "AWT.NEResizeCursor"

    const-string v3, "Northeast Resize Cursor"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const-string v1, "AWT.NResizeCursor"

    const-string v3, "North Resize Cursor"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const-string v1, "AWT.SResizeCursor"

    const-string v3, "South Resize Cursor"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v0, v3

    const-string v1, "AWT.WResizeCursor"

    const-string v3, "West Resize Cursor"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const-string v1, "AWT.EResizeCursor"

    const-string v3, "East Resize Cursor"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb

    aput-object v1, v0, v3

    const-string v1, "AWT.HandCursor"

    const-string v3, "Hand Cursor"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc

    aput-object v1, v0, v3

    const-string v1, "AWT.MoveCursor"

    const-string v3, "Move Cursor"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xd

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/poi/java/awt/Cursor;->cursorProperties:[[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v2}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/Cursor;->systemCustomCursors:Ljava/util/Hashtable;

    invoke-static {}, Lorg/apache/poi/java/awt/Cursor;->initCursorDir()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/Cursor;->systemCustomCursorDirPrefix:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "cursors.properties"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/Cursor;->systemCustomCursorPropertiesFile:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/poi/java/awt/Cursor;->systemCustomCursorProperties:Ljava/util/Properties;

    const-string v0, "org.apache.poi.java.awt.Cursor"

    invoke-static {v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/java/awt/Cursor;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Cursor;->initIDs()V

    :cond_0
    new-instance v0, Lorg/apache/poi/java/awt/Cursor$1;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/Cursor$1;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/sun/awt/AWTAccessor;->setCursorAccessor(Lorg/apache/poi/sun/awt/AWTAccessor$CursorAccessor;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .annotation runtime Ljava/beans/ConstructorProperties;
        value = {
            "type"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/java/awt/Cursor;->type:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/java/awt/Cursor;->anchor:Ljava/lang/Object;

    if-ltz p1, :cond_0

    const/16 v1, 0xd

    if-gt p1, v1, :cond_0

    iput p1, p0, Lorg/apache/poi/java/awt/Cursor;->type:I

    sget-object v1, Lorg/apache/poi/java/awt/Cursor;->cursorProperties:[[Ljava/lang/String;

    aget-object v2, v1, p1

    aget-object v0, v2, v0

    aget-object p1, v1, p1

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/Toolkit;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/java/awt/Cursor;->name:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "illegal cursor type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Cursor;->anchor:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/java/awt/Cursor;->type:I

    iput-object p1, p0, Lorg/apache/poi/java/awt/Cursor;->name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/java/awt/Cursor;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/java/awt/Cursor;->pData:J

    return-wide v0
.end method

.method public static synthetic access$002(Lorg/apache/poi/java/awt/Cursor;J)J
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/java/awt/Cursor;->pData:J

    return-wide p1
.end method

.method public static synthetic access$100(J)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/java/awt/Cursor;->finalizeImpl(J)V

    return-void
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/Cursor;->systemCustomCursorDirPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/Cursor;->systemCustomCursorPropertiesFile:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$400()Ljava/util/Properties;
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/Cursor;->systemCustomCursorProperties:Ljava/util/Properties;

    return-object v0
.end method

.method private static native finalizeImpl(J)V
.end method

.method public static getDefaultCursor()Lorg/apache/poi/java/awt/Cursor;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/poi/java/awt/Cursor;->getPredefinedCursor(I)Lorg/apache/poi/java/awt/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getPredefinedCursor(I)Lorg/apache/poi/java/awt/Cursor;
    .locals 3

    if-ltz p0, :cond_2

    const/16 v0, 0xd

    if-gt p0, v0, :cond_2

    sget-object v0, Lorg/apache/poi/java/awt/Cursor;->predefinedPrivate:[Lorg/apache/poi/java/awt/Cursor;

    aget-object v1, v0, p0

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/poi/java/awt/Cursor;

    invoke-direct {v1, p0}, Lorg/apache/poi/java/awt/Cursor;-><init>(I)V

    aput-object v1, v0, p0

    :cond_0
    sget-object v0, Lorg/apache/poi/java/awt/Cursor;->predefined:[Lorg/apache/poi/java/awt/Cursor;

    aget-object v2, v0, p0

    if-nez v2, :cond_1

    aput-object v1, v0, p0

    :cond_1
    return-object v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "illegal cursor type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSystemCustomCursor(Ljava/lang/String;)Lorg/apache/poi/java/awt/Cursor;
    .locals 7

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->checkHeadless()V

    sget-object v0, Lorg/apache/poi/java/awt/Cursor;->systemCustomCursors:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/Cursor;

    if-nez v1, :cond_7

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/Cursor;->systemCustomCursorProperties:Ljava/util/Properties;

    if-nez v1, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Cursor;->loadSystemCustomCursorProperties()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".File"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/java/awt/Cursor;->systemCustomCursorProperties:Ljava/util/Properties;

    invoke-virtual {v3, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x190

    if-nez v3, :cond_2

    sget-object v0, Lorg/apache/poi/java/awt/Cursor;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {v0, v4}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor.getSystemCustomCursor("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") returned null"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finer(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    sget-object v3, Lorg/apache/poi/java/awt/Cursor;->systemCustomCursorProperties:Ljava/util/Properties;

    invoke-virtual {v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/java/awt/Cursor;->systemCustomCursorProperties:Ljava/util/Properties;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".Name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v3, p0

    :cond_3
    sget-object v5, Lorg/apache/poi/java/awt/Cursor;->systemCustomCursorProperties:Ljava/util/Properties;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".HotSpot"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v5, v1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    const/4 v6, 0x2

    if-ne v1, v6, :cond_5

    :try_start_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v6, Lorg/apache/poi/java/awt/Cursor$2;

    invoke-direct {v6, v2, v1, v5, v3}, Lorg/apache/poi/java/awt/Cursor$2;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v1, :cond_4

    sget-object v0, Lorg/apache/poi/java/awt/Cursor;->log:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-virtual {v0, v4}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cursor.getSystemCustomCursor("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") returned null"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finer(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/poi/java/awt/AWTException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " occurred while creating cursor "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/apache/poi/java/awt/AWTException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    new-instance v0, Lorg/apache/poi/java/awt/AWTException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to parse hotspot property for cursor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/AWTException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lorg/apache/poi/java/awt/AWTException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to parse hotspot property for cursor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/AWTException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lorg/apache/poi/java/awt/AWTException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no hotspot property defined for cursor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/AWTException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_7
    :goto_0
    return-object v1
.end method

.method private static initCursorDir()Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/apache/poi/sun/security/action/GetPropertyAction;

    const-string v1, "java.home"

    invoke-direct {v0, v1}, Lorg/apache/poi/sun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "images"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "cursors"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native initIDs()V
.end method

.method private static loadSystemCustomCursorProperties()V
    .locals 5

    sget-object v0, Lorg/apache/poi/java/awt/Cursor;->systemCustomCursors:Ljava/util/Hashtable;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    sput-object v1, Lorg/apache/poi/java/awt/Cursor;->systemCustomCursorProperties:Ljava/util/Properties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Lorg/apache/poi/java/awt/Cursor$3;

    invoke-direct {v1}, Lorg/apache/poi/java/awt/Cursor$3;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    sput-object v2, Lorg/apache/poi/java/awt/Cursor;->systemCustomCursorProperties:Ljava/util/Properties;

    new-instance v2, Lorg/apache/poi/java/awt/AWTException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " occurred while loading: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/poi/java/awt/Cursor;->systemCustomCursorPropertiesFile:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/poi/java/awt/AWTException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setPData(J)V
    .locals 1

    iput-wide p1, p0, Lorg/apache/poi/java/awt/Cursor;->pData:J

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Cursor;->disposer:Lorg/apache/poi/java/awt/Cursor$CursorDisposer;

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/poi/java/awt/Cursor$CursorDisposer;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/java/awt/Cursor$CursorDisposer;-><init>(J)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Cursor;->disposer:Lorg/apache/poi/java/awt/Cursor$CursorDisposer;

    iget-object p1, p0, Lorg/apache/poi/java/awt/Cursor;->anchor:Ljava/lang/Object;

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/java/awt/Cursor;->anchor:Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/java/awt/Cursor;->anchor:Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/apache/poi/sun/java2d/Disposer;->addRecord(Ljava/lang/Object;Lorg/apache/poi/sun/java2d/DisposerRecord;)V

    goto :goto_0

    :cond_2
    iput-wide p1, v0, Lorg/apache/poi/java/awt/Cursor$CursorDisposer;->pData:J

    :goto_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Cursor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/Cursor;->type:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Cursor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
