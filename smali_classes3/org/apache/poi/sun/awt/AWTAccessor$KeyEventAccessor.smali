.class public interface abstract Lorg/apache/poi/sun/awt/AWTAccessor$KeyEventAccessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sun/awt/AWTAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "KeyEventAccessor"
.end annotation


# virtual methods
.method public abstract getOriginalSource(Lorg/apache/poi/java/awt/event/KeyEvent;)Lorg/apache/poi/java/awt/Component;
.end method

.method public abstract setExtendedKeyCode(Lorg/apache/poi/java/awt/event/KeyEvent;J)V
.end method

.method public abstract setPrimaryLevelUnicode(Lorg/apache/poi/java/awt/event/KeyEvent;J)V
.end method

.method public abstract setRawCode(Lorg/apache/poi/java/awt/event/KeyEvent;J)V
.end method
