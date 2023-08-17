.class public Lorg/apache/poi/java/awt/Window$AccessibleAWTWindow;
.super Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibleAWTWindow"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3a7eee9758ae9524L


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/Window;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Window;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Window$AccessibleAWTWindow;->this$0:Lorg/apache/poi/java/awt/Window;

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer;-><init>(Lorg/apache/poi/java/awt/Container;)V

    return-void
.end method


# virtual methods
.method public getAccessibleRole()Ljavax/accessibility/AccessibleRole;
    .locals 1

    sget-object v0, Ljavax/accessibility/AccessibleRole;->WINDOW:Ljavax/accessibility/AccessibleRole;

    return-object v0
.end method

.method public getAccessibleStateSet()Ljavax/accessibility/AccessibleStateSet;
    .locals 2

    invoke-super {p0}, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->getAccessibleStateSet()Ljavax/accessibility/AccessibleStateSet;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/Window$AccessibleAWTWindow;->this$0:Lorg/apache/poi/java/awt/Window;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Window;->getFocusOwner()Lorg/apache/poi/java/awt/Component;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Ljavax/accessibility/AccessibleState;->ACTIVE:Ljavax/accessibility/AccessibleState;

    invoke-virtual {v0, v1}, Ljavax/accessibility/AccessibleStateSet;->add(Ljavax/accessibility/AccessibleState;)Z

    :cond_0
    return-object v0
.end method
