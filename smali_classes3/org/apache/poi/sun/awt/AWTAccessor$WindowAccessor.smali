.class public interface abstract Lorg/apache/poi/sun/awt/AWTAccessor$WindowAccessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sun/awt/AWTAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WindowAccessor"
.end annotation


# virtual methods
.method public abstract calculateSecurityWarningPosition(Lorg/apache/poi/java/awt/Window;DDDD)Lorg/apache/poi/java/awt/geom/Point2D;
.end method

.method public abstract getOpacity(Lorg/apache/poi/java/awt/Window;)F
.end method

.method public abstract getOwnedWindows(Lorg/apache/poi/java/awt/Window;)[Lorg/apache/poi/java/awt/Window;
.end method

.method public abstract getSecurityWarningSize(Lorg/apache/poi/java/awt/Window;)Lorg/apache/poi/java/awt/Dimension;
.end method

.method public abstract getShape(Lorg/apache/poi/java/awt/Window;)Lorg/apache/poi/java/awt/Shape;
.end method

.method public abstract isAutoRequestFocus(Lorg/apache/poi/java/awt/Window;)Z
.end method

.method public abstract isTrayIconWindow(Lorg/apache/poi/java/awt/Window;)Z
.end method

.method public abstract setLWRequestStatus(Lorg/apache/poi/java/awt/Window;Z)V
.end method

.method public abstract setOpacity(Lorg/apache/poi/java/awt/Window;F)V
.end method

.method public abstract setOpaque(Lorg/apache/poi/java/awt/Window;Z)V
.end method

.method public abstract setSecurityWarningPosition(Lorg/apache/poi/java/awt/Window;Lorg/apache/poi/java/awt/geom/Point2D;FF)V
.end method

.method public abstract setSecurityWarningSize(Lorg/apache/poi/java/awt/Window;II)V
.end method

.method public abstract setShape(Lorg/apache/poi/java/awt/Window;Lorg/apache/poi/java/awt/Shape;)V
.end method

.method public abstract setTrayIconWindow(Lorg/apache/poi/java/awt/Window;Z)V
.end method

.method public abstract updateWindow(Lorg/apache/poi/java/awt/Window;)V
.end method
