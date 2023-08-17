.class final Lorg/apache/poi/java/awt/MenuItem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sun/awt/AWTAccessor$MenuItemAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/MenuItem;
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
.method public getActionCommandImpl(Lorg/apache/poi/java/awt/MenuItem;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/MenuItem;->getActionCommandImpl()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLabel(Lorg/apache/poi/java/awt/MenuItem;)Ljava/lang/String;
    .locals 0

    iget-object p1, p1, Lorg/apache/poi/java/awt/MenuItem;->label:Ljava/lang/String;

    return-object p1
.end method

.method public getShortcut(Lorg/apache/poi/java/awt/MenuItem;)Lorg/apache/poi/java/awt/MenuShortcut;
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/java/awt/MenuItem;->access$000(Lorg/apache/poi/java/awt/MenuItem;)Lorg/apache/poi/java/awt/MenuShortcut;

    move-result-object p1

    return-object p1
.end method

.method public isEnabled(Lorg/apache/poi/java/awt/MenuItem;)Z
    .locals 0

    iget-boolean p1, p1, Lorg/apache/poi/java/awt/MenuItem;->enabled:Z

    return p1
.end method

.method public isItemEnabled(Lorg/apache/poi/java/awt/MenuItem;)Z
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/java/awt/MenuItem;->access$100(Lorg/apache/poi/java/awt/MenuItem;)Z

    move-result p1

    return p1
.end method
