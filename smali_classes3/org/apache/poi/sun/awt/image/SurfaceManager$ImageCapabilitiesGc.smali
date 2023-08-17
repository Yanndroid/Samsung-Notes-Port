.class Lorg/apache/poi/sun/awt/image/SurfaceManager$ImageCapabilitiesGc;
.super Lorg/apache/poi/java/awt/ImageCapabilities;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sun/awt/image/SurfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageCapabilitiesGc"
.end annotation


# instance fields
.field public gc:Lorg/apache/poi/java/awt/GraphicsConfiguration;

.field public final synthetic this$0:Lorg/apache/poi/sun/awt/image/SurfaceManager;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sun/awt/image/SurfaceManager;Lorg/apache/poi/java/awt/GraphicsConfiguration;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sun/awt/image/SurfaceManager$ImageCapabilitiesGc;->this$0:Lorg/apache/poi/sun/awt/image/SurfaceManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/ImageCapabilities;-><init>(Z)V

    iput-object p2, p0, Lorg/apache/poi/sun/awt/image/SurfaceManager$ImageCapabilitiesGc;->gc:Lorg/apache/poi/java/awt/GraphicsConfiguration;

    return-void
.end method


# virtual methods
.method public isAccelerated()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/sun/awt/image/SurfaceManager$ImageCapabilitiesGc;->gc:Lorg/apache/poi/java/awt/GraphicsConfiguration;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Lorg/apache/poi/java/awt/GraphicsEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->getDefaultScreenDevice()Lorg/apache/poi/java/awt/GraphicsDevice;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/GraphicsDevice;->getDefaultConfiguration()Lorg/apache/poi/java/awt/GraphicsConfiguration;

    move-result-object v0

    :cond_0
    instance-of v1, v0, Lorg/apache/poi/sun/awt/image/SurfaceManager$ProxiedGraphicsConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/poi/sun/awt/image/SurfaceManager$ProxiedGraphicsConfig;

    invoke-interface {v0}, Lorg/apache/poi/sun/awt/image/SurfaceManager$ProxiedGraphicsConfig;->getProxyKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/poi/sun/awt/image/SurfaceManager$ImageCapabilitiesGc;->this$0:Lorg/apache/poi/sun/awt/image/SurfaceManager;

    invoke-virtual {v1, v0}, Lorg/apache/poi/sun/awt/image/SurfaceManager;->getCacheData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sun/java2d/SurfaceDataProxy;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/sun/java2d/SurfaceDataProxy;->isAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method
