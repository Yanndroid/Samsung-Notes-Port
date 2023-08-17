.class public Lorg/apache/poi/java/awt/MenuItem$AccessibleAWTMenuItem;
.super Lorg/apache/poi/java/awt/MenuComponent$AccessibleAWTMenuComponent;
.source "SourceFile"

# interfaces
.implements Ljavax/accessibility/AccessibleAction;
.implements Ljavax/accessibility/AccessibleValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibleAWTMenuItem"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x305f372ee3a7101L


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/MenuItem;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/MenuItem;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/MenuItem$AccessibleAWTMenuItem;->this$0:Lorg/apache/poi/java/awt/MenuItem;

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/MenuComponent$AccessibleAWTMenuComponent;-><init>(Lorg/apache/poi/java/awt/MenuComponent;)V

    return-void
.end method


# virtual methods
.method public doAccessibleAction(I)Z
    .locals 8

    if-nez p1, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getEventQueue()Lorg/apache/poi/java/awt/EventQueue;

    move-result-object p1

    new-instance v7, Lorg/apache/poi/java/awt/event/ActionEvent;

    iget-object v1, p0, Lorg/apache/poi/java/awt/MenuItem$AccessibleAWTMenuItem;->this$0:Lorg/apache/poi/java/awt/MenuItem;

    const/16 v2, 0x3e9

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/MenuItem;->getActionCommand()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/apache/poi/java/awt/EventQueue;->getMostRecentEventTime()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/java/awt/event/ActionEvent;-><init>(Ljava/lang/Object;ILjava/lang/String;JI)V

    invoke-virtual {p1, v7}, Lorg/apache/poi/java/awt/EventQueue;->postEvent(Lorg/apache/poi/java/awt/AWTEvent;)V

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

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuItem$AccessibleAWTMenuItem;->accessibleName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuItem$AccessibleAWTMenuItem;->accessibleName:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuItem$AccessibleAWTMenuItem;->this$0:Lorg/apache/poi/java/awt/MenuItem;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/MenuItem;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lorg/apache/poi/java/awt/MenuComponent$AccessibleAWTMenuComponent;->getAccessibleName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/java/awt/MenuItem$AccessibleAWTMenuItem;->this$0:Lorg/apache/poi/java/awt/MenuItem;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/MenuItem;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibleRole()Ljavax/accessibility/AccessibleRole;
    .locals 1

    sget-object v0, Ljavax/accessibility/AccessibleRole;->MENU_ITEM:Ljavax/accessibility/AccessibleRole;

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
