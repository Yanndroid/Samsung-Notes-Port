.class final Lorg/apache/poi/java/awt/Image$1;
.super Lorg/apache/poi/sun/awt/image/SurfaceManager$ImageAccessor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/sun/awt/image/SurfaceManager$ImageAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method public getSurfaceManager(Lorg/apache/poi/java/awt/Image;)Lorg/apache/poi/sun/awt/image/SurfaceManager;
    .locals 0

    iget-object p1, p1, Lorg/apache/poi/java/awt/Image;->surfaceManager:Lorg/apache/poi/sun/awt/image/SurfaceManager;

    return-object p1
.end method

.method public setSurfaceManager(Lorg/apache/poi/java/awt/Image;Lorg/apache/poi/sun/awt/image/SurfaceManager;)V
    .locals 0

    iput-object p2, p1, Lorg/apache/poi/java/awt/Image;->surfaceManager:Lorg/apache/poi/sun/awt/image/SurfaceManager;

    return-void
.end method
