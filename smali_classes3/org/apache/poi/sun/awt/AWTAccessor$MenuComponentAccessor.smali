.class public interface abstract Lorg/apache/poi/sun/awt/AWTAccessor$MenuComponentAccessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sun/awt/AWTAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MenuComponentAccessor"
.end annotation


# virtual methods
.method public abstract getAppContext(Lorg/apache/poi/java/awt/MenuComponent;)Lorg/apache/poi/sun/awt/AppContext;
.end method

.method public abstract getFont_NoClientCode(Lorg/apache/poi/java/awt/MenuComponent;)Lorg/apache/poi/java/awt/Font;
.end method

.method public abstract getParent(Lorg/apache/poi/java/awt/MenuComponent;)Lorg/apache/poi/java/awt/MenuContainer;
.end method

.method public abstract getPeer(Lorg/apache/poi/java/awt/MenuComponent;)Lorg/apache/poi/java/awt/peer/MenuComponentPeer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/poi/java/awt/peer/MenuComponentPeer;",
            ">(",
            "Lorg/apache/poi/java/awt/MenuComponent;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract setAppContext(Lorg/apache/poi/java/awt/MenuComponent;Lorg/apache/poi/sun/awt/AppContext;)V
.end method
