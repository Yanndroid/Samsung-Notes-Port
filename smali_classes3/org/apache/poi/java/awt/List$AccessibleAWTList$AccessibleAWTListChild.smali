.class public Lorg/apache/poi/java/awt/List$AccessibleAWTList$AccessibleAWTListChild;
.super Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;
.source "SourceFile"

# interfaces
.implements Ljavax/accessibility/Accessible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/List$AccessibleAWTList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibleAWTListChild"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3d3aa779aecbe01dL


# instance fields
.field private indexInParent:I

.field private parent:Lorg/apache/poi/java/awt/List;

.field public final synthetic this$1:Lorg/apache/poi/java/awt/List$AccessibleAWTList;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/List$AccessibleAWTList;Lorg/apache/poi/java/awt/List;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList$AccessibleAWTListChild;->this$1:Lorg/apache/poi/java/awt/List$AccessibleAWTList;

    iget-object p1, p1, Lorg/apache/poi/java/awt/List$AccessibleAWTList;->this$0:Lorg/apache/poi/java/awt/List;

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;-><init>(Lorg/apache/poi/java/awt/Component;)V

    iput-object p2, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList$AccessibleAWTListChild;->parent:Lorg/apache/poi/java/awt/List;

    invoke-virtual {p0, p2}, Lorg/apache/poi/java/awt/List$AccessibleAWTList$AccessibleAWTListChild;->setAccessibleParent(Ljavax/accessibility/Accessible;)V

    iput p3, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList$AccessibleAWTListChild;->indexInParent:I

    return-void
.end method


# virtual methods
.method public addFocusListener(Lorg/apache/poi/java/awt/event/FocusListener;)V
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

.method public getAccessibleContext()Ljavax/accessibility/AccessibleContext;
    .locals 0

    return-object p0
.end method

.method public getAccessibleIndexInParent()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList$AccessibleAWTListChild;->indexInParent:I

    return v0
.end method

.method public getAccessibleRole()Ljavax/accessibility/AccessibleRole;
    .locals 1

    sget-object v0, Ljavax/accessibility/AccessibleRole;->LIST_ITEM:Ljavax/accessibility/AccessibleRole;

    return-object v0
.end method

.method public getAccessibleStateSet()Ljavax/accessibility/AccessibleStateSet;
    .locals 3

    invoke-super {p0}, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->getAccessibleStateSet()Ljavax/accessibility/AccessibleStateSet;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList$AccessibleAWTListChild;->parent:Lorg/apache/poi/java/awt/List;

    iget v2, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList$AccessibleAWTListChild;->indexInParent:I

    invoke-virtual {v1, v2}, Lorg/apache/poi/java/awt/List;->isIndexSelected(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljavax/accessibility/AccessibleState;->SELECTED:Ljavax/accessibility/AccessibleState;

    invoke-virtual {v0, v1}, Ljavax/accessibility/AccessibleStateSet;->add(Ljavax/accessibility/AccessibleState;)Z

    :cond_0
    return-object v0
.end method

.method public getBackground()Lorg/apache/poi/java/awt/Color;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList$AccessibleAWTListChild;->parent:Lorg/apache/poi/java/awt/List;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getBackground()Lorg/apache/poi/java/awt/Color;

    move-result-object v0

    return-object v0
.end method

.method public getBounds()Lorg/apache/poi/java/awt/Rectangle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCursor()Lorg/apache/poi/java/awt/Cursor;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList$AccessibleAWTListChild;->parent:Lorg/apache/poi/java/awt/List;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getCursor()Lorg/apache/poi/java/awt/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getFont()Lorg/apache/poi/java/awt/Font;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList$AccessibleAWTListChild;->parent:Lorg/apache/poi/java/awt/List;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getFont()Lorg/apache/poi/java/awt/Font;

    move-result-object v0

    return-object v0
.end method

.method public getFontMetrics(Lorg/apache/poi/java/awt/Font;)Lorg/apache/poi/java/awt/FontMetrics;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList$AccessibleAWTListChild;->parent:Lorg/apache/poi/java/awt/List;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Component;->getFontMetrics(Lorg/apache/poi/java/awt/Font;)Lorg/apache/poi/java/awt/FontMetrics;

    move-result-object p1

    return-object p1
.end method

.method public getForeground()Lorg/apache/poi/java/awt/Color;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList$AccessibleAWTListChild;->parent:Lorg/apache/poi/java/awt/List;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getForeground()Lorg/apache/poi/java/awt/Color;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList$AccessibleAWTListChild;->parent:Lorg/apache/poi/java/awt/List;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->getLocale()Ljava/util/Locale;

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

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList$AccessibleAWTListChild;->parent:Lorg/apache/poi/java/awt/List;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Component;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isFocusTraversable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeFocusListener(Lorg/apache/poi/java/awt/event/FocusListener;)V
    .locals 0

    return-void
.end method

.method public requestFocus()V
    .locals 0

    return-void
.end method

.method public setBackground(Lorg/apache/poi/java/awt/Color;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList$AccessibleAWTListChild;->parent:Lorg/apache/poi/java/awt/List;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Component;->setBackground(Lorg/apache/poi/java/awt/Color;)V

    return-void
.end method

.method public setBounds(Lorg/apache/poi/java/awt/Rectangle;)V
    .locals 0

    return-void
.end method

.method public setCursor(Lorg/apache/poi/java/awt/Cursor;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList$AccessibleAWTListChild;->parent:Lorg/apache/poi/java/awt/List;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Component;->setCursor(Lorg/apache/poi/java/awt/Cursor;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList$AccessibleAWTListChild;->parent:Lorg/apache/poi/java/awt/List;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Component;->setEnabled(Z)V

    return-void
.end method

.method public setFont(Lorg/apache/poi/java/awt/Font;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList$AccessibleAWTListChild;->parent:Lorg/apache/poi/java/awt/List;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Component;->setFont(Lorg/apache/poi/java/awt/Font;)V

    return-void
.end method

.method public setForeground(Lorg/apache/poi/java/awt/Color;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList$AccessibleAWTListChild;->parent:Lorg/apache/poi/java/awt/List;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Component;->setForeground(Lorg/apache/poi/java/awt/Color;)V

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
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/List$AccessibleAWTList$AccessibleAWTListChild;->parent:Lorg/apache/poi/java/awt/List;

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Component;->setVisible(Z)V

    return-void
.end method
