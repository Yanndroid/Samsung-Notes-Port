.class public Lorg/apache/poi/java/awt/AWTKeyStroke;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field private static APP_CONTEXT_CACHE_KEY:Ljava/lang/Object; = null

.field private static APP_CONTEXT_KEYSTROKE_KEY:Lorg/apache/poi/java/awt/AWTKeyStroke; = null

.field private static modifierKeywords:Ljava/util/Map; = null

.field public static final serialVersionUID:J = -0x593dddc7555a830fL

.field private static vks:Lorg/apache/poi/java/awt/VKCollection;


# instance fields
.field private keyChar:C

.field private keyCode:I

.field private modifiers:I

.field private onKeyRelease:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/java/awt/AWTKeyStroke;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/poi/java/awt/AWTKeyStroke;->APP_CONTEXT_CACHE_KEY:Ljava/lang/Object;

    new-instance v0, Lorg/apache/poi/java/awt/AWTKeyStroke;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/AWTKeyStroke;-><init>()V

    sput-object v0, Lorg/apache/poi/java/awt/AWTKeyStroke;->APP_CONTEXT_KEYSTROKE_KEY:Lorg/apache/poi/java/awt/AWTKeyStroke;

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->loadLibraries()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xffff

    iput-char v0, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->keyChar:C

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->keyCode:I

    return-void
.end method

