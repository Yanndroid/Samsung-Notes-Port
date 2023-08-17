.class public Lorg/apache/poi/java/awt/Label$AccessibleAWTLabel;
.super Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Label;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibleAWTLabel"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3187851636420cb6L


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/Label;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Label;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Label$AccessibleAWTLabel;->this$0:Lorg/apache/poi/java/awt/Label;

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;-><init>(Lorg/apache/poi/java/awt/Component;)V

    return-void
.end method


# virtual methods
.method public getAccessibleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Label$AccessibleAWTLabel;->accessibleName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/java/awt/Label$AccessibleAWTLabel;->accessibleName:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/Label$AccessibleAWTLabel;->this$0:Lorg/apache/poi/java/awt/Label;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Label;->getText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->getAccessibleName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/java/awt/Label$AccessibleAWTLabel;->this$0:Lorg/apache/poi/java/awt/Label;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Label;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibleRole()Ljavax/accessibility/AccessibleRole;
    .locals 1

    sget-object v0, Ljavax/accessibility/AccessibleRole;->LABEL:Ljavax/accessibility/AccessibleRole;

    return-object v0
.end method
