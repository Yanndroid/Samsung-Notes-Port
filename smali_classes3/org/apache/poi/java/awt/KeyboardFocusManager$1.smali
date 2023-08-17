.class final Lorg/apache/poi/java/awt/KeyboardFocusManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sun/awt/AWTAccessor$KeyboardFocusManagerAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/KeyboardFocusManager;
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
.method public getCurrentFocusCycleRoot()Lorg/apache/poi/java/awt/Container;
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->access$000()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentKeyboardFocusManager(Lorg/apache/poi/sun/awt/AppContext;)Lorg/apache/poi/java/awt/KeyboardFocusManager;
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->getCurrentKeyboardFocusManager(Lorg/apache/poi/sun/awt/AppContext;)Lorg/apache/poi/java/awt/KeyboardFocusManager;

    move-result-object p1

    return-object p1
.end method

.method public processSynchronousLightweightTransfer(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Component;ZZJ)Z
    .locals 0

    invoke-static/range {p1 .. p6}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->processSynchronousLightweightTransfer(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Component;ZZJ)Z

    move-result p1

    return p1
.end method

.method public removeLastFocusRequest(Lorg/apache/poi/java/awt/Component;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->removeLastFocusRequest(Lorg/apache/poi/java/awt/Component;)V

    return-void
.end method

.method public setMostRecentFocusOwner(Lorg/apache/poi/java/awt/Window;Lorg/apache/poi/java/awt/Component;)V
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->setMostRecentFocusOwner(Lorg/apache/poi/java/awt/Window;Lorg/apache/poi/java/awt/Component;)V

    return-void
.end method

.method public shouldNativelyFocusHeavyweight(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Component;ZZJLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)I
    .locals 0

    invoke-static/range {p1 .. p7}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->shouldNativelyFocusHeavyweight(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Component;ZZJLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)I

    move-result p1

    return p1
.end method
