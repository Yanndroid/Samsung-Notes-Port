.class public interface abstract Lorg/apache/poi/sun/awt/AWTAccessor$ComponentAccessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sun/awt/AWTAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ComponentAccessor"
.end annotation


# virtual methods
.method public abstract canBeFocusOwner(Lorg/apache/poi/java/awt/Component;)Z
.end method

.method public abstract getAccessControlContext(Lorg/apache/poi/java/awt/Component;)Ljava/security/AccessControlContext;
.end method

.method public abstract getAppContext(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/sun/awt/AppContext;
.end method

.method public abstract getBackground(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Color;
.end method

.method public abstract getBackgroundEraseDisabled(Lorg/apache/poi/java/awt/Component;)Z
.end method

.method public abstract getBounds(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Rectangle;
.end method

.method public abstract getCursor(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Cursor;
.end method

.method public abstract getFont(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Font;
.end method

.method public abstract getForeground(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Color;
.end method

.method public abstract getHeight(Lorg/apache/poi/java/awt/Component;)I
.end method

.method public abstract getIgnoreRepaint(Lorg/apache/poi/java/awt/Component;)Z
.end method

.method public abstract getLocation(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Point;
.end method

.method public abstract getParent(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/Container;
.end method

.method public abstract getPeer(Lorg/apache/poi/java/awt/Component;)Lorg/apache/poi/java/awt/peer/ComponentPeer;
.end method

.method public abstract getWidth(Lorg/apache/poi/java/awt/Component;)I
.end method

.method public abstract getX(Lorg/apache/poi/java/awt/Component;)I
.end method

.method public abstract getY(Lorg/apache/poi/java/awt/Component;)I
.end method

.method public abstract isDisplayable(Lorg/apache/poi/java/awt/Component;)Z
.end method

.method public abstract isEnabled(Lorg/apache/poi/java/awt/Component;)Z
.end method

.method public abstract isLightweight(Lorg/apache/poi/java/awt/Component;)Z
.end method

.method public abstract isVisible(Lorg/apache/poi/java/awt/Component;)Z
.end method

.method public abstract processEvent(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/AWTEvent;)V
.end method

.method public abstract requestFocus(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z
.end method

.method public abstract revalidateSynchronously(Lorg/apache/poi/java/awt/Component;)V
.end method

.method public abstract setAppContext(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/sun/awt/AppContext;)V
.end method

.method public abstract setBackground(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Color;)V
.end method

.method public abstract setBackgroundEraseDisabled(Lorg/apache/poi/java/awt/Component;Z)V
.end method

.method public abstract setGraphicsConfiguration(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/GraphicsConfiguration;)V
.end method

.method public abstract setLocation(Lorg/apache/poi/java/awt/Component;II)V
.end method

.method public abstract setMixingCutoutShape(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Shape;)V
.end method

.method public abstract setParent(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Container;)V
.end method

.method public abstract setPeer(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/peer/ComponentPeer;)V
.end method

.method public abstract setRequestFocusController(Lorg/apache/poi/sun/awt/RequestFocusController;)V
.end method

.method public abstract setSize(Lorg/apache/poi/java/awt/Component;II)V
.end method
