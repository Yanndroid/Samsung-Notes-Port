.class public abstract Lorg/apache/poi/java/awt/Image;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SCALE_AREA_AVERAGING:I = 0x10

.field public static final SCALE_DEFAULT:I = 0x1

.field public static final SCALE_FAST:I = 0x2

.field public static final SCALE_REPLICATE:I = 0x8

.field public static final SCALE_SMOOTH:I = 0x4

.field public static final UndefinedProperty:Ljava/lang/Object;

.field private static defaultImageCaps:Lorg/apache/poi/java/awt/ImageCapabilities;


# instance fields
.field public accelerationPriority:F

.field public surfaceManager:Lorg/apache/poi/sun/awt/image/SurfaceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/poi/java/awt/ImageCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/ImageCapabilities;-><init>(Z)V

    sput-object v0, Lorg/apache/poi/java/awt/Image;->defaultImageCaps:Lorg/apache/poi/java/awt/ImageCapabilities;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/poi/java/awt/Image;->UndefinedProperty:Ljava/lang/Object;

    new-instance v0, Lorg/apache/poi/java/awt/Image$1;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/Image$1;-><init>()V

    invoke-static {v0}, Lorg/apache/poi/sun/awt/image/SurfaceManager;->setImageAccessor(Lorg/apache/poi/sun/awt/image/SurfaceManager$ImageAccessor;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lorg/apache/poi/java/awt/Image;->accelerationPriority:F

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Image;->surfaceManager:Lorg/apache/poi/sun/awt/image/SurfaceManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/sun/awt/image/SurfaceManager;->flush()V

    :cond_0
    return-void
.end method

.method public getAccelerationPriority()F
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/Image;->accelerationPriority:F

    return v0
.end method

.method public getCapabilities(Lorg/apache/poi/java/awt/GraphicsConfiguration;)Lorg/apache/poi/java/awt/ImageCapabilities;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/Image;->surfaceManager:Lorg/apache/poi/sun/awt/image/SurfaceManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/poi/sun/awt/image/SurfaceManager;->getCapabilities(Lorg/apache/poi/java/awt/GraphicsConfiguration;)Lorg/apache/poi/java/awt/ImageCapabilities;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lorg/apache/poi/java/awt/Image;->defaultImageCaps:Lorg/apache/poi/java/awt/ImageCapabilities;

    return-object p1
.end method

.method public abstract getGraphics()Lorg/apache/poi/java/awt/Graphics;
.end method

.method public abstract getHeight(Lorg/apache/poi/java/awt/image/ImageObserver;)I
.end method

.method public abstract getProperty(Ljava/lang/String;Lorg/apache/poi/java/awt/image/ImageObserver;)Ljava/lang/Object;
.end method

.method public getScaledInstance(III)Lorg/apache/poi/java/awt/Image;
    .locals 0

    and-int/lit8 p3, p3, 0x14

    if-eqz p3, :cond_0

    new-instance p3, Lorg/apache/poi/java/awt/image/AreaAveragingScaleFilter;

    invoke-direct {p3, p1, p2}, Lorg/apache/poi/java/awt/image/AreaAveragingScaleFilter;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance p3, Lorg/apache/poi/java/awt/image/ReplicateScaleFilter;

    invoke-direct {p3, p1, p2}, Lorg/apache/poi/java/awt/image/ReplicateScaleFilter;-><init>(II)V

    :goto_0
    new-instance p1, Lorg/apache/poi/java/awt/image/FilteredImageSource;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Image;->getSource()Lorg/apache/poi/java/awt/image/ImageProducer;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Lorg/apache/poi/java/awt/image/FilteredImageSource;-><init>(Lorg/apache/poi/java/awt/image/ImageProducer;Lorg/apache/poi/java/awt/image/ImageFilter;)V

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/poi/java/awt/Toolkit;->createImage(Lorg/apache/poi/java/awt/image/ImageProducer;)Lorg/apache/poi/java/awt/Image;

    move-result-object p1

    return-object p1
.end method

.method public abstract getSource()Lorg/apache/poi/java/awt/image/ImageProducer;
.end method

.method public abstract getWidth(Lorg/apache/poi/java/awt/image/ImageObserver;)I
.end method

.method public setAccelerationPriority(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    iput p1, p0, Lorg/apache/poi/java/awt/Image;->accelerationPriority:F

    iget-object v0, p0, Lorg/apache/poi/java/awt/Image;->surfaceManager:Lorg/apache/poi/sun/awt/image/SurfaceManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/apache/poi/sun/awt/image/SurfaceManager;->setAccelerationPriority(F)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Priority must be a value between 0 and 1, inclusive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
