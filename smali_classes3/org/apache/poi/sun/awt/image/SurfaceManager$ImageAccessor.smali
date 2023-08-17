.class public abstract Lorg/apache/poi/sun/awt/image/SurfaceManager$ImageAccessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sun/awt/image/SurfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ImageAccessor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getSurfaceManager(Lorg/apache/poi/java/awt/Image;)Lorg/apache/poi/sun/awt/image/SurfaceManager;
.end method

.method public abstract setSurfaceManager(Lorg/apache/poi/java/awt/Image;Lorg/apache/poi/sun/awt/image/SurfaceManager;)V
.end method
