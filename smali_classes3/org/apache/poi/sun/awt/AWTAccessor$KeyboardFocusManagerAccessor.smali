.class public interface abstract Lorg/apache/poi/sun/awt/AWTAccessor$KeyboardFocusManagerAccessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sun/awt/AWTAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "KeyboardFocusManagerAccessor"
.end annotation


# virtual methods
.method public abstract getCurrentFocusCycleRoot()Lorg/apache/poi/java/awt/Container;
.end method

.method public abstract getCurrentKeyboardFocusManager(Lorg/apache/poi/sun/awt/AppContext;)Lorg/apache/poi/java/awt/KeyboardFocusManager;
.end method

.method public abstract processSynchronousLightweightTransfer(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Component;ZZJ)Z
.end method

.method public abstract removeLastFocusRequest(Lorg/apache/poi/java/awt/Component;)V
.end method

.method public abstract setMostRecentFocusOwner(Lorg/apache/poi/java/awt/Window;Lorg/apache/poi/java/awt/Component;)V
.end method

.method public abstract shouldNativelyFocusHeavyweight(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Component;ZZJLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)I
.end method
