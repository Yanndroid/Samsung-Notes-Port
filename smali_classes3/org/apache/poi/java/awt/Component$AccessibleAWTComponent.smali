.class public abstract Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;
.super Ljavax/accessibility/AccessibleContext;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljavax/accessibility/AccessibleComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Component;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AccessibleAWTComponent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent$AccessibleAWTComponentHandler;,
        Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent$AccessibleAWTFocusHandler;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x8e9fc248afc02ffL


# instance fields
.field public accessibleAWTComponentHandler:Lorg/apache/poi/java/awt/event/ComponentListener;

.field public accessibleAWTFocusHandler:Lorg/apache/poi/java/awt/event/FocusListener;

.field public final synthetic this$0:Lorg/apache/poi/java/awt/Component;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Component;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-direct {p0}, Ljavax/accessibility/AccessibleContext;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->accessibleAWTComponentHandler:Lorg/apache/poi/java/awt/event/ComponentListener;

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->accessibleAWTFocusHandler:Lorg/apache/poi/java/awt/event/FocusListener;

    return-void
.end method


# virtual methods
.method public addFocusListener(Lorg/apache/poi/java/awt/event/FocusListener;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Component;->addFocusListener(Lorg/apache/poi/java/awt/event/FocusListener;)V

    return-void
.end method

.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->accessibleAWTComponentHandler:Lorg/apache/poi/java/awt/event/ComponentListener;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent$AccessibleAWTComponentHandler;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent$AccessibleAWTComponentHandler;-><init>(Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->accessibleAWTComponentHandler:Lorg/apache/poi/java/awt/event/ComponentListener;

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v1, v0}, Lorg/apache/poi/java/awt/Component;->addComponentListener(Lorg/apache/poi/java/awt/event/ComponentListener;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->accessibleAWTFocusHandler:Lorg/apache/poi/java/awt/event/FocusListener;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent$AccessibleAWTFocusHandler;

    invoke-direct {v0, p0}, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent$AccessibleAWTFocusHandler;-><init>(Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;)V

    iput-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->accessibleAWTFocusHandler:Lorg/apache/poi/java/awt/event/FocusListener;

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v1, v0}, Lorg/apache/poi/java/awt/Component;->addFocusListener(Lorg/apache/poi/java/awt/event/FocusListener;)V

    :cond_1
    invoke-super {p0, p1}, Ljavax/accessibility/AccessibleContext;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    return-void
.end method

.method public contains(Lorg/apache/poi/java/awt/Point;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Component;->contains(Lorg/apache/poi/java/awt/Point;)Z

    move-result p1

    return p1
.end method

.method public getAccessibleAt(Lorg/apache/poi/java/awt/Point;)Ljavax/accessibility/Accessible;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAccessibleChild(I)Ljavax/accessibility/Accessible;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAccessibleChildrenCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccessibleComponent()Ljavax/accessibility/AccessibleComponent;
    .locals 0

    return-object p0
.end method

.method public getAccessibleDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->accessibleDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getAccessibleIndexInParent()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getAccessibleIndexInParent()I

    move-result v0

    return v0
.end method

.method public getAccessibleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->accessibleName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccessibleParent()Ljavax/accessibility/Accessible;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->accessibleParent:Ljavax/accessibility/Accessible;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->accessibleParent:Ljavax/accessibility/Accessible;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getParent()Lorg/apache/poi/java/awt/Container;

    move-result-object v0

    instance-of v1, v0, Ljavax/accessibility/Accessible;

    if-eqz v1, :cond_1

    check-cast v0, Ljavax/accessibility/Accessible;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccessibleRole()Ljavax/accessibility/AccessibleRole;
    .locals 1

    sget-object v0, Ljavax/accessibility/AccessibleRole;->AWT_COMPONENT:Ljavax/accessibility/AccessibleRole;

    return-object v0
.end method

.method public getAccessibleStateSet()Ljavax/accessibility/AccessibleStateSet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getAccessibleStateSet()Ljavax/accessibility/AccessibleStateSet;

    move-result-object v0

    return-object v0
.end method

.method public getBackground()Lorg/apache/poi/java/awt/Color;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getBackground()Lorg/apache/poi/java/awt/Color;

    move-result-object v0

    return-object v0
.end method

.method public getBounds()Lorg/apache/poi/java/awt/Rectangle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getBounds()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public getCursor()Lorg/apache/poi/java/awt/Cursor;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getCursor()Lorg/apache/poi/java/awt/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getFont()Lorg/apache/poi/java/awt/Font;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getFont()Lorg/apache/poi/java/awt/Font;

    move-result-object v0

    return-object v0
.end method

.method public getFontMetrics(Lorg/apache/poi/java/awt/Font;)Lorg/apache/poi/java/awt/FontMetrics;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Component;->getFontMetrics(Lorg/apache/poi/java/awt/Font;)Lorg/apache/poi/java/awt/FontMetrics;

    move-result-object p1

    return-object p1
.end method

.method public getForeground()Lorg/apache/poi/java/awt/Color;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getForeground()Lorg/apache/poi/java/awt/Color;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lorg/apache/poi/java/awt/Point;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getLocation()Lorg/apache/poi/java/awt/Point;

    move-result-object v0

    return-object v0
.end method

.method public getLocationOnScreen()Lorg/apache/poi/java/awt/Point;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getTreeLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Component;->getLocationOnScreen()Lorg/apache/poi/java/awt/Point;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isFocusTraversable()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isFocusTraversable()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v0

    return v0
.end method

.method public removeFocusListener(Lorg/apache/poi/java/awt/event/FocusListener;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Component;->removeFocusListener(Lorg/apache/poi/java/awt/event/FocusListener;)V

    return-void
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->accessibleAWTComponentHandler:Lorg/apache/poi/java/awt/event/ComponentListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v2, v0}, Lorg/apache/poi/java/awt/Component;->removeComponentListener(Lorg/apache/poi/java/awt/event/ComponentListener;)V

    iput-object v1, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->accessibleAWTComponentHandler:Lorg/apache/poi/java/awt/event/ComponentListener;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->accessibleAWTFocusHandler:Lorg/apache/poi/java/awt/event/FocusListener;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v2, v0}, Lorg/apache/poi/java/awt/Component;->removeFocusListener(Lorg/apache/poi/java/awt/event/FocusListener;)V

    iput-object v1, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->accessibleAWTFocusHandler:Lorg/apache/poi/java/awt/event/FocusListener;

    :cond_1
    invoke-super {p0, p1}, Ljavax/accessibility/AccessibleContext;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    return-void
.end method

.method public requestFocus()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->requestFocus()V

    return-void
.end method

.method public setBackground(Lorg/apache/poi/java/awt/Color;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Component;->setBackground(Lorg/apache/poi/java/awt/Color;)V

    return-void
.end method

.method public setBounds(Lorg/apache/poi/java/awt/Rectangle;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Component;->setBounds(Lorg/apache/poi/java/awt/Rectangle;)V

    return-void
.end method

.method public setCursor(Lorg/apache/poi/java/awt/Cursor;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Component;->setCursor(Lorg/apache/poi/java/awt/Cursor;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isEnabled()Z

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v1, p1}, Lorg/apache/poi/java/awt/Component;->setEnabled(Z)V

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    iget-object v0, v0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const-string v2, "AccessibleState"

    if-eqz p1, :cond_0

    sget-object p1, Ljavax/accessibility/AccessibleState;->ENABLED:Ljavax/accessibility/AccessibleState;

    invoke-virtual {v0, v2, v1, p1}, Ljavax/accessibility/AccessibleContext;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p1, Ljavax/accessibility/AccessibleState;->ENABLED:Ljavax/accessibility/AccessibleState;

    invoke-virtual {v0, v2, p1, v1}, Ljavax/accessibility/AccessibleContext;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFont(Lorg/apache/poi/java/awt/Font;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Component;->setFont(Lorg/apache/poi/java/awt/Font;)V

    return-void
.end method

.method public setForeground(Lorg/apache/poi/java/awt/Color;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Component;->setForeground(Lorg/apache/poi/java/awt/Color;)V

    return-void
.end method

.method public setLocation(Lorg/apache/poi/java/awt/Point;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Component;->setLocation(Lorg/apache/poi/java/awt/Point;)V

    return-void
.end method

.method public setSize(Lorg/apache/poi/java/awt/Dimension;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Component;->setSize(Lorg/apache/poi/java/awt/Dimension;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isVisible()Z

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v1, p1}, Lorg/apache/poi/java/awt/Component;->setVisible(Z)V

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    iget-object v0, v0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const-string v2, "AccessibleState"

    if-eqz p1, :cond_0

    sget-object p1, Ljavax/accessibility/AccessibleState;->VISIBLE:Ljavax/accessibility/AccessibleState;

    invoke-virtual {v0, v2, v1, p1}, Ljavax/accessibility/AccessibleContext;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p1, Ljavax/accessibility/AccessibleState;->VISIBLE:Ljavax/accessibility/AccessibleState;

    invoke-virtual {v0, v2, p1, v1}, Ljavax/accessibility/AccessibleContext;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
