.class public abstract Lorg/apache/poi/java/awt/MenuComponent$AccessibleAWTMenuComponent;
.super Ljavax/accessibility/AccessibleContext;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljavax/accessibility/AccessibleComponent;
.implements Ljavax/accessibility/AccessibleSelection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/MenuComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AccessibleAWTMenuComponent"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3b406e0566adf5aaL


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/MenuComponent;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/MenuComponent;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/MenuComponent$AccessibleAWTMenuComponent;->this$0:Lorg/apache/poi/java/awt/MenuComponent;

    invoke-direct {p0}, Ljavax/accessibility/AccessibleContext;-><init>()V

    return-void
.end method


# virtual methods
.method public addAccessibleSelection(I)V
    .locals 0

    return-void
.end method

.method public addFocusListener(Lorg/apache/poi/java/awt/event/FocusListener;)V
    .locals 0

    return-void
.end method

.method public clearAccessibleSelection()V
    .locals 0

    return-void
.end method

.method public contains(Lorg/apache/poi/java/awt/Point;)Z
    .locals 0

    const/4 p1, 0x0

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

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent$AccessibleAWTMenuComponent;->accessibleDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getAccessibleIndexInParent()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent$AccessibleAWTMenuComponent;->this$0:Lorg/apache/poi/java/awt/MenuComponent;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/MenuComponent;->getAccessibleIndexInParent()I

    move-result v0

    return v0
.end method

.method public getAccessibleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent$AccessibleAWTMenuComponent;->accessibleName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccessibleParent()Ljavax/accessibility/Accessible;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent$AccessibleAWTMenuComponent;->accessibleParent:Ljavax/accessibility/Accessible;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent$AccessibleAWTMenuComponent;->accessibleParent:Ljavax/accessibility/Accessible;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent$AccessibleAWTMenuComponent;->this$0:Lorg/apache/poi/java/awt/MenuComponent;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/MenuComponent;->getParent()Lorg/apache/poi/java/awt/MenuContainer;

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

.method public getAccessibleSelection(I)Ljavax/accessibility/Accessible;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAccessibleSelection()Ljavax/accessibility/AccessibleSelection;
    .locals 0

    return-object p0
.end method

.method public getAccessibleSelectionCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccessibleStateSet()Ljavax/accessibility/AccessibleStateSet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent$AccessibleAWTMenuComponent;->this$0:Lorg/apache/poi/java/awt/MenuComponent;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/MenuComponent;->getAccessibleStateSet()Ljavax/accessibility/AccessibleStateSet;

    move-result-object v0

    return-object v0
.end method

.method public getBackground()Lorg/apache/poi/java/awt/Color;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBounds()Lorg/apache/poi/java/awt/Rectangle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCursor()Lorg/apache/poi/java/awt/Cursor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFont()Lorg/apache/poi/java/awt/Font;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent$AccessibleAWTMenuComponent;->this$0:Lorg/apache/poi/java/awt/MenuComponent;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/MenuComponent;->getFont()Lorg/apache/poi/java/awt/Font;

    move-result-object v0

    return-object v0
.end method

.method public getFontMetrics(Lorg/apache/poi/java/awt/Font;)Lorg/apache/poi/java/awt/FontMetrics;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getForeground()Lorg/apache/poi/java/awt/Color;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent$AccessibleAWTMenuComponent;->this$0:Lorg/apache/poi/java/awt/MenuComponent;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/MenuComponent;->getParent()Lorg/apache/poi/java/awt/MenuContainer;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/java/awt/Component;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lorg/apache/poi/java/awt/Point;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocationOnScreen()Lorg/apache/poi/java/awt/Point;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()Lorg/apache/poi/java/awt/Dimension;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAccessibleChildSelected(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isFocusTraversable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isShowing()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isVisible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public removeAccessibleSelection(I)V
    .locals 0

    return-void
.end method

.method public removeFocusListener(Lorg/apache/poi/java/awt/event/FocusListener;)V
    .locals 0

    return-void
.end method

.method public requestFocus()V
    .locals 0

    return-void
.end method

.method public selectAllAccessibleSelection()V
    .locals 0

    return-void
.end method

.method public setBackground(Lorg/apache/poi/java/awt/Color;)V
    .locals 0

    return-void
.end method

.method public setBounds(Lorg/apache/poi/java/awt/Rectangle;)V
    .locals 0

    return-void
.end method

.method public setCursor(Lorg/apache/poi/java/awt/Cursor;)V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setFont(Lorg/apache/poi/java/awt/Font;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuComponent$AccessibleAWTMenuComponent;->this$0:Lorg/apache/poi/java/awt/MenuComponent;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/MenuComponent;->setFont(Lorg/apache/poi/java/awt/Font;)V

    return-void
.end method

.method public setForeground(Lorg/apache/poi/java/awt/Color;)V
    .locals 0

    return-void
.end method

.method public setLocation(Lorg/apache/poi/java/awt/Point;)V
    .locals 0

    return-void
.end method

.method public setSize(Lorg/apache/poi/java/awt/Dimension;)V
    .locals 0

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    return-void
.end method
