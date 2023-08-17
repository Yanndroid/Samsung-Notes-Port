.class public Lorg/apache/poi/java/awt/CheckboxMenuItem$AccessibleAWTCheckboxMenuItem;
.super Lorg/apache/poi/java/awt/MenuItem$AccessibleAWTMenuItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/CheckboxMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibleAWTCheckboxMenuItem"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3fd09af18ce74L


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/CheckboxMenuItem;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/CheckboxMenuItem;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/CheckboxMenuItem$AccessibleAWTCheckboxMenuItem;->this$0:Lorg/apache/poi/java/awt/CheckboxMenuItem;

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/MenuItem$AccessibleAWTMenuItem;-><init>(Lorg/apache/poi/java/awt/MenuItem;)V

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

.method public setCurrentAccessibleValue(Ljava/lang/Number;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
