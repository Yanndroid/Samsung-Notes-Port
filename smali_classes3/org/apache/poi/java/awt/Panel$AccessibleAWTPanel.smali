.class public Lorg/apache/poi/java/awt/Panel$AccessibleAWTPanel;
.super Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibleAWTPanel"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x58f34dca77629a4aL


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/Panel;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Panel;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Panel$AccessibleAWTPanel;->this$0:Lorg/apache/poi/java/awt/Panel;

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Container$AccessibleAWTContainer;-><init>(Lorg/apache/poi/java/awt/Container;)V

    return-void
.end method


# virtual methods
.method public getAccessibleRole()Ljavax/accessibility/AccessibleRole;
    .locals 1

    sget-object v0, Ljavax/accessibility/AccessibleRole;->PANEL:Ljavax/accessibility/AccessibleRole;

    return-object v0
.end method
