.class public final Lorg/apache/poi/java/awt/PageAttributes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/PageAttributes$ColorType;,
        Lorg/apache/poi/java/awt/PageAttributes$MediaType;,
        Lorg/apache/poi/java/awt/PageAttributes$OrientationRequestedType;,
        Lorg/apache/poi/java/awt/PageAttributes$OriginType;
    }
.end annotation


# instance fields
.field private color:Lorg/apache/poi/java/awt/PageAttributes$ColorType;

.field private media:Lorg/apache/poi/java/awt/PageAttributes$MediaType;

.field private orientationRequested:Lorg/apache/poi/java/awt/PageAttributes$OrientationRequestedType;

.field private origin:Lorg/apache/poi/java/awt/PageAttributes$OriginType;

.field private printQuality:Lorg/apache/poi/java/awt/PageAttributes$PrintQualityType;

.field private printerResolution:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/poi/java/awt/PageAttributes$ColorType;->MONOCHROME:Lorg/apache/poi/java/awt/PageAttributes$ColorType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/PageAttributes;->setColor(Lorg/apache/poi/java/awt/PageAttributes$ColorType;)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/PageAttributes;->setMediaToDefault()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/PageAttributes;->setOrientationRequestedToDefault()V

    sget-object v0, Lorg/apache/poi/java/awt/PageAttributes$OriginType;->PHYSICAL:Lorg/apache/poi/java/awt/PageAttributes$OriginType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/PageAttributes;->setOrigin(Lorg/apache/poi/java/awt/PageAttributes$OriginType;)V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/PageAttributes;->setPrintQualityToDefault()V

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/PageAttributes;->setPrinterResolutionToDefault()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/PageAttributes$ColorType;Lorg/apache/poi/java/awt/PageAttributes$MediaType;Lorg/apache/poi/java/awt/PageAttributes$OrientationRequestedType;Lorg/apache/poi/java/awt/PageAttributes$OriginType;Lorg/apache/poi/java/awt/PageAttributes$PrintQualityType;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/PageAttributes;->setColor(Lorg/apache/poi/java/awt/PageAttributes$ColorType;)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/java/awt/PageAttributes;->setMedia(Lorg/apache/poi/java/awt/PageAttributes$MediaType;)V

    invoke-virtual {p0, p3}, Lorg/apache/poi/java/awt/PageAttributes;->setOrientationRequested(Lorg/apache/poi/java/awt/PageAttributes$OrientationRequestedType;)V

    invoke-virtual {p0, p4}, Lorg/apache/poi/java/awt/PageAttributes;->setOrigin(Lorg/apache/poi/java/awt/PageAttributes$OriginType;)V

    invoke-virtual {p0, p5}, Lorg/apache/poi/java/awt/PageAttributes;->setPrintQuality(Lorg/apache/poi/java/awt/PageAttributes$PrintQualityType;)V

    invoke-virtual {p0, p6}, Lorg/apache/poi/java/awt/PageAttributes;->setPrinterResolution([I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/PageAttributes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/PageAttributes;->set(Lorg/apache/poi/java/awt/PageAttributes;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lorg/apache/poi/java/awt/PageAttributes;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/java/awt/PageAttributes;

    iget-object v0, p0, Lorg/apache/poi/java/awt/PageAttributes;->color:Lorg/apache/poi/java/awt/PageAttributes$ColorType;

    iget-object v2, p1, Lorg/apache/poi/java/awt/PageAttributes;->color:Lorg/apache/poi/java/awt/PageAttributes$ColorType;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/PageAttributes;->media:Lorg/apache/poi/java/awt/PageAttributes$MediaType;

    iget-object v2, p1, Lorg/apache/poi/java/awt/PageAttributes;->media:Lorg/apache/poi/java/awt/PageAttributes$MediaType;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/PageAttributes;->orientationRequested:Lorg/apache/poi/java/awt/PageAttributes$OrientationRequestedType;

    iget-object v2, p1, Lorg/apache/poi/java/awt/PageAttributes;->orientationRequested:Lorg/apache/poi/java/awt/PageAttributes$OrientationRequestedType;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/PageAttributes;->origin:Lorg/apache/poi/java/awt/PageAttributes$OriginType;

    iget-object v2, p1, Lorg/apache/poi/java/awt/PageAttributes;->origin:Lorg/apache/poi/java/awt/PageAttributes$OriginType;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/PageAttributes;->printQuality:Lorg/apache/poi/java/awt/PageAttributes$PrintQualityType;

    iget-object v2, p1, Lorg/apache/poi/java/awt/PageAttributes;->printQuality:Lorg/apache/poi/java/awt/PageAttributes$PrintQualityType;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/apache/poi/java/awt/PageAttributes;->printerResolution:[I

    aget v2, v0, v1

    iget-object p1, p1, Lorg/apache/poi/java/awt/PageAttributes;->printerResolution:[I

    aget v4, p1, v1

    if-ne v2, v4, :cond_1

    aget v2, v0, v3

    aget v4, p1, v3

    if-ne v2, v4, :cond_1

    const/4 v2, 0x2

    aget v0, v0, v2

    aget p1, p1, v2

    if-ne v0, p1, :cond_1

    move v1, v3

    :cond_1
    return v1
.end method

.method public getColor()Lorg/apache/poi/java/awt/PageAttributes$ColorType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/PageAttributes;->color:Lorg/apache/poi/java/awt/PageAttributes$ColorType;

    return-object v0
.end method

.method public getMedia()Lorg/apache/poi/java/awt/PageAttributes$MediaType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/PageAttributes;->media:Lorg/apache/poi/java/awt/PageAttributes$MediaType;

    return-object v0
.end method

.method public getOrientationRequested()Lorg/apache/poi/java/awt/PageAttributes$OrientationRequestedType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/PageAttributes;->orientationRequested:Lorg/apache/poi/java/awt/PageAttributes$OrientationRequestedType;

    return-object v0
.end method

.method public getOrigin()Lorg/apache/poi/java/awt/PageAttributes$OriginType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/PageAttributes;->origin:Lorg/apache/poi/java/awt/PageAttributes$OriginType;

    return-object v0
.end method

.method public getPrintQuality()Lorg/apache/poi/java/awt/PageAttributes$PrintQualityType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/PageAttributes;->printQuality:Lorg/apache/poi/java/awt/PageAttributes$PrintQualityType;

    return-object v0
.end method

.method public getPrinterResolution()[I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/apache/poi/java/awt/PageAttributes;->printerResolution:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v2, 0x1

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v2, 0x2

    aget v1, v1, v2

    aput v1, v0, v2

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/java/awt/PageAttributes;->color:Lorg/apache/poi/java/awt/PageAttributes$ColorType;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/PageAttributes$ColorType;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/apache/poi/java/awt/PageAttributes;->media:Lorg/apache/poi/java/awt/PageAttributes$MediaType;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/PageAttributes$MediaType;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/java/awt/PageAttributes;->orientationRequested:Lorg/apache/poi/java/awt/PageAttributes$OrientationRequestedType;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/PageAttributes$OrientationRequestedType;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x17

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/java/awt/PageAttributes;->origin:Lorg/apache/poi/java/awt/PageAttributes$OriginType;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/PageAttributes$OriginType;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x16

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/java/awt/PageAttributes;->printQuality:Lorg/apache/poi/java/awt/PageAttributes$PrintQualityType;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/PageAttributes$PrintQualityType;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x14

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/java/awt/PageAttributes;->printerResolution:[I

    const/4 v2, 0x2

    aget v3, v1, v2

    shr-int/lit8 v2, v3, 0x2

    shl-int/lit8 v2, v2, 0x13

    xor-int/2addr v0, v2

    const/4 v2, 0x1

    aget v2, v1, v2

    shl-int/lit8 v2, v2, 0xa

    xor-int/2addr v0, v2

    const/4 v2, 0x0

    aget v1, v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public set(Lorg/apache/poi/java/awt/PageAttributes;)V
    .locals 1

    iget-object v0, p1, Lorg/apache/poi/java/awt/PageAttributes;->color:Lorg/apache/poi/java/awt/PageAttributes$ColorType;

    iput-object v0, p0, Lorg/apache/poi/java/awt/PageAttributes;->color:Lorg/apache/poi/java/awt/PageAttributes$ColorType;

    iget-object v0, p1, Lorg/apache/poi/java/awt/PageAttributes;->media:Lorg/apache/poi/java/awt/PageAttributes$MediaType;

    iput-object v0, p0, Lorg/apache/poi/java/awt/PageAttributes;->media:Lorg/apache/poi/java/awt/PageAttributes$MediaType;

    iget-object v0, p1, Lorg/apache/poi/java/awt/PageAttributes;->orientationRequested:Lorg/apache/poi/java/awt/PageAttributes$OrientationRequestedType;

    iput-object v0, p0, Lorg/apache/poi/java/awt/PageAttributes;->orientationRequested:Lorg/apache/poi/java/awt/PageAttributes$OrientationRequestedType;

    iget-object v0, p1, Lorg/apache/poi/java/awt/PageAttributes;->origin:Lorg/apache/poi/java/awt/PageAttributes$OriginType;

    iput-object v0, p0, Lorg/apache/poi/java/awt/PageAttributes;->origin:Lorg/apache/poi/java/awt/PageAttributes$OriginType;

    iget-object v0, p1, Lorg/apache/poi/java/awt/PageAttributes;->printQuality:Lorg/apache/poi/java/awt/PageAttributes$PrintQualityType;

    iput-object v0, p0, Lorg/apache/poi/java/awt/PageAttributes;->printQuality:Lorg/apache/poi/java/awt/PageAttributes$PrintQualityType;

    iget-object p1, p1, Lorg/apache/poi/java/awt/PageAttributes;->printerResolution:[I

    iput-object p1, p0, Lorg/apache/poi/java/awt/PageAttributes;->printerResolution:[I

    return-void
.end method

.method public setColor(Lorg/apache/poi/java/awt/PageAttributes$ColorType;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/poi/java/awt/PageAttributes;->color:Lorg/apache/poi/java/awt/PageAttributes$ColorType;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value for attribute color"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMedia(Lorg/apache/poi/java/awt/PageAttributes$MediaType;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/poi/java/awt/PageAttributes;->media:Lorg/apache/poi/java/awt/PageAttributes$MediaType;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value for attribute media"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMediaToDefault()V
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lorg/apache/poi/java/awt/PageAttributes$MediaType;->NA_LETTER:Lorg/apache/poi/java/awt/PageAttributes$MediaType;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/poi/java/awt/PageAttributes$MediaType;->ISO_A4:Lorg/apache/poi/java/awt/PageAttributes$MediaType;

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/PageAttributes;->setMedia(Lorg/apache/poi/java/awt/PageAttributes$MediaType;)V

    return-void
.end method

.method public setOrientationRequested(I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/poi/java/awt/PageAttributes$OrientationRequestedType;->LANDSCAPE:Lorg/apache/poi/java/awt/PageAttributes$OrientationRequestedType;

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/apache/poi/java/awt/PageAttributes$OrientationRequestedType;->PORTRAIT:Lorg/apache/poi/java/awt/PageAttributes$OrientationRequestedType;

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/PageAttributes;->setOrientationRequested(Lorg/apache/poi/java/awt/PageAttributes$OrientationRequestedType;)V

    return-void
.end method

.method public setOrientationRequested(Lorg/apache/poi/java/awt/PageAttributes$OrientationRequestedType;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/poi/java/awt/PageAttributes;->orientationRequested:Lorg/apache/poi/java/awt/PageAttributes$OrientationRequestedType;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value for attribute orientationRequested"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOrientationRequestedToDefault()V
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/PageAttributes$OrientationRequestedType;->PORTRAIT:Lorg/apache/poi/java/awt/PageAttributes$OrientationRequestedType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/PageAttributes;->setOrientationRequested(Lorg/apache/poi/java/awt/PageAttributes$OrientationRequestedType;)V

    return-void
.end method

.method public setOrigin(Lorg/apache/poi/java/awt/PageAttributes$OriginType;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/poi/java/awt/PageAttributes;->origin:Lorg/apache/poi/java/awt/PageAttributes$OriginType;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value for attribute origin"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPrintQuality(I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/poi/java/awt/PageAttributes$PrintQualityType;->HIGH:Lorg/apache/poi/java/awt/PageAttributes$PrintQualityType;

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/apache/poi/java/awt/PageAttributes$PrintQualityType;->NORMAL:Lorg/apache/poi/java/awt/PageAttributes$PrintQualityType;

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/apache/poi/java/awt/PageAttributes$PrintQualityType;->DRAFT:Lorg/apache/poi/java/awt/PageAttributes$PrintQualityType;

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/PageAttributes;->setPrintQuality(Lorg/apache/poi/java/awt/PageAttributes$PrintQualityType;)V

    return-void
.end method

.method public setPrintQuality(Lorg/apache/poi/java/awt/PageAttributes$PrintQualityType;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/poi/java/awt/PageAttributes;->printQuality:Lorg/apache/poi/java/awt/PageAttributes$PrintQualityType;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value for attribute printQuality"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPrintQualityToDefault()V
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/PageAttributes$PrintQualityType;->NORMAL:Lorg/apache/poi/java/awt/PageAttributes$PrintQualityType;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/PageAttributes;->setPrintQuality(Lorg/apache/poi/java/awt/PageAttributes$PrintQualityType;)V

    return-void
.end method

.method public setPrinterResolution(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    const/4 p1, 0x2

    aput v0, v1, p1

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/PageAttributes;->setPrinterResolution([I)V

    return-void
.end method

.method public setPrinterResolution([I)V
    .locals 6

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget v2, p1, v0

    if-lez v2, :cond_1

    const/4 v2, 0x1

    aget v3, p1, v2

    if-lez v3, :cond_1

    const/4 v3, 0x2

    aget v4, p1, v3

    if-eq v4, v1, :cond_0

    aget v4, p1, v3

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    :cond_0
    new-array v1, v1, [I

    aget v4, p1, v0

    aput v4, v1, v0

    aget v0, p1, v2

    aput v0, v1, v2

    aget p1, p1, v3

    aput p1, v1, v3

    iput-object v1, p0, Lorg/apache/poi/java/awt/PageAttributes;->printerResolution:[I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid value for attribute printerResolution"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPrinterResolutionToDefault()V
    .locals 1

    const/16 v0, 0x48

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/PageAttributes;->setPrinterResolution(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/PageAttributes;->getColor()Lorg/apache/poi/java/awt/PageAttributes$ColorType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",media="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/PageAttributes;->getMedia()Lorg/apache/poi/java/awt/PageAttributes$MediaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",orientation-requested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/PageAttributes;->getOrientationRequested()Lorg/apache/poi/java/awt/PageAttributes$OrientationRequestedType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/PageAttributes;->getOrigin()Lorg/apache/poi/java/awt/PageAttributes$OriginType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",print-quality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/PageAttributes;->getPrintQuality()Lorg/apache/poi/java/awt/PageAttributes$PrintQualityType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",printer-resolution=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/java/awt/PageAttributes;->printerResolution:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/java/awt/PageAttributes;->printerResolution:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/java/awt/PageAttributes;->printerResolution:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
