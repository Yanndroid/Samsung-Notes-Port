.class public interface abstract Lorg/apache/poi/sun/awt/AWTAccessor$AWTEventAccessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sun/awt/AWTAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AWTEventAccessor"
.end annotation


# virtual methods
.method public abstract getAccessControlContext(Lorg/apache/poi/java/awt/AWTEvent;)Ljava/security/AccessControlContext;
.end method

.method public abstract getBData(Lorg/apache/poi/java/awt/AWTEvent;)[B
.end method

.method public abstract isSystemGenerated(Lorg/apache/poi/java/awt/AWTEvent;)Z
.end method

.method public abstract setBData(Lorg/apache/poi/java/awt/AWTEvent;[B)V
.end method

.method public abstract setPosted(Lorg/apache/poi/java/awt/AWTEvent;)V
.end method

.method public abstract setSystemGenerated(Lorg/apache/poi/java/awt/AWTEvent;)V
.end method
