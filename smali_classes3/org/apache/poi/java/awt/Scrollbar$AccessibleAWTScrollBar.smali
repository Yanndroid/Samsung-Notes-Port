.class public Lorg/apache/poi/java/awt/Scrollbar$AccessibleAWTScrollBar;
.super Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;
.source "SourceFile"

# interfaces
.implements Ljavax/accessibility/AccessibleValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Scrollbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibleAWTScrollBar"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4c754ebdd48868fL


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/Scrollbar;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Scrollbar;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Scrollbar$AccessibleAWTScrollBar;->this$0:Lorg/apache/poi/java/awt/Scrollbar;

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;-><init>(Lorg/apache/poi/java/awt/Component;)V

    return-void
.end method


# virtual methods
.method public getAccessibleRole()Ljavax/accessibility/AccessibleRole;
    .locals 1

    sget-object v0, Ljavax/accessibility/AccessibleRole;->SCROLL_BAR:Ljavax/accessibility/AccessibleRole;

    return-object v0
.end method

.method public getAccessibleStateSet()Ljavax/accessibility/AccessibleStateSet;
    .locals 3

    invoke-super {p0}, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->getAccessibleStateSet()Ljavax/accessibility/AccessibleStateSet;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Scrollbar$AccessibleAWTScrollBar;->this$0:Lorg/apache/poi/java/awt/Scrollbar;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Scrollbar;->getValueIsAdjusting()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljavax/accessibility/AccessibleState;->BUSY:Ljavax/accessibility/AccessibleState;

    invoke-virtual {v0, v1}, Ljavax/accessibility/AccessibleStateSet;->add(Ljavax/accessibility/AccessibleState;)Z

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Scrollbar$AccessibleAWTScrollBar;->this$0:Lorg/apache/poi/java/awt/Scrollbar;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Scrollbar;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Ljavax/accessibility/AccessibleState;->VERTICAL:Ljavax/accessibility/AccessibleState;

    goto :goto_0

    :cond_1
    sget-object v1, Ljavax/accessibility/AccessibleState;->HORIZONTAL:Ljavax/accessibility/AccessibleState;

    :goto_0
    invoke-virtual {v0, v1}, Ljavax/accessibility/AccessibleStateSet;->add(Ljavax/accessibility/AccessibleState;)Z

    return-object v0
.end method

.method public getAccessibleValue()Ljavax/accessibility/AccessibleValue;
    .locals 0

    return-object p0
.end method

.method public getCurrentAccessibleValue()Ljava/lang/Number;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Scrollbar$AccessibleAWTScrollBar;->this$0:Lorg/apache/poi/java/awt/Scrollbar;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Scrollbar;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumAccessibleValue()Ljava/lang/Number;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Scrollbar$AccessibleAWTScrollBar;->this$0:Lorg/apache/poi/java/awt/Scrollbar;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Scrollbar;->getMaximum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getMinimumAccessibleValue()Ljava/lang/Number;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Scrollbar$AccessibleAWTScrollBar;->this$0:Lorg/apache/poi/java/awt/Scrollbar;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Scrollbar;->getMinimum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentAccessibleValue(Ljava/lang/Number;)Z
    .locals 1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Scrollbar$AccessibleAWTScrollBar;->this$0:Lorg/apache/poi/java/awt/Scrollbar;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Scrollbar;->setValue(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
