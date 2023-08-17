.class public Lorg/apache/poi/sun/awt/image/SunWritableRaster;
.super Lorg/apache/poi/java/awt/image/WritableRaster;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sun/awt/image/SunWritableRaster$DataStealer;
    }
.end annotation


# static fields
.field private static stealer:Lorg/apache/poi/sun/awt/image/SunWritableRaster$DataStealer;


# instance fields
.field private theTrackable:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/Point;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/java/awt/image/WritableRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/Point;)V

    iget-object p1, p0, Lorg/apache/poi/java/awt/image/Raster;->dataBuffer:Lorg/apache/poi/java/awt/image/DataBuffer;

    invoke-static {p1}, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->stealTrackable(Lorg/apache/poi/java/awt/image/DataBuffer;)Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->theTrackable:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/java/awt/image/WritableRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Point;)V

    invoke-static {p2}, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->stealTrackable(Lorg/apache/poi/java/awt/image/DataBuffer;)Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->theTrackable:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Point;Lorg/apache/poi/java/awt/image/WritableRaster;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/apache/poi/java/awt/image/WritableRaster;-><init>(Lorg/apache/poi/java/awt/image/SampleModel;Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Point;Lorg/apache/poi/java/awt/image/WritableRaster;)V

    invoke-static {p2}, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->stealTrackable(Lorg/apache/poi/java/awt/image/DataBuffer;)Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->theTrackable:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    return-void
.end method

.method public static makeTrackable(Lorg/apache/poi/java/awt/image/DataBuffer;)V
    .locals 2

    sget-object v0, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->stealer:Lorg/apache/poi/sun/awt/image/SunWritableRaster$DataStealer;

    sget-object v1, Lorg/apache/poi/sun/java2d/StateTrackable$State;->STABLE:Lorg/apache/poi/sun/java2d/StateTrackable$State;

    invoke-static {v1}, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->createInstance(Lorg/apache/poi/sun/java2d/StateTrackable$State;)Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lorg/apache/poi/sun/awt/image/SunWritableRaster$DataStealer;->setTrackable(Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/sun/java2d/StateTrackableDelegate;)V

    return-void
.end method

.method public static markDirty(Lorg/apache/poi/java/awt/Image;)V
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/sun/java2d/SurfaceData;->getPrimarySurfaceData(Lorg/apache/poi/java/awt/Image;)Lorg/apache/poi/sun/java2d/SurfaceData;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/sun/java2d/SurfaceData;->markDirty()V

    return-void
.end method

.method public static markDirty(Lorg/apache/poi/java/awt/image/DataBuffer;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->stealer:Lorg/apache/poi/sun/awt/image/SunWritableRaster$DataStealer;

    invoke-interface {v0, p0}, Lorg/apache/poi/sun/awt/image/SunWritableRaster$DataStealer;->getTrackable(Lorg/apache/poi/java/awt/image/DataBuffer;)Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->markDirty()V

    return-void
.end method

.method public static markDirty(Lorg/apache/poi/java/awt/image/WritableRaster;)V
    .locals 1

    instance-of v0, p0, Lorg/apache/poi/sun/awt/image/SunWritableRaster;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/sun/awt/image/SunWritableRaster;

    invoke-virtual {p0}, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->markDirty()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/java/awt/image/Raster;->getDataBuffer()Lorg/apache/poi/java/awt/image/DataBuffer;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->markDirty(Lorg/apache/poi/java/awt/image/DataBuffer;)V

    :goto_0
    return-void
.end method

.method public static setDataStealer(Lorg/apache/poi/sun/awt/image/SunWritableRaster$DataStealer;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->stealer:Lorg/apache/poi/sun/awt/image/SunWritableRaster$DataStealer;

    if-nez v0, :cond_0

    sput-object p0, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->stealer:Lorg/apache/poi/sun/awt/image/SunWritableRaster$DataStealer;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/InternalError;

    const-string v0, "Attempt to set DataStealer twice"

    invoke-direct {p0, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setTrackable(Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/sun/java2d/StateTrackableDelegate;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->stealer:Lorg/apache/poi/sun/awt/image/SunWritableRaster$DataStealer;

    invoke-interface {v0, p0, p1}, Lorg/apache/poi/sun/awt/image/SunWritableRaster$DataStealer;->setTrackable(Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/sun/java2d/StateTrackableDelegate;)V

    return-void
.end method

.method public static stealData(Lorg/apache/poi/java/awt/image/DataBufferByte;I)[B
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->stealer:Lorg/apache/poi/sun/awt/image/SunWritableRaster$DataStealer;

    invoke-interface {v0, p0, p1}, Lorg/apache/poi/sun/awt/image/SunWritableRaster$DataStealer;->getData(Lorg/apache/poi/java/awt/image/DataBufferByte;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static stealData(Lorg/apache/poi/java/awt/image/DataBufferInt;I)[I
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->stealer:Lorg/apache/poi/sun/awt/image/SunWritableRaster$DataStealer;

    invoke-interface {v0, p0, p1}, Lorg/apache/poi/sun/awt/image/SunWritableRaster$DataStealer;->getData(Lorg/apache/poi/java/awt/image/DataBufferInt;I)[I

    move-result-object p0

    return-object p0
.end method

.method public static stealData(Lorg/apache/poi/java/awt/image/DataBufferUShort;I)[S
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->stealer:Lorg/apache/poi/sun/awt/image/SunWritableRaster$DataStealer;

    invoke-interface {v0, p0, p1}, Lorg/apache/poi/sun/awt/image/SunWritableRaster$DataStealer;->getData(Lorg/apache/poi/java/awt/image/DataBufferUShort;I)[S

    move-result-object p0

    return-object p0
.end method

.method public static stealTrackable(Lorg/apache/poi/java/awt/image/DataBuffer;)Lorg/apache/poi/sun/java2d/StateTrackableDelegate;
    .locals 1

    sget-object v0, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->stealer:Lorg/apache/poi/sun/awt/image/SunWritableRaster$DataStealer;

    invoke-interface {v0, p0}, Lorg/apache/poi/sun/awt/image/SunWritableRaster$DataStealer;->getTrackable(Lorg/apache/poi/java/awt/image/DataBuffer;)Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final markDirty()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sun/awt/image/SunWritableRaster;->theTrackable:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    invoke-virtual {v0}, Lorg/apache/poi/sun/java2d/StateTrackableDelegate;->markDirty()V

    return-void
.end method
