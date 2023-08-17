.class public Lorg/apache/poi/java/awt/PopupMenu$AccessibleAWTPopupMenu;
.super Lorg/apache/poi/java/awt/Menu$AccessibleAWTMenu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/PopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibleAWTPopupMenu"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3b6ce10dfebeca13L


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/PopupMenu;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/PopupMenu;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/PopupMenu$AccessibleAWTPopupMenu;->this$0:Lorg/apache/poi/java/awt/PopupMenu;

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Menu$AccessibleAWTMenu;-><init>(Lorg/apache/poi/java/awt/Menu;)V

    return-void
.end method


# virtual methods
.method public getAccessibleRole()Ljavax/accessibility/AccessibleRole;
    .locals 1

    sget-object v0, Ljavax/accessibility/AccessibleRole;->POPUP_MENU:Ljavax/accessibility/AccessibleRole;

    return-object v0
.end method
