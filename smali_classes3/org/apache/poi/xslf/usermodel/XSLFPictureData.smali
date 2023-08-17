.class public final Lorg/apache/poi/xslf/usermodel/XSLFPictureData;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/PictureData;


# instance fields
.field private checksum:Ljava/lang/Long;

.field private index:I

.field private origSize:Lorg/apache/poi/java/awt/Dimension;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/POIXMLDocumentPart;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->checksum:Ljava/lang/Long;

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->origSize:Lorg/apache/poi/java/awt/Dimension;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->index:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->checksum:Ljava/lang/Long;

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->origSize:Lorg/apache/poi/java/awt/Dimension;

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->index:I

    return-void
.end method

.method public static getRelationForType(Lorg/apache/poi/sl/usermodel/PictureData$PictureType;)Lorg/apache/poi/xslf/usermodel/XSLFRelation;
    .locals 1

    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData$1;->$SwitchMap$org$apache$poi$sl$usermodel$PictureData$PictureType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_TIFF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_WDP:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_WPG:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_BMP:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_EPS:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_GIF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-object p0

    :pswitch_6
    sget-object p0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_DIB:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-object p0

    :pswitch_7
    sget-object p0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_PNG:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-object p0

    :pswitch_8
    sget-object p0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_JPEG:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-object p0

    :pswitch_9
    sget-object p0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_PICT:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-object p0

    :pswitch_a
    sget-object p0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_WMF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-object p0

    :pswitch_b
    sget-object p0, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_EMF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cacheProperties()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->origSize:Lorg/apache/poi/java/awt/Dimension;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->checksum:Ljava/lang/Long;

    if-nez v0, :cond_5

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->calculateChecksum([B)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->checksum:Ljava/lang/Long;

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getType()Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    new-instance v0, Lorg/apache/poi/java/awt/Dimension;

    invoke-direct {v0, v2, v2}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->origSize:Lorg/apache/poi/java/awt/Dimension;

    return-void

    :cond_1
    sget-object v3, Lorg/apache/poi/xslf/usermodel/XSLFPictureData$1;->$SwitchMap$org$apache$poi$sl$usermodel$PictureData$PictureType:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    new-instance v1, Lorg/apache/poi/sl/image/ImageHeaderBitmap;

    invoke-direct {v1, v0, v3}, Lorg/apache/poi/sl/image/ImageHeaderBitmap;-><init>([BI)V

    invoke-virtual {v1}, Lorg/apache/poi/sl/image/ImageHeaderBitmap;->getSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/apache/poi/sl/image/ImageHeaderPICT;

    invoke-direct {v1, v0, v3}, Lorg/apache/poi/sl/image/ImageHeaderPICT;-><init>([BI)V

    invoke-virtual {v1}, Lorg/apache/poi/sl/image/ImageHeaderPICT;->getSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v1, Lorg/apache/poi/sl/image/ImageHeaderWMF;

    invoke-direct {v1, v0, v3}, Lorg/apache/poi/sl/image/ImageHeaderWMF;-><init>([BI)V

    invoke-virtual {v1}, Lorg/apache/poi/sl/image/ImageHeaderWMF;->getSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v1, Lorg/apache/poi/sl/image/ImageHeaderEMF;

    invoke-direct {v1, v0, v3}, Lorg/apache/poi/sl/image/ImageHeaderEMF;-><init>([BI)V

    invoke-virtual {v1}, Lorg/apache/poi/sl/image/ImageHeaderEMF;->getSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->origSize:Lorg/apache/poi/java/awt/Dimension;

    :cond_5
    return-void
.end method

.method public getChecksum()[B
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->cacheProperties()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->checksum:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putLong([BIJ)V

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()[B
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/poi/POIXMLException;

    invoke-direct {v1, v0}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageDimension()Lorg/apache/poi/java/awt/Dimension;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->cacheProperties()V

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->origSize:Lorg/apache/poi/java/awt/Dimension;

    return-object v0
.end method

.method public getImageDimensionInPixels()Lorg/apache/poi/java/awt/Dimension;
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getImageDimension()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/java/awt/Dimension;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Dimension;->getWidth()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->pointsToPixel(D)I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Dimension;->getHeight()D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->pointsToPixel(D)I

    move-result v0

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/java/awt/Dimension;-><init>(II)V

    return-object v1
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->index:I

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->getContentType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_EMF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->EMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object v0

    :cond_0
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_WMF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->WMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object v0

    :cond_1
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_PICT:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->PICT:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object v0

    :cond_2
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_JPEG:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->JPEG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object v0

    :cond_3
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_PNG:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->PNG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object v0

    :cond_4
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_DIB:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->DIB:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object v0

    :cond_5
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_GIF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->GIF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object v0

    :cond_6
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_EPS:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->EPS:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object v0

    :cond_7
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_BMP:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->BMP:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object v0

    :cond_8
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_WPG:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->WPG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object v0

    :cond_9
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_WDP:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->WDP:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object v0

    :cond_a
    sget-object v1, Lorg/apache/poi/xslf/usermodel/XSLFRelation;->IMAGE_TIFF:Lorg/apache/poi/xslf/usermodel/XSLFRelation;

    invoke-virtual {v1}, Lorg/apache/poi/POIXMLRelation;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->TIFF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public prepareForCommit()V
    .locals 0

    return-void
.end method

.method public setData([B)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->calculateChecksum([B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->checksum:Ljava/lang/Long;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->origSize:Lorg/apache/poi/java/awt/Dimension;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFPictureData;->index:I

    return-void
.end method

.method public suggestFileExtension()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/POIXMLDocumentPart;->getPackagePart()Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getExtension()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
