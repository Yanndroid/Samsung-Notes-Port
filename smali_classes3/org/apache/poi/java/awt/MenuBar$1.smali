.class final Lorg/apache/poi/java/awt/MenuBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sun/awt/AWTAccessor$MenuBarAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/MenuBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpMenu(Lorg/apache/poi/java/awt/MenuBar;)Lorg/apache/poi/java/awt/Menu;
    .locals 0

    iget-object p1, p1, Lorg/apache/poi/java/awt/MenuBar;->helpMenu:Lorg/apache/poi/java/awt/Menu;

    return-object p1
.end method

.method public getMenus(Lorg/apache/poi/java/awt/MenuBar;)Ljava/util/Vector;
    .locals 0

    iget-object p1, p1, Lorg/apache/poi/java/awt/MenuBar;->menus:Ljava/util/Vector;

    return-object p1
.end method
