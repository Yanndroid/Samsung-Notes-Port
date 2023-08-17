.class public Lorg/apache/poi/java/awt/Choice$AccessibleAWTChoice;
.super Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;
.source "SourceFile"

# interfaces
.implements Ljavax/accessibility/AccessibleAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Choice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibleAWTChoice"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6394dd70b3abf48aL


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/Choice;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Choice;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Choice$AccessibleAWTChoice;->this$0:Lorg/apache/poi/java/awt/Choice;

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;-><init>(Lorg/apache/poi/java/awt/Component;)V

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

    sget-object v0, Ljavax/accessibility/AccessibleRole;->COMBO_BOX:Ljavax/accessibility/AccessibleRole;

    return-object v0
.end method
