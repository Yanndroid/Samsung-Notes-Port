.class final Lorg/apache/poi/java/awt/Menu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sun/awt/AWTAccessor$MenuAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Menu;
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
.method public getItems(Lorg/apache/poi/java/awt/Menu;)Ljava/util/Vector;
    .locals 0

    iget-object p1, p1, Lorg/apache/poi/java/awt/Menu;->items:Ljava/util/Vector;

    return-object p1
.end method
