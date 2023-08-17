.class public Lorg/apache/poi/java/awt/MenuBar$AccessibleAWTMenuBar;
.super Lorg/apache/poi/java/awt/MenuComponent$AccessibleAWTMenuComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/MenuBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibleAWTMenuBar"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7709c5d6d753c0e7L


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/MenuBar;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/MenuBar;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/MenuBar$AccessibleAWTMenuBar;->this$0:Lorg/apache/poi/java/awt/MenuBar;

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/MenuComponent$AccessibleAWTMenuComponent;-><init>(Lorg/apache/poi/java/awt/MenuComponent;)V

    return-void
.end method


# virtual methods
.method public getAccessibleRole()Ljavax/accessibility/AccessibleRole;
    .locals 1

    sget-object v0, Ljavax/accessibility/AccessibleRole;->MENU_BAR:Ljavax/accessibility/AccessibleRole;

    return-object v0
.end method
