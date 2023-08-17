.class final Lorg/apache/poi/java/awt/image/DataBuffer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sun/awt/image/SunWritableRaster$DataStealer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/image/DataBuffer;
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
.method public getData(Lorg/apache/poi/java/awt/image/DataBufferByte;I)[B
    .locals 0

    iget-object p1, p1, Lorg/apache/poi/java/awt/image/DataBufferByte;->bankdata:[[B

    aget-object p1, p1, p2

    return-object p1
.end method

.method public getData(Lorg/apache/poi/java/awt/image/DataBufferInt;I)[I
    .locals 0

    iget-object p1, p1, Lorg/apache/poi/java/awt/image/DataBufferInt;->bankdata:[[I

    aget-object p1, p1, p2

    return-object p1
.end method

.method public getData(Lorg/apache/poi/java/awt/image/DataBufferUShort;I)[S
    .locals 0

    iget-object p1, p1, Lorg/apache/poi/java/awt/image/DataBufferUShort;->bankdata:[[S

    aget-object p1, p1, p2

    return-object p1
.end method

.method public getTrackable(Lorg/apache/poi/java/awt/image/DataBuffer;)Lorg/apache/poi/sun/java2d/StateTrackableDelegate;
    .locals 0

    iget-object p1, p1, Lorg/apache/poi/java/awt/image/DataBuffer;->theTrackable:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    return-object p1
.end method

.method public setTrackable(Lorg/apache/poi/java/awt/image/DataBuffer;Lorg/apache/poi/sun/java2d/StateTrackableDelegate;)V
    .locals 0

    iput-object p2, p1, Lorg/apache/poi/java/awt/image/DataBuffer;->theTrackable:Lorg/apache/poi/sun/java2d/StateTrackableDelegate;

    return-void
.end method
