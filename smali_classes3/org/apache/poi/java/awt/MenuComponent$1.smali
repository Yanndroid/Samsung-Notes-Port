.class final Lorg/apache/poi/java/awt/MenuComponent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sun/awt/AWTAccessor$MenuComponentAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/MenuComponent;
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
.method public getAppContext(Lorg/apache/poi/java/awt/MenuComponent;)Lorg/apache/poi/sun/awt/AppContext;
    .locals 0

    iget-object p1, p1, Lorg/apache/poi/java/awt/MenuComponent;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    return-object p1
.end method

.method public getFont_NoClientCode(Lorg/apache/poi/java/awt/MenuComponent;)Lorg/apache/poi/java/awt/Font;
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/MenuComponent;->getFont_NoClientCode()Lorg/apache/poi/java/awt/Font;

    move-result-object p1

    return-object p1
.end method

.method public getParent(Lorg/apache/poi/java/awt/MenuComponent;)Lorg/apache/poi/java/awt/MenuContainer;
    .locals 0

    iget-object p1, p1, Lorg/apache/poi/java/awt/MenuComponent;->parent:Lorg/apache/poi/java/awt/MenuContainer;

    return-object p1
.end method

.method public setAppContext(Lorg/apache/poi/java/awt/MenuComponent;Lorg/apache/poi/sun/awt/AppContext;)V
    .locals 0

    iput-object p2, p1, Lorg/apache/poi/java/awt/MenuComponent;->appContext:Lorg/apache/poi/sun/awt/AppContext;

    return-void
.end method
