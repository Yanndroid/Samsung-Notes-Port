.class public abstract Lorg/apache/poi/sun/awt/KeyboardFocusManagerPeerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/peer/KeyboardFocusManagerPeer;


# static fields
.field public static final SNFH_FAILURE:I = 0x0

.field public static final SNFH_SUCCESS_HANDLED:I = 0x1

.field public static final SNFH_SUCCESS_PROCEED:I = 0x2

.field private static final focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

.field private static kfmAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$KeyboardFocusManagerAccessor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "org.apache.poi.sun.awt.focus.KeyboardFocusManagerPeerImpl"

    invoke-static {v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sun/awt/KeyboardFocusManagerPeerImpl;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAccessor;->getKeyboardFocusManagerAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$KeyboardFocusManagerAccessor;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sun/awt/KeyboardFocusManagerPeerImpl;->kfmAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$KeyboardFocusManagerAccessor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deliverFocus(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Component;ZZJLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;Lorg/apache/poi/java/awt/Component;)Z
    .locals 3

    if-nez p0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    if-eqz p7, :cond_1

    invoke-virtual {p7}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p7, 0x0

    :cond_1
    const-string v1, "Posting focus event: "

    if-eqz p7, :cond_3

    new-instance v2, Lorg/apache/poi/sun/awt/CausedFocusEvent;

    const/16 p2, 0x3ed

    const/4 p3, 0x0

    move-object p0, v2

    move-object p1, p7

    move-object p4, v0

    move-object p5, p6

    invoke-direct/range {p0 .. p5}, Lorg/apache/poi/sun/awt/CausedFocusEvent;-><init>(Lorg/apache/poi/java/awt/Component;IZLorg/apache/poi/java/awt/Component;Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)V

    sget-object p0, Lorg/apache/poi/sun/awt/KeyboardFocusManagerPeerImpl;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    sget-object p1, Lorg/apache/poi/sun/util/logging/PlatformLogger$Level;->FINER:Lorg/apache/poi/sun/util/logging/PlatformLogger$Level;

    invoke-virtual {p0, p1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(Lorg/apache/poi/sun/util/logging/PlatformLogger$Level;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finer(Ljava/lang/String;)V

    :cond_2
    invoke-static {p7}, Lorg/apache/poi/sun/awt/SunToolkit;->targetToAppContext(Ljava/lang/Object;)Lorg/apache/poi/sun/awt/AppContext;

    move-result-object p0

    invoke-static {p0, v2}, Lorg/apache/poi/sun/awt/SunToolkit;->postEvent(Lorg/apache/poi/sun/awt/AppContext;Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_3
    new-instance v2, Lorg/apache/poi/sun/awt/CausedFocusEvent;

    const/16 p2, 0x3ec

    const/4 p3, 0x0

    move-object p0, v2

    move-object p1, v0

    move-object p4, p7

    move-object p5, p6

    invoke-direct/range {p0 .. p5}, Lorg/apache/poi/sun/awt/CausedFocusEvent;-><init>(Lorg/apache/poi/java/awt/Component;IZLorg/apache/poi/java/awt/Component;Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)V

    sget-object p0, Lorg/apache/poi/sun/awt/KeyboardFocusManagerPeerImpl;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    sget-object p1, Lorg/apache/poi/sun/util/logging/PlatformLogger$Level;->FINER:Lorg/apache/poi/sun/util/logging/PlatformLogger$Level;

    invoke-virtual {p0, p1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(Lorg/apache/poi/sun/util/logging/PlatformLogger$Level;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->finer(Ljava/lang/String;)V

    :cond_4
    invoke-static {v0}, Lorg/apache/poi/sun/awt/SunToolkit;->targetToAppContext(Ljava/lang/Object;)Lorg/apache/poi/sun/awt/AppContext;

    move-result-object p0

    invoke-static {p0, v2}, Lorg/apache/poi/sun/awt/SunToolkit;->postEvent(Lorg/apache/poi/sun/awt/AppContext;Lorg/apache/poi/java/awt/AWTEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static processSynchronousLightweightTransfer(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Component;ZZJ)Z
    .locals 7

    sget-object v0, Lorg/apache/poi/sun/awt/KeyboardFocusManagerPeerImpl;->kfmAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$KeyboardFocusManagerAccessor;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lorg/apache/poi/sun/awt/AWTAccessor$KeyboardFocusManagerAccessor;->processSynchronousLightweightTransfer(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Component;ZZJ)Z

    move-result p0

    return p0
.end method

.method public static removeLastFocusRequest(Lorg/apache/poi/java/awt/Component;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/awt/KeyboardFocusManagerPeerImpl;->kfmAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$KeyboardFocusManagerAccessor;

    invoke-interface {v0, p0}, Lorg/apache/poi/sun/awt/AWTAccessor$KeyboardFocusManagerAccessor;->removeLastFocusRequest(Lorg/apache/poi/java/awt/Component;)V

    return-void
.end method

.method public static requestFocusFor(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z
    .locals 1

    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAccessor;->getComponentAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$ComponentAccessor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/apache/poi/sun/awt/AWTAccessor$ComponentAccessor;->requestFocus(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z

    move-result p0

    return p0
.end method

.method public static shouldFocusOnClick(Lorg/apache/poi/java/awt/Component;)Z
    .locals 3

    instance-of v0, p0, Lorg/apache/poi/java/awt/Canvas;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    instance-of v0, p0, Lorg/apache/poi/java/awt/Scrollbar;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lorg/apache/poi/java/awt/Panel;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lorg/apache/poi/java/awt/Panel;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Container;->getComponentCount()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Component;->getPeer()Lorg/apache/poi/java/awt/peer/ComponentPeer;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/java/awt/peer/ComponentPeer;->isFocusable()Z

    move-result v0

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v2

    :goto_2
    if-eqz v0, :cond_5

    invoke-static {}, Lorg/apache/poi/sun/awt/AWTAccessor;->getComponentAccessor()Lorg/apache/poi/sun/awt/AWTAccessor$ComponentAccessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/poi/sun/awt/AWTAccessor$ComponentAccessor;->canBeFocusOwner(Lorg/apache/poi/java/awt/Component;)Z

    move-result p0

    if-eqz p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method public static shouldNativelyFocusHeavyweight(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Component;ZZJLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)I
    .locals 8

    sget-object v0, Lorg/apache/poi/sun/awt/KeyboardFocusManagerPeerImpl;->kfmAccessor:Lorg/apache/poi/sun/awt/AWTAccessor$KeyboardFocusManagerAccessor;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lorg/apache/poi/sun/awt/AWTAccessor$KeyboardFocusManagerAccessor;->shouldNativelyFocusHeavyweight(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Component;ZZJLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public clearGlobalFocusOwner(Lorg/apache/poi/java/awt/Window;)V
    .locals 6

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Window;->getFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    sget-object p1, Lorg/apache/poi/sun/awt/KeyboardFocusManagerPeerImpl;->focusLog:Lorg/apache/poi/sun/util/logging/PlatformLogger;

    sget-object v0, Lorg/apache/poi/sun/util/logging/PlatformLogger$Level;->FINE:Lorg/apache/poi/sun/util/logging/PlatformLogger$Level;

    invoke-virtual {p1, v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(Lorg/apache/poi/sun/util/logging/PlatformLogger$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing global focus owner "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    new-instance p1, Lorg/apache/poi/sun/awt/CausedFocusEvent;

    const/16 v2, 0x3ed

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;->CLEAR_GLOBAL_FOCUS_OWNER:Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/sun/awt/CausedFocusEvent;-><init>(Lorg/apache/poi/java/awt/Component;IZLorg/apache/poi/java/awt/Component;Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)V

    invoke-static {p1}, Lorg/apache/poi/sun/awt/SunToolkit;->postPriorityEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    :cond_1
    return-void
.end method
