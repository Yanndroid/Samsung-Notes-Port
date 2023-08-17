.class public Lcom/sun/imageio/plugins/jpeg/JPEGImageMetadataFormat;
.super Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormat;
.source "SourceFile"


# static fields
.field private static theInstance:Lcom/sun/imageio/plugins/jpeg/JPEGImageMetadataFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 24

    move-object/from16 v10, p0

    const-string v0, "javax_imageio_jpeg_image_1.0"

    const/4 v1, 0x1

    invoke-direct {v10, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormat;-><init>(Ljava/lang/String;I)V

    const-string v2, "JPEGvariety"

    const/4 v3, 0x3

    invoke-virtual {v10, v2, v0, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v11, "markerSequence"

    const/4 v4, 0x4

    invoke-virtual {v10, v11, v0, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "app0JFIF"

    const/4 v12, 0x2

    invoke-virtual {v10, v0, v2, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v11}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormat;->addStreamElements(Ljava/lang/String;)V

    const-string v2, "app14Adobe"

    const/4 v13, 0x0

    invoke-virtual {v10, v2, v11, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v14, "sof"

    invoke-virtual {v10, v14, v11, v1, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v15, "sos"

    invoke-virtual {v10, v15, v11, v1, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v2, "JFXX"

    const v4, 0x7fffffff

    invoke-virtual {v10, v2, v0, v1, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v9, "app0JFXX"

    invoke-virtual {v10, v9, v2, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v8, "app2ICC"

    invoke-virtual {v10, v8, v0, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "app0JFIF"

    const-string v2, "majorVersion"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "1"

    const-string v6, "0"

    const-string v7, "255"

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v18, v8

    move/from16 v8, v16

    move-object v13, v9

    move/from16 v9, v17

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "app0JFIF"

    const-string v2, "minorVersion"

    const-string v5, "2"

    const-string v6, "0"

    const-string v7, "255"

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "0"

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "1"

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v7, "2"

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "app0JFIF"

    const-string v2, "resUnits"

    const-string v5, "0"

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V

    const-string v1, "app0JFIF"

    const-string v2, "Xdensity"

    const-string v5, "1"

    const-string v6, "1"

    const-string v17, "65535"

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v21, v7

    move-object/from16 v7, v17

    move-object/from16 v22, v8

    move/from16 v8, v19

    move-object/from16 v23, v9

    move/from16 v9, v20

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "app0JFIF"

    const-string v2, "Ydensity"

    const-string v5, "1"

    const-string v6, "1"

    const-string v7, "65535"

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "app0JFIF"

    const-string v2, "thumbWidth"

    const-string v5, "0"

    const-string v6, "0"

    const-string v7, "255"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "app0JFIF"

    const-string v2, "thumbHeight"

    const-string v5, "0"

    const-string v6, "0"

    const-string v7, "255"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v7, "JFIFthumbJPEG"

    invoke-virtual {v10, v7, v13, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "JFIFthumbPalette"

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v13, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "JFIFthumbRGB"

    invoke-virtual {v10, v0, v13, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "16"

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "17"

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "19"

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "app0JFXX"

    const-string v2, "extensionCode"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v10, v11, v7}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addChildElement(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "JFIFthumbPalette"

    const-string v2, "thumbWidth"

    const-string v6, "0"

    const-string v7, "255"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "JFIFthumbPalette"

    const-string v2, "thumbHeight"

    const-string v6, "0"

    const-string v7, "255"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "JFIFthumbRGB"

    const-string v2, "thumbWidth"

    const-string v6, "0"

    const-string v7, "255"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "JFIFthumbRGB"

    const-string v2, "thumbHeight"

    const-string v6, "0"

    const-string v7, "255"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-class v0, Lorg/apache/poi/java/awt/color/ICC_Profile;

    const/4 v1, 0x0

    move-object/from16 v2, v18

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v0, v3, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addObjectValue(Ljava/lang/String;Ljava/lang/Class;ZLjava/lang/Object;)V

    const-string v1, "app14Adobe"

    const-string v2, "version"

    const/4 v3, 0x2

    const-string v5, "100"

    const-string v6, "100"

    const-string v7, "255"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "app14Adobe"

    const-string v2, "flags0"

    const-string v5, "0"

    const-string v6, "0"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "app14Adobe"

    const-string v2, "flags1"

    const-string v5, "0"

    const-string v6, "0"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v11, v23

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, v22

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v13, v21

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "app14Adobe"

    const-string v2, "transform"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V

    const-string v0, "componentSpec"

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v14, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "sof"

    const-string v2, "process"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V

    const-string v1, "sof"

    const-string v2, "samplePrecision"

    const-string v5, "8"

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    const-string v1, "sof"

    const-string v2, "numLines"

    const/4 v5, 0x0

    const-string v6, "0"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "sof"

    const-string v2, "samplesPerLine"

    const-string v6, "0"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v9, "3"

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "4"

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "sof"

    const-string v2, "numFrameComponents"

    move-object/from16 v0, p0

    move-object v6, v14

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V

    const-string v1, "componentSpec"

    const-string v2, "componentId"

    const/4 v4, 0x1

    const-string v6, "0"

    const-string v7, "255"

    const/16 v17, 0x1

    move-object/from16 v18, v14

    move-object v14, v9

    move/from16 v9, v17

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "componentSpec"

    const-string v2, "HsamplingFactor"

    const-string v6, "1"

    const-string v7, "255"

    const/4 v9, 0x1

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "componentSpec"

    const-string v2, "VsamplingFactor"

    const-string v6, "1"

    const-string v7, "255"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "componentSpec"

    const-string v2, "QtableSelector"

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V

    const-string v0, "scanComponentSpec"

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v15, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "sos"

    const-string v2, "numScanComponents"

    move-object/from16 v0, p0

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V

    const-string v1, "sos"

    const-string v2, "startSpectralSelection"

    const/4 v4, 0x0

    const-string v5, "0"

    const-string v6, "0"

    const-string v7, "63"

    const/4 v11, 0x1

    move-object v12, v9

    move v9, v11

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "sos"

    const-string v2, "endSpectralSelection"

    const-string v5, "63"

    const-string v6, "0"

    const-string v7, "63"

    const/4 v9, 0x1

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "sos"

    const-string v2, "approxHigh"

    const-string v5, "0"

    const-string v6, "0"

    const-string v7, "15"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "sos"

    const-string v2, "approxLow"

    const-string v5, "0"

    const-string v6, "0"

    const-string v7, "15"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "scanComponentSpec"

    const-string v2, "componentSelector"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "0"

    const-string v7, "255"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "scanComponentSpec"

    const-string v2, "dcHuffTable"

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V

    const-string v1, "scanComponentSpec"

    const-string v2, "acHuffTable"

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;
    .locals 2

    const-class v0, Lcom/sun/imageio/plugins/jpeg/JPEGImageMetadataFormat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sun/imageio/plugins/jpeg/JPEGImageMetadataFormat;->theInstance:Lcom/sun/imageio/plugins/jpeg/JPEGImageMetadataFormat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sun/imageio/plugins/jpeg/JPEGImageMetadataFormat;

    invoke-direct {v1}, Lcom/sun/imageio/plugins/jpeg/JPEGImageMetadataFormat;-><init>()V

    sput-object v1, Lcom/sun/imageio/plugins/jpeg/JPEGImageMetadataFormat;->theInstance:Lcom/sun/imageio/plugins/jpeg/JPEGImageMetadataFormat;

    :cond_0
    sget-object v1, Lcom/sun/imageio/plugins/jpeg/JPEGImageMetadataFormat;->theInstance:Lcom/sun/imageio/plugins/jpeg/JPEGImageMetadataFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public canNodeAppear(Ljava/lang/String;Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getRootName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const-string v0, "JPEGvariety"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "markerSequence"

    invoke-virtual {p0, p1, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormat;->isInSubtree(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "app0JFIF"

    invoke-virtual {p0, p1, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormat;->isInSubtree(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2, v1}, Lcom/sun/imageio/plugins/jpeg/JPEG;->isJFIFcompliant(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v1
.end method
