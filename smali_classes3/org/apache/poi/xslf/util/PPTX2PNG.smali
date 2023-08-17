.class public Lorg/apache/poi/xslf/util/PPTX2PNG;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lorg/apache/poi/xslf/util/PPTX2PNG;->usage(Ljava/lang/String;)V

    return-void

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    const-string v4, "-1"

    const-string v5, "png"

    move-object v7, v2

    move-object v8, v7

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_0
    array-length v10, v0

    const/4 v11, 0x1

    if-ge v6, v10, :cond_7

    aget-object v10, v0, v6

    const-string v12, "-"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    aget-object v10, v0, v6

    const-string v12, "-scale"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    add-int/lit8 v6, v6, 0x1

    aget-object v1, v0, v6

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_1

    :cond_1
    aget-object v10, v0, v6

    const-string v12, "-slide"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    add-int/lit8 v6, v6, 0x1

    aget-object v4, v0, v6

    goto :goto_1

    :cond_2
    aget-object v10, v0, v6

    const-string v12, "-format"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v0, v6

    goto :goto_1

    :cond_3
    aget-object v10, v0, v6

    const-string v12, "-outdir"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    new-instance v8, Ljava/io/File;

    add-int/lit8 v6, v6, 0x1

    aget-object v10, v0, v6

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    aget-object v10, v0, v6

    const-string v12, "-quiet"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    move v9, v11

    goto :goto_1

    :cond_5
    new-instance v7, Ljava/io/File;

    aget-object v10, v0, v6

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_6
    :goto_1
    add-int/2addr v6, v11

    goto :goto_0

    :cond_7
    if-eqz v7, :cond_16

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_8

    :cond_8
    if-eqz v5, :cond_15

    const-string v0, "^(png|gif|jpg|null)$"

    invoke-virtual {v5, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_7

    :cond_9
    if-nez v8, :cond_a

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    :cond_a
    const-string v0, "null"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_c

    :cond_b
    const-string v0, "Output directory doesn\'t exist"

    :goto_2
    invoke-static {v0}, Lorg/apache/poi/xslf/util/PPTX2PNG;->usage(Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v6, 0x0

    cmpg-float v6, v1, v6

    if-gez v6, :cond_d

    const-string v0, "Invalid scale given"

    goto :goto_2

    :cond_d
    if-nez v9, :cond_e

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Processing "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_e
    invoke-static {v7, v2, v11}, Lorg/apache/poi/sl/usermodel/SlideShowFactory;->create(Ljava/io/File;Ljava/lang/String;Z)Lorg/apache/poi/sl/usermodel/SlideShow;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/SlideShow;->getSlides()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10, v4}, Lorg/apache/poi/xslf/util/PPTX2PNG;->slideIndexes(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "slidenum must be either -1 (for all) or within range: [1.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/xslf/util/PPTX2PNG;->usage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    return-void

    :cond_f
    :try_start_1
    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/SlideShow;->getPageSize()Lorg/apache/poi/java/awt/Dimension;

    move-result-object v10

    iget v12, v10, Lorg/apache/poi/java/awt/Dimension;->width:I

    int-to-float v12, v12

    mul-float/2addr v12, v1

    float-to-int v12, v12

    iget v10, v10, Lorg/apache/poi/java/awt/Dimension;->height:I

    int-to-float v10, v10

    mul-float/2addr v10, v1

    float-to-int v10, v10

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/poi/sl/usermodel/Slide;

    invoke-interface {v14}, Lorg/apache/poi/sl/usermodel/Slide;->getTitle()Ljava/lang/String;

    move-result-object v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v11, ""

    if-nez v9, :cond_11

    :try_start_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 p0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v6

    const-string v6, "Rendering slide "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-nez v15, :cond_10

    move/from16 v18, v9

    move-object v6, v11

    goto :goto_4

    :cond_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v9

    const-string v9, ": "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_11
    move-object/from16 p0, v4

    move-object/from16 v17, v6

    move/from16 v18, v9

    :goto_5
    new-instance v3, Lorg/apache/poi/java/awt/image/BufferedImage;

    const/4 v4, 0x2

    invoke-direct {v3, v12, v10, v4}, Lorg/apache/poi/java/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/image/BufferedImage;->createGraphics()Lorg/apache/poi/java/awt/Graphics2D;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Lorg/apache/poi/java/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v9

    invoke-virtual {v9, v6}, Lorg/apache/poi/sl/draw/DrawFactory;->fixFonts(Lorg/apache/poi/java/awt/Graphics2D;)V

    sget-object v9, Lorg/apache/poi/java/awt/RenderingHints;->KEY_ANTIALIASING:Lorg/apache/poi/java/awt/RenderingHints$Key;

    sget-object v15, Lorg/apache/poi/java/awt/RenderingHints;->VALUE_ANTIALIAS_ON:Ljava/lang/Object;

    invoke-virtual {v6, v9, v15}, Lorg/apache/poi/java/awt/Graphics2D;->setRenderingHint(Lorg/apache/poi/java/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v9, Lorg/apache/poi/java/awt/RenderingHints;->KEY_RENDERING:Lorg/apache/poi/java/awt/RenderingHints$Key;

    sget-object v15, Lorg/apache/poi/java/awt/RenderingHints;->VALUE_RENDER_QUALITY:Ljava/lang/Object;

    invoke-virtual {v6, v9, v15}, Lorg/apache/poi/java/awt/Graphics2D;->setRenderingHint(Lorg/apache/poi/java/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v9, Lorg/apache/poi/java/awt/RenderingHints;->KEY_INTERPOLATION:Lorg/apache/poi/java/awt/RenderingHints$Key;

    sget-object v15, Lorg/apache/poi/java/awt/RenderingHints;->VALUE_INTERPOLATION_BICUBIC:Ljava/lang/Object;

    invoke-virtual {v6, v9, v15}, Lorg/apache/poi/java/awt/Graphics2D;->setRenderingHint(Lorg/apache/poi/java/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v9, Lorg/apache/poi/java/awt/RenderingHints;->KEY_FRACTIONALMETRICS:Lorg/apache/poi/java/awt/RenderingHints$Key;

    sget-object v15, Lorg/apache/poi/java/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_ON:Ljava/lang/Object;

    invoke-virtual {v6, v9, v15}, Lorg/apache/poi/java/awt/Graphics2D;->setRenderingHint(Lorg/apache/poi/java/awt/RenderingHints$Key;Ljava/lang/Object;)V

    move-object v9, v5

    float-to-double v4, v1

    invoke-virtual {v6, v4, v5, v4, v5}, Lorg/apache/poi/java/awt/Graphics2D;->scale(DD)V

    invoke-interface {v14, v6}, Lorg/apache/poi/sl/usermodel/Sheet;->draw(Lorg/apache/poi/java/awt/Graphics2D;)V

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".pptx?"

    invoke-virtual {v4, v5, v11}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v11, "%1$s-%2$04d.%3$s"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v14, v16

    const/4 v4, 0x1

    aput-object v13, v14, v4

    const/4 v13, 0x2

    aput-object v9, v14, v13

    invoke-static {v5, v11, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v9, v11}, Lorg/apache/poi/javax/imageio/ImageIO;->write(Lorg/apache/poi/java/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/File;)Z

    goto :goto_6

    :cond_12
    const/4 v4, 0x1

    const/16 v16, 0x0

    :goto_6
    invoke-virtual {v6}, Lorg/apache/poi/java/awt/Graphics;->dispose()V

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/Image;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v11, v4

    move-object v5, v9

    move-object/from16 v6, v17

    move/from16 v9, v18

    move-object/from16 v4, p0

    goto/16 :goto_3

    :cond_13
    move/from16 v18, v9

    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    if-nez v18, :cond_14

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Done"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_14
    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    throw v0

    :cond_15
    :goto_7
    const-string v0, "Invalid format given"

    goto/16 :goto_2

    :cond_16
    :goto_8
    const-string v0, "File not specified or it doesn\'t exist"

    goto/16 :goto_2
.end method

.method private static slideIndexes(ILjava/lang/String;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    const-string v1, "-1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :goto_0
    if-ge v2, p0, :cond_7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_7

    aget-object v4, p1, v3

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    const/4 v4, 0x2

    if-eq v7, v4, :cond_1

    goto :goto_6

    :cond_1
    aget-object v4, v6, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4, p0}, Ljava/lang/Math;->min(II)I

    move-result v4

    aget-object v5, v6, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, p0}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_2
    if-ge v4, v5, :cond_6

    add-int/lit8 v6, v4, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    aget-object v6, v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v2

    goto :goto_3

    :cond_3
    move v7, v6

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, p0

    goto :goto_4

    :cond_4
    invoke-static {v6, p0}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_4
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_5
    if-ge v5, v4, :cond_6

    add-int/lit8 v6, v5, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    return-object v0
.end method

.method public static usage(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Usage: PPTX2PNG [options] <ppt or pptx file>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Options:\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "    -scale <float>   scale factor\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "    -slide <integer> 1-based index of a slide to render\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "    -format <type>   png,gif,jpg (,null for testing)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "    -outdir <dir>    output directory, defaults to origin of the ppt/pptx file"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "    -quiet           do not write to console (for normal processing)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
