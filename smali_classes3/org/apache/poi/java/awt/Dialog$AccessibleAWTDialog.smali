.class public Lorg/apache/poi/java/awt/Dialog$AccessibleAWTDialog;
.super Lorg/apache/poi/java/awt/Window$AccessibleAWTWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibleAWTDialog"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x43214b5ba9b4fcd1L


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/Dialog;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Dialog;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Dialog$AccessibleAWTDialog;->this$0:Lorg/apache/poi/java/awt/Dialog;

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Window$AccessibleAWTWindow;-><init>(Lorg/apache/poi/java/awt/Window;)V

    return-void
.end method


# virtual methods
.method public getAccessibleRole()Ljavax/accessibility/AccessibleRole;
    .locals 1

    sget-object v0, Ljavax/accessibility/AccessibleRole;->DIALOG:Ljavax/accessibility/AccessibleRole;

    return-object v0
.end method

.method public getAccessibleStateSet()Ljavax/accessibility/AccessibleStateSet;
    .locals 2

    invoke-super {p0}, Lorg/apache/poi/java/awt/Window$AccessibleAWTWindow;->getAccessibleStateSet()Ljavax/accessibility/AccessibleStateSet;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Dialog$AccessibleAWTDialog;->this$0:Lorg/apache/poi/java/awt/Dialog;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Window;->getFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Ljavax/accessibility/AccessibleState;->ACTIVE:Ljavax/accessibility/AccessibleState;

    invoke-virtual {v0, v1}, Ljavax/accessibility/AccessibleStateSet;->add(Ljavax/accessibility/AccessibleState;)Z

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/java/awt/Dialog$AccessibleAWTDialog;->this$0:Lorg/apache/poi/java/awt/Dialog;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Dialog;->isModal()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljavax/accessibility/AccessibleState;->MODAL:Ljavax/accessibility/AccessibleState;

    invoke-virtual {v0, v1}, Ljavax/accessibility/AccessibleStateSet;->add(Ljavax/accessibility/AccessibleState;)Z

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/java/awt/Dialog$AccessibleAWTDialog;->this$0:Lorg/apache/poi/java/awt/Dialog;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Dialog;->isResizable()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ljavax/accessibility/AccessibleState;->RESIZABLE:Ljavax/accessibility/AccessibleState;

    invoke-virtual {v0, v1}, Ljavax/accessibility/AccessibleStateSet;->add(Ljavax/accessibility/AccessibleState;)Z

    :cond_2
    return-object v0
.end method
