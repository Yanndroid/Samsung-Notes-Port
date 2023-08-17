.class public Lorg/apache/poi/sl/draw/DrawPictureShape;
.super Lorg/apache/poi/sl/draw/DrawSimpleShape;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field private static final WMF_IMAGE_RENDERER:Ljava/lang/String; = "org.apache.poi.hwmf.draw.HwmfSLImageRenderer"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/sl/draw/DrawPictureShape;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/draw/DrawPictureShape;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/sl/usermodel/PictureShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/PictureShape<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawSimpleShape;-><init>(Lorg/apache/poi/sl/usermodel/SimpleShape;)V

    return-void
.end method

.method public static getImageRenderer(Lorg/apache/poi/java/awt/Graphics2D;Ljava/lang/String;)Lorg/apache/poi/sl/draw/ImageRenderer;
    .locals 4

    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->IMAGE_RENDERER:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Graphics2D;->getRenderingHint(Lorg/apache/poi/java/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/draw/ImageRenderer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->WMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    iget-object p0, p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string p1, "org.apache.poi.hwmf.draw.HwmfSLImageRenderer"

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/draw/ImageRenderer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lorg/apache/poi/sl/draw/DrawPictureShape;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v0, 0x7

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "WMF image renderer is not on the classpath - include poi-scratchpad jar!"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_1
    new-instance p0, Lorg/apache/poi/sl/draw/BitmapImageRenderer;

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/BitmapImageRenderer;-><init>()V

    return-object p0
.end method


# virtual methods
.method public drawContent(Lorg/apache/poi/java/awt/Graphics2D;)V
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getShape()Lorg/apache/poi/sl/usermodel/PictureShape;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PictureShape;->getPictureData()Lorg/apache/poi/sl/usermodel/PictureData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getShape()Lorg/apache/poi/sl/usermodel/PictureShape;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Lorg/apache/poi/java/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getShape()Lorg/apache/poi/sl/usermodel/PictureShape;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/PictureShape;->getClipping()Lorg/apache/poi/java/awt/Insets;

    move-result-object v2

    :try_start_0
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PictureData;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getImageRenderer(Lorg/apache/poi/java/awt/Graphics2D;Ljava/lang/String;)Lorg/apache/poi/sl/draw/ImageRenderer;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PictureData;->getData()[B

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PictureData;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lorg/apache/poi/sl/draw/ImageRenderer;->loadImage([BLjava/lang/String;)V

    invoke-interface {v3, p1, v1, v2}, Lorg/apache/poi/sl/draw/ImageRenderer;->drawImage(Lorg/apache/poi/java/awt/Graphics2D;Lorg/apache/poi/java/awt/geom/Rectangle2D;Lorg/apache/poi/java/awt/Insets;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lorg/apache/poi/sl/draw/DrawPictureShape;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x7

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "image can\'t be loaded/rendered."

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public getShape()Lorg/apache/poi/sl/usermodel/PictureShape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/PictureShape<",
            "**>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    check-cast v0, Lorg/apache/poi/sl/usermodel/PictureShape;

    return-object v0
.end method

.method public bridge synthetic getShape()Lorg/apache/poi/sl/usermodel/Shape;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getShape()Lorg/apache/poi/sl/usermodel/PictureShape;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getShape()Lorg/apache/poi/sl/usermodel/PictureShape;

    move-result-object v0

    return-object v0
.end method

.method public resize()V
    .locals 12

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getShape()Lorg/apache/poi/sl/usermodel/PictureShape;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/PictureShape;->getPictureData()Lorg/apache/poi/sl/usermodel/PictureData;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/PictureData;->getImageDimension()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/Shape;->getAnchor()Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v4

    invoke-virtual {v2}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v6

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Dimension;->getWidth()D

    move-result-wide v8

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Dimension;->getHeight()D

    move-result-wide v10

    new-instance v1, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-interface {v0, v1}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->setAnchor(Lorg/apache/poi/java/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public resize(Lorg/apache/poi/java/awt/geom/Rectangle2D;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/RectAlign;->CENTER:Lorg/apache/poi/sl/usermodel/RectAlign;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->resize(Lorg/apache/poi/java/awt/geom/Rectangle2D;Lorg/apache/poi/sl/usermodel/RectAlign;)V

    return-void
.end method

.method public resize(Lorg/apache/poi/java/awt/geom/Rectangle2D;Lorg/apache/poi/sl/usermodel/RectAlign;)V
    .locals 26

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getShape()Lorg/apache/poi/sl/usermodel/PictureShape;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/PictureShape;->getPictureData()Lorg/apache/poi/sl/usermodel/PictureData;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/PictureData;->getImageDimension()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v2

    iget v3, v2, Lorg/apache/poi/java/awt/Dimension;->width:I

    if-lez v3, :cond_3

    iget v3, v2, Lorg/apache/poi/java/awt/Dimension;->height:I

    if-gtz v3, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v5

    iget v7, v2, Lorg/apache/poi/java/awt/Dimension;->width:I

    int-to-double v8, v7

    div-double v8, v3, v8

    iget v2, v2, Lorg/apache/poi/java/awt/Dimension;->height:I

    int-to-double v10, v2

    div-double v10, v5, v10

    cmpl-double v12, v8, v10

    const-wide/16 v13, 0x0

    if-lez v12, :cond_1

    int-to-double v2, v7

    mul-double v3, v10, v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v7

    sub-double/2addr v7, v3

    move-wide/from16 v20, v3

    move-wide/from16 v22, v5

    move-wide/from16 v24, v7

    move-wide v7, v13

    move-wide/from16 v13, v24

    goto :goto_0

    :cond_1
    cmpl-double v5, v10, v8

    if-lez v5, :cond_2

    int-to-double v5, v2

    mul-double/2addr v5, v8

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    sub-double/2addr v7, v5

    move-wide/from16 v20, v3

    move-wide/from16 v22, v5

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v4

    sget-object v0, Lorg/apache/poi/sl/draw/DrawPictureShape$1;->$SwitchMap$org$apache$poi$sl$usermodel$RectAlign:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v0, v0, v6

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    packed-switch v0, :pswitch_data_0

    div-double/2addr v13, v9

    goto :goto_1

    :pswitch_0
    div-double/2addr v13, v9

    :pswitch_1
    add-double/2addr v2, v13

    goto :goto_2

    :goto_1
    :pswitch_2
    add-double/2addr v2, v13

    :pswitch_3
    div-double/2addr v7, v9

    :goto_2
    :pswitch_4
    add-double/2addr v4, v7

    goto :goto_3

    :pswitch_5
    div-double/2addr v13, v9

    :pswitch_6
    add-double/2addr v2, v13

    :goto_3
    :pswitch_7
    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    new-instance v0, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;

    move-object v15, v0

    invoke-direct/range {v15 .. v23}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-interface {v1, v0}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->setAnchor(Lorg/apache/poi/java/awt/geom/Rectangle2D;)V

    return-void

    :cond_2
    invoke-interface {v1, v0}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->setAnchor(Lorg/apache/poi/java/awt/geom/Rectangle2D;)V

    return-void

    :cond_3
    :goto_4
    invoke-interface {v1, v0}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->setAnchor(Lorg/apache/poi/java/awt/geom/Rectangle2D;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method
