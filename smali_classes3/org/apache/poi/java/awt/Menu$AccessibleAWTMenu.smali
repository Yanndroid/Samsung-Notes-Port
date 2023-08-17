.class public Lorg/apache/poi/java/awt/Menu$AccessibleAWTMenu;
.super Lorg/apache/poi/java/awt/MenuItem$AccessibleAWTMenuItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Menu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibleAWTMenu"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x488e28a24de016e6L


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/Menu;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Menu;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Menu$AccessibleAWTMenu;->this$0:Lorg/apache/poi/java/awt/Menu;

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/MenuItem$AccessibleAWTMenuItem;-><init>(Lorg/apache/poi/java/awt/MenuItem;)V

    return-void
.end method


# virtual methods
.method public getAccessibleRole()Ljavax/accessibility/AccessibleRole;
    .locals 1

    sget-object v0, Ljavax/accessibility/AccessibleRole;->MENU:Ljavax/accessibility/AccessibleRole;

    return-object v0
.end method
