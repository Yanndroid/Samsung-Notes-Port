.class public Lorg/apache/poi/java/awt/Button$AccessibleAWTButton;
.super Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;
.source "SourceFile"

# interfaces
.implements Ljavax/accessibility/AccessibleAction;
.implements Ljavax/accessibility/AccessibleValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibleAWTButton"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x52536c17019a5fceL


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/Button;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Button;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Button$AccessibleAWTButton;->this$0:Lorg/apache/poi/java/awt/Button;

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;-><init>(Lorg/apache/poi/java/awt/Component;)V

    return-void
.end method


# virtual methods
.method public doAccessibleAction(I)Z
    .locals 4

    if-nez p1, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/java/awt/event/ActionEvent;

    iget-object v1, p0, Lorg/apache/poi/java/awt/Button$AccessibleAWTButton;->this$0:Lorg/apache/poi/java/awt/Button;

    const/16 v2, 0x3e9

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Button;->getActionCommand()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/java/awt/event/ActionEvent;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/apache/poi/java/awt/EventQueue;->postEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAccessibleAction()Ljavax/accessibility/AccessibleAction;
    .locals 0

    return-object p0
.end method

.method public getAccessibleActionCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAccessibleActionDescription(I)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "click"

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAccessibleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Button$AccessibleAWTButton;->accessibleName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Button$AccessibleAWTButton;->accessibleName:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Button$AccessibleAWTButton;->this$0:Lorg/apache/poi/java/awt/Button;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Button;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->getAccessibleName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/java/awt/Button$AccessibleAWTButton;->this$0:Lorg/apache/poi/java/awt/Button;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Button;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibleRole()Ljavax/accessibility/AccessibleRole;
    .locals 1

    sget-object v0, Ljavax/accessibility/AccessibleRole;->PUSH_BUTTON:Ljavax/accessibility/AccessibleRole;

    return-object v0
.end method

.method public getAccessibleValue()Ljavax/accessibility/AccessibleValue;
    .locals 0

    return-object p0
.end method

.method public getCurrentAccessibleValue()Ljava/lang/Number;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumAccessibleValue()Ljava/lang/Number;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getMinimumAccessibleValue()Ljava/lang/Number;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentAccessibleValue(Ljava/lang/Number;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
