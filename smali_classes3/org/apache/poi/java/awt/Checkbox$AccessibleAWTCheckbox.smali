.class public Lorg/apache/poi/java/awt/Checkbox$AccessibleAWTCheckbox;
.super Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/event/ItemListener;
.implements Ljavax/accessibility/AccessibleAction;
.implements Ljavax/accessibility/AccessibleValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Checkbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibleAWTCheckbox"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6d60fe8ddcb04fbbL


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/Checkbox;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Checkbox;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Checkbox$AccessibleAWTCheckbox;->this$0:Lorg/apache/poi/java/awt/Checkbox;

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;-><init>(Lorg/apache/poi/java/awt/Component;)V

    invoke-virtual {p1, p0}, Lorg/apache/poi/java/awt/Checkbox;->addItemListener(Lorg/apache/poi/java/awt/event/ItemListener;)V

    return-void
.end method


# virtual methods
.method public doAccessibleAction(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getAccessibleAction()Ljavax/accessibility/AccessibleAction;
    .locals 0

    return-object p0
.end method

.method public getAccessibleActionCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccessibleActionDescription(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAccessibleRole()Ljavax/accessibility/AccessibleRole;
    .locals 1

    sget-object v0, Ljavax/accessibility/AccessibleRole;->CHECK_BOX:Ljavax/accessibility/AccessibleRole;

    return-object v0
.end method

.method public getAccessibleStateSet()Ljavax/accessibility/AccessibleStateSet;
    .locals 2

    invoke-super {p0}, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->getAccessibleStateSet()Ljavax/accessibility/AccessibleStateSet;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Checkbox$AccessibleAWTCheckbox;->this$0:Lorg/apache/poi/java/awt/Checkbox;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Checkbox;->getState()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljavax/accessibility/AccessibleState;->CHECKED:Ljavax/accessibility/AccessibleState;

    invoke-virtual {v0, v1}, Ljavax/accessibility/AccessibleStateSet;->add(Ljavax/accessibility/AccessibleState;)Z

    :cond_0
    return-object v0
.end method

.method public getAccessibleValue()Ljavax/accessibility/AccessibleValue;
    .locals 0

    return-object p0
.end method

.method public getCurrentAccessibleValue()Ljava/lang/Number;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaximumAccessibleValue()Ljava/lang/Number;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMinimumAccessibleValue()Ljava/lang/Number;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public itemStateChanged(Lorg/apache/poi/java/awt/event/ItemEvent;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/event/ItemEvent;->getSource()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/java/awt/Checkbox;

    iget-object v0, p0, Lorg/apache/poi/java/awt/Checkbox$AccessibleAWTCheckbox;->this$0:Lorg/apache/poi/java/awt/Checkbox;

    iget-object v0, v0, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Checkbox;->getState()Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "AccessibleState"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/java/awt/Checkbox$AccessibleAWTCheckbox;->this$0:Lorg/apache/poi/java/awt/Checkbox;

    iget-object p1, p1, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    sget-object v2, Ljavax/accessibility/AccessibleState;->CHECKED:Ljavax/accessibility/AccessibleState;

    invoke-virtual {p1, v1, v0, v2}, Ljavax/accessibility/AccessibleContext;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/java/awt/Checkbox$AccessibleAWTCheckbox;->this$0:Lorg/apache/poi/java/awt/Checkbox;

    iget-object p1, p1, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    sget-object v2, Ljavax/accessibility/AccessibleState;->CHECKED:Ljavax/accessibility/AccessibleState;

    invoke-virtual {p1, v1, v2, v0}, Ljavax/accessibility/AccessibleContext;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCurrentAccessibleValue(Ljava/lang/Number;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