.method public constructor <init>(CIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->keyChar:C

    iput p2, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->keyCode:I

    iput p3, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->modifiers:I

    iput-boolean p4, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->onKeyRelease:Z

    return-void
.end method

.method public static getAWTKeyStroke(C)Lorg/apache/poi/java/awt/AWTKeyStroke;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getCachedStroke(CIIZ)Lorg/apache/poi/java/awt/AWTKeyStroke;

    move-result-object p0

    return-object p0
.end method

.method public static getAWTKeyStroke(II)Lorg/apache/poi/java/awt/AWTKeyStroke;
    .locals 2

    const v0, 0xffff

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getCachedStroke(CIIZ)Lorg/apache/poi/java/awt/AWTKeyStroke;

    move-result-object p0

    return-object p0
.end method

.method public static getAWTKeyStroke(IIZ)Lorg/apache/poi/java/awt/AWTKeyStroke;
    .locals 1

    const v0, 0xffff

    invoke-static {v0, p0, p1, p2}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getCachedStroke(CIIZ)Lorg/apache/poi/java/awt/AWTKeyStroke;

    move-result-object p0

    return-object p0
.end method

.method public static getAWTKeyStroke(Ljava/lang/Character;I)Lorg/apache/poi/java/awt/AWTKeyStroke;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getCachedStroke(CIIZ)Lorg/apache/poi/java/awt/AWTKeyStroke;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "keyChar cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAWTKeyStroke(Ljava/lang/String;)Lorg/apache/poi/java/awt/AWTKeyStroke;
    .locals 10

    if-eqz p0, :cond_b

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, " "

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-class p0, Lorg/apache/poi/java/awt/AWTKeyStroke;

    monitor-enter p0

    :try_start_0
    sget-object v1, Lorg/apache/poi/java/awt/AWTKeyStroke;->modifierKeywords:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    const-string/jumbo v2, "shift"

    const/16 v3, 0x41

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "control"

    const/16 v3, 0x82

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ctrl"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "meta"

    const/16 v3, 0x104

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "alt"

    const/16 v3, 0x208

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "altGraph"

    const/16 v3, 0x2020

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "button1"

    const/16 v3, 0x400

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "button2"

    const/16 v3, 0x800

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "button3"

    const/16 v3, 0x1000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/java/awt/AWTKeyStroke;->modifierKeywords:Ljava/util/Map;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-gt v3, p0, :cond_a

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    if-eqz v4, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_1

    if-ne v3, p0, :cond_1

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0, v2, v7, v2}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getCachedStroke(CIIZ)Lorg/apache/poi/java/awt/AWTKeyStroke;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String formatted incorrectly"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-nez v5, :cond_8

    if-nez v6, :cond_8

    if-ne v3, p0, :cond_3

    goto :goto_2

    :cond_3
    const-string v9, "released"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v6, v1

    goto :goto_1

    :cond_4
    const-string v9, "pressed"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v5, v1

    goto :goto_1

    :cond_5
    const-string/jumbo v9, "typed"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v4, v1

    goto :goto_1

    :cond_6
    sget-object v9, Lorg/apache/poi/java/awt/AWTKeyStroke;->modifierKeywords:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    or-int/2addr v7, v8

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String formatted incorrectly"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    if-ne v3, p0, :cond_9

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VK_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getVKValue(Ljava/lang/String;)I

    move-result p0

    const v0, 0xffff

    invoke-static {v0, p0, v7, v6}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getCachedStroke(CIIZ)Lorg/apache/poi/java/awt/AWTKeyStroke;

    move-result-object p0

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String formatted incorrectly"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String formatted incorrectly"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getAWTKeyStrokeClass()Ljava/lang/Class;
    .locals 4

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v0

    const-class v1, Lorg/apache/poi/java/awt/AWTKeyStroke;

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-nez v1, :cond_0

    const-class v1, Lorg/apache/poi/java/awt/AWTKeyStroke;

    const-class v2, Lorg/apache/poi/java/awt/AWTKeyStroke;

    const-class v3, Lorg/apache/poi/java/awt/AWTKeyStroke;

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/sun/awt/AppContext;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public static getAWTKeyStrokeForEvent(Lorg/apache/poi/java/awt/event/KeyEvent;)Lorg/apache/poi/java/awt/AWTKeyStroke;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/event/KeyEvent;->getID()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const v2, 0xffff

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/event/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/event/KeyEvent;->getModifiers()I

    move-result p0

    const/16 v4, 0x192

    if-ne v0, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v3, p0, v1}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getCachedStroke(CIIZ)Lorg/apache/poi/java/awt/AWTKeyStroke;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/event/KeyEvent;->getKeyChar()C

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/event/KeyEvent;->getModifiers()I

    move-result p0

    invoke-static {v0, v1, p0, v1}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getCachedStroke(CIIZ)Lorg/apache/poi/java/awt/AWTKeyStroke;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static declared-synchronized getCachedStroke(CIIZ)Lorg/apache/poi/java/awt/AWTKeyStroke;
    .locals 6

    const-class v0, Lorg/apache/poi/java/awt/AWTKeyStroke;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/java/awt/AWTKeyStroke;->APP_CONTEXT_CACHE_KEY:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/apache/poi/sun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    sget-object v3, Lorg/apache/poi/java/awt/AWTKeyStroke;->APP_CONTEXT_KEYSTROKE_KEY:Lorg/apache/poi/java/awt/AWTKeyStroke;

    invoke-virtual {v1, v3}, Lorg/apache/poi/sun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/java/awt/AWTKeyStroke;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v4, Lorg/apache/poi/java/awt/AWTKeyStroke;->APP_CONTEXT_CACHE_KEY:Ljava/lang/Object;

    invoke-virtual {v1, v4, v2}, Lorg/apache/poi/sun/awt/AppContext;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-nez v3, :cond_1

    :try_start_1
    invoke-static {}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getAWTKeyStrokeClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getCtor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/java/awt/AWTKeyStroke;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v3, Lorg/apache/poi/java/awt/AWTKeyStroke;->APP_CONTEXT_KEYSTROKE_KEY:Lorg/apache/poi/java/awt/AWTKeyStroke;

    invoke-virtual {v1, v3, v4}, Lorg/apache/poi/sun/awt/AppContext;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-object v3, v4

    :catch_1
    :cond_1
    :try_start_3
    iput-char p0, v3, Lorg/apache/poi/java/awt/AWTKeyStroke;->keyChar:C

    iput p1, v3, Lorg/apache/poi/java/awt/AWTKeyStroke;->keyCode:I

    invoke-static {p2}, Lorg/apache/poi/java/awt/AWTKeyStroke;->mapOldModifiers(I)I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/java/awt/AWTKeyStroke;->mapNewModifiers(I)I

    move-result p0

    iput p0, v3, Lorg/apache/poi/java/awt/AWTKeyStroke;->modifiers:I

    iput-boolean p3, v3, Lorg/apache/poi/java/awt/AWTKeyStroke;->onKeyRelease:Z

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/java/awt/AWTKeyStroke;

    if-nez p0, :cond_2

    invoke-interface {v2, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->APP_CONTEXT_KEYSTROKE_KEY:Lorg/apache/poi/java/awt/AWTKeyStroke;

    invoke-virtual {v1, p0}, Lorg/apache/poi/sun/awt/AppContext;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_2
    move-object v3, p0

    :goto_0
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getCtor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 1

    new-instance v0, Lorg/apache/poi/java/awt/AWTKeyStroke$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/AWTKeyStroke$1;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Constructor;

    return-object p0
.end method

.method public static getModifiersText(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_0

    const-string/jumbo v1, "shift "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_1

    const-string v1, "ctrl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_2

    const-string v1, "meta "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_3

    const-string v1, "alt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_4

    const-string v1, "altGraph "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_5

    const-string v1, "button1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_6

    const-string v1, "button2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_7

    const-string p0, "button3 "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getVKCollection()Lorg/apache/poi/java/awt/VKCollection;
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/AWTKeyStroke;->vks:Lorg/apache/poi/java/awt/VKCollection;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/VKCollection;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/VKCollection;-><init>()V

    sput-object v0, Lorg/apache/poi/java/awt/AWTKeyStroke;->vks:Lorg/apache/poi/java/awt/VKCollection;

    :cond_0
    sget-object v0, Lorg/apache/poi/java/awt/AWTKeyStroke;->vks:Lorg/apache/poi/java/awt/VKCollection;

    return-object v0
.end method

.method public static getVKText(I)Ljava/lang/String;
    .locals 8

    invoke-static {}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getVKCollection()Lorg/apache/poi/java/awt/VKCollection;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/VKCollection;->findName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v2, 0x19

    const-class v4, Lorg/apache/poi/java/awt/event/KeyEvent;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_2

    :try_start_0
    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    if-ne v6, v2, :cond_1

    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_1

    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "VK_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    aget-object v6, v4, v5

    const-class v7, Lorg/apache/poi/java/awt/event/KeyEvent;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    if-ne v6, p0, :cond_1

    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Lorg/apache/poi/java/awt/VKCollection;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "UNKNOWN"

    return-object p0
.end method

.method private static getVKValue(Ljava/lang/String;)I
    .locals 4

    const-string v0, "String formatted incorrectly"

    invoke-static {}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getVKCollection()Lorg/apache/poi/java/awt/VKCollection;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/poi/java/awt/VKCollection;->findCode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    :try_start_0
    const-class v2, Lorg/apache/poi/java/awt/event/KeyEvent;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-class v3, Lorg/apache/poi/java/awt/event/KeyEvent;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lorg/apache/poi/java/awt/VKCollection;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static mapNewModifiers(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_0

    or-int/lit8 p0, p0, 0x1

    :cond_0
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_1

    or-int/lit8 p0, p0, 0x8

    :cond_1
    and-int/lit16 v0, p0, 0x2000

    if-eqz v0, :cond_2

    or-int/lit8 p0, p0, 0x20

    :cond_2
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_3

    or-int/lit8 p0, p0, 0x2

    :cond_3
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_4

    or-int/lit8 p0, p0, 0x4

    :cond_4
    return p0
.end method

.method private static mapOldModifiers(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    or-int/lit8 p0, p0, 0x40

    :cond_0
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_1

    or-int/lit16 p0, p0, 0x200

    :cond_1
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_2

    or-int/lit16 p0, p0, 0x2000

    :cond_2
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_3

    or-int/lit16 p0, p0, 0x80

    :cond_3
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_4

    or-int/lit16 p0, p0, 0x100

    :cond_4
    and-int/lit16 p0, p0, 0x3fc0

    return p0
.end method

.method public static registerSubclass(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_4

    invoke-static {}, Lorg/apache/poi/sun/awt/AppContext;->getAppContext()Lorg/apache/poi/sun/awt/AppContext;

    move-result-object v0

    const-class v1, Lorg/apache/poi/java/awt/AWTKeyStroke;

    monitor-enter v1

    :try_start_0
    const-class v2, Lorg/apache/poi/java/awt/AWTKeyStroke;

    invoke-virtual {v0, v2}, Lorg/apache/poi/sun/awt/AppContext;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-class v1, Lorg/apache/poi/java/awt/AWTKeyStroke;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getCtor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const-string/jumbo v2, "subclass could not be instantiated"

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/java/awt/AWTKeyStroke;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_1

    const-class v1, Lorg/apache/poi/java/awt/AWTKeyStroke;

    monitor-enter v1

    :try_start_2
    const-class v2, Lorg/apache/poi/java/awt/AWTKeyStroke;

    invoke-virtual {v0, v2, p0}, Lorg/apache/poi/sun/awt/AppContext;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->APP_CONTEXT_CACHE_KEY:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lorg/apache/poi/sun/awt/AppContext;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->APP_CONTEXT_KEYSTROKE_KEY:Lorg/apache/poi/java/awt/AWTKeyStroke;

    invoke-virtual {v0, p0}, Lorg/apache/poi/sun/awt/AppContext;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/ClassCastException;

    const-string/jumbo v0, "subclass is not derived from AWTKeyStroke"

    invoke-direct {p0, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "subclass cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/java/awt/AWTKeyStroke;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/java/awt/AWTKeyStroke;

    iget-char v0, p1, Lorg/apache/poi/java/awt/AWTKeyStroke;->keyChar:C

    iget-char v2, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->keyChar:C

    if-ne v0, v2, :cond_0

    iget v0, p1, Lorg/apache/poi/java/awt/AWTKeyStroke;->keyCode:I

    iget v2, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->keyCode:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p1, Lorg/apache/poi/java/awt/AWTKeyStroke;->onKeyRelease:Z

    iget-boolean v2, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->onKeyRelease:Z

    if-ne v0, v2, :cond_0

    iget p1, p1, Lorg/apache/poi/java/awt/AWTKeyStroke;->modifiers:I

    iget v0, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->modifiers:I

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final getKeyChar()C
    .locals 1

    iget-char v0, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->keyChar:C

    return v0
.end method

.method public final getKeyCode()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->keyCode:I

    return v0
.end method

.method public final getKeyEventType()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->keyCode:I

    if-nez v0, :cond_0

    const/16 v0, 0x190

    return v0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->onKeyRelease:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x192

    goto :goto_0

    :cond_1
    const/16 v0, 0x191

    :goto_0
    return v0
.end method

.method public final getModifiers()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->modifiers:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-char v0, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->keyChar:C

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->keyCode:I

    add-int/2addr v2, v1

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    mul-int/2addr v0, v2

    iget v2, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->modifiers:I

    add-int/2addr v2, v1

    mul-int/2addr v0, v2

    iget-boolean v2, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->onKeyRelease:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isOnKeyRelease()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->onKeyRelease:Z

    return v0
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 5

    const-class v0, Lorg/apache/poi/java/awt/AWTKeyStroke;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getAWTKeyStrokeClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-char v1, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->keyChar:C

    iget v2, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->keyCode:I

    iget v3, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->modifiers:I

    iget-boolean v4, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->onKeyRelease:Z

    invoke-static {v1, v2, v3, v4}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getCachedStroke(CIIZ)Lorg/apache/poi/java/awt/AWTKeyStroke;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->keyCode:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->modifiers:I

    invoke-static {v1}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getModifiersText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "typed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->keyChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->modifiers:I

    invoke-static {v1}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getModifiersText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->onKeyRelease:Z

    if-eqz v1, :cond_1

    const-string v1, "released"

    goto :goto_1

    :cond_1
    const-string v1, "pressed"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/java/awt/AWTKeyStroke;->keyCode:I

    invoke-static {v1}, Lorg/apache/poi/java/awt/AWTKeyStroke;->getVKText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
