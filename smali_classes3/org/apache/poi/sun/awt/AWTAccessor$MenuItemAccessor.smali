.class public interface abstract Lorg/apache/poi/sun/awt/AWTAccessor$MenuItemAccessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sun/awt/AWTAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MenuItemAccessor"
.end annotation


# virtual methods
.method public abstract getActionCommandImpl(Lorg/apache/poi/java/awt/MenuItem;)Ljava/lang/String;
.end method

.method public abstract getLabel(Lorg/apache/poi/java/awt/MenuItem;)Ljava/lang/String;
.end method

.method public abstract getShortcut(Lorg/apache/poi/java/awt/MenuItem;)Lorg/apache/poi/java/awt/MenuShortcut;
.end method

.method public abstract isEnabled(Lorg/apache/poi/java/awt/MenuItem;)Z
.end method

.method public abstract isItemEnabled(Lorg/apache/poi/java/awt/MenuItem;)Z
.end method
