.class public Lorg/apache/poi/sl/draw/DrawSimpleShape;
.super Lorg/apache/poi/sl/draw/DrawShape;
.source "SourceFile"


# static fields
.field private static final DECO_SIZE_POW:D = 1.5


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/usermodel/SimpleShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/usermodel/SimpleShape<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/poi/sl/draw/DrawShape;-><init>(Lorg/apache/poi/sl/usermodel/Shape;)V

    return-void
.end method

.method public static getCustomGeometry(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/CustomGeometry;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getCustomGeometry(Ljava/lang/String;Lorg/apache/poi/java/awt/Graphics2D;)Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    move-result-object p0

    return-object p0
.end method

.method public static getCustomGeometry(Ljava/lang/String;Lorg/apache/poi/java/awt/Graphics2D;)Lorg/apache/poi/sl/draw/geom/CustomGeometry;
    .locals 7

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/sl/draw/Drawable;->PRESET_GEOMETRY_CACHE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v0}, Lorg/apache/poi/java/awt/Graphics2D;->getRenderingHint(Lorg/apache/poi/java/awt/RenderingHints$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :goto_0
    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_1

    sget-object v1, Lorg/apache/poi/sl/draw/Drawable;->PRESET_GEOMETRY_CACHE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v1, v0}, Lorg/apache/poi/java/awt/Graphics2D;->setRenderingHint(Lorg/apache/poi/java/awt/RenderingHints$Key;Ljava/lang/Object;)V

    :cond_1
    const-string p1, "org.apache.poi.sl.draw.binding"

    const-class v1, Lorg/apache/poi/sl/draw/Drawable;

    const-string v2, "presetShapeDefinitions.xml"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/sl/draw/DrawSimpleShape$1;

    invoke-direct {v2}, Lorg/apache/poi/sl/draw/DrawSimpleShape$1;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/apache/poi/util/StaxHelper;->newXMLInputFactory()Lorg/apache/poi/javax/xml/stream/XMLInputFactory;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/poi/javax/xml/stream/XMLInputFactory;->createXMLEventReader(Ljava/io/InputStream;)Lorg/apache/poi/javax/xml/stream/XMLEventReader;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lorg/apache/poi/javax/xml/stream/XMLInputFactory;->createFilteredReader(Lorg/apache/poi/javax/xml/stream/XMLEventReader;Lorg/apache/poi/javax/xml/stream/EventFilter;)Lorg/apache/poi/javax/xml/stream/XMLEventReader;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/javax/xml/stream/XMLEventReader;->nextEvent()Lorg/apache/poi/javax/xml/stream/events/XMLEvent;

    invoke-static {p1}, Lorg/apache/poi/javax/xml/bind/JAXBContext;->newInstance(Ljava/lang/String;)Lorg/apache/poi/javax/xml/bind/JAXBContext;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/javax/xml/bind/JAXBContext;->createUnmarshaller()Lorg/apache/poi/javax/xml/bind/Unmarshaller;

    move-result-object p1

    :goto_1
    invoke-interface {v2}, Lorg/apache/poi/javax/xml/stream/XMLEventReader;->peek()Lorg/apache/poi/javax/xml/stream/events/XMLEvent;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Lorg/apache/poi/javax/xml/stream/XMLEventReader;->peek()Lorg/apache/poi/javax/xml/stream/events/XMLEvent;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/javax/xml/stream/events/StartElement;

    invoke-interface {v3}, Lorg/apache/poi/javax/xml/stream/events/StartElement;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    const-class v5, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;

    invoke-interface {p1, v4, v5}, Lorg/apache/poi/javax/xml/bind/Unmarshaller;->unmarshal(Lorg/apache/poi/javax/xml/stream/XMLEventReader;Ljava/lang/Class;)Lorg/apache/poi/javax/xml/bind/JAXBElement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/javax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;

    new-instance v6, Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    invoke-direct {v6, v5}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;-><init>(Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;)V

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Lorg/apache/poi/javax/xml/stream/XMLEventReader;->close()V

    invoke-interface {v4}, Lorg/apache/poi/javax/xml/stream/XMLEventReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unable to load preset geometries."

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :cond_3
    :goto_3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    return-object p0
.end method


# virtual methods
.method public computeOutlines(Lorg/apache/poi/java/awt/Graphics2D;)Ljava/util/Collection;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/java/awt/Graphics2D;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/apache/poi/sl/draw/geom/Outline;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getGeometry()Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Lorg/apache/poi/java/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/poi/sl/draw/geom/CustomGeometry;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-virtual {v5}, Lorg/apache/poi/sl/draw/geom/Path;->getW()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-virtual {v5}, Lorg/apache/poi/sl/draw/geom/Path;->getH()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v10

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    cmpl-double v14, v6, v12

    if-nez v14, :cond_1

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v6

    int-to-double v6, v6

    move-wide/from16 v21, v6

    move-wide v14, v10

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v14

    div-double/2addr v14, v6

    move-wide/from16 v21, v6

    :goto_1
    cmpl-double v6, v8, v12

    if-nez v6, :cond_2

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result v6

    int-to-double v8, v6

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v6

    div-double v10, v6, v8

    :goto_2
    move-wide/from16 v23, v8

    new-instance v6, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v16, v6

    invoke-direct/range {v16 .. v24}, Lorg/apache/poi/java/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    new-instance v7, Lorg/apache/poi/sl/draw/geom/Context;

    invoke-direct {v7, v2, v6, v0}, Lorg/apache/poi/sl/draw/geom/Context;-><init>(Lorg/apache/poi/sl/draw/geom/CustomGeometry;Lorg/apache/poi/java/awt/geom/Rectangle2D;Lorg/apache/poi/sl/draw/geom/IAdjustableShape;)V

    invoke-virtual {v5, v7}, Lorg/apache/poi/sl/draw/geom/Path;->getPath(Lorg/apache/poi/sl/draw/geom/Context;)Lorg/apache/poi/java/awt/geom/Path2D$Double;

    move-result-object v6

    new-instance v7, Lorg/apache/poi/java/awt/geom/AffineTransform;

    invoke-direct {v7}, Lorg/apache/poi/java/awt/geom/AffineTransform;-><init>()V

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v8

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v12

    invoke-virtual {v7, v8, v9, v12, v13}, Lorg/apache/poi/java/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {v7, v14, v15, v10, v11}, Lorg/apache/poi/java/awt/geom/AffineTransform;->scale(DD)V

    invoke-virtual {v7, v6}, Lorg/apache/poi/java/awt/geom/AffineTransform;->createTransformedShape(Lorg/apache/poi/java/awt/Shape;)Lorg/apache/poi/java/awt/Shape;

    move-result-object v6

    new-instance v7, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-direct {v7, v6, v5}, Lorg/apache/poi/sl/draw/geom/Outline;-><init>(Lorg/apache/poi/java/awt/Shape;Lorg/apache/poi/sl/draw/geom/Path;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public draw(Lorg/apache/poi/java/awt/Graphics2D;)V
    .locals 8

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Lorg/apache/poi/java/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/DrawFactory;->getPaint(Lorg/apache/poi/sl/usermodel/PlaceableShape;)Lorg/apache/poi/sl/draw/DrawPaint;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getFillStyle()Lorg/apache/poi/sl/usermodel/FillStyle;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/FillStyle;->getPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Lorg/apache/poi/java/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;)Lorg/apache/poi/java/awt/Paint;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getStrokeStyle()Lorg/apache/poi/sl/usermodel/StrokeStyle;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/StrokeStyle;->getPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Lorg/apache/poi/java/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;)Lorg/apache/poi/java/awt/Paint;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getStroke()Lorg/apache/poi/java/awt/BasicStroke;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/poi/java/awt/Graphics2D;->setStroke(Lorg/apache/poi/java/awt/Stroke;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->computeOutlines(Lorg/apache/poi/java/awt/Graphics2D;)Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {p0, p1, v4, v1, v2}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->drawShadow(Lorg/apache/poi/java/awt/Graphics2D;Ljava/util/Collection;Lorg/apache/poi/java/awt/Paint;Lorg/apache/poi/java/awt/Paint;)V

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-virtual {v5}, Lorg/apache/poi/sl/draw/geom/Outline;->getPath()Lorg/apache/poi/sl/draw/geom/Path;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/sl/draw/geom/Path;->isFilled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getFillStyle()Lorg/apache/poi/sl/usermodel/FillStyle;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/poi/sl/usermodel/FillStyle;->getPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/poi/sl/draw/geom/Outline;->getPath()Lorg/apache/poi/sl/draw/geom/Path;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/sl/draw/geom/Path;->getFill()Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;

    move-result-object v7

    invoke-virtual {v0, p1, v6, v7}, Lorg/apache/poi/sl/draw/DrawPaint;->getPaint(Lorg/apache/poi/java/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PaintStyle;Lorg/apache/poi/sl/usermodel/PaintStyle$PaintModifier;)Lorg/apache/poi/java/awt/Paint;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p1, v6}, Lorg/apache/poi/java/awt/Graphics2D;->setPaint(Lorg/apache/poi/java/awt/Paint;)V

    invoke-virtual {v5}, Lorg/apache/poi/sl/draw/geom/Outline;->getOutline()Lorg/apache/poi/java/awt/Shape;

    move-result-object v5

    sget-object v6, Lorg/apache/poi/sl/draw/Drawable;->GRADIENT_SHAPE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v6, v5}, Lorg/apache/poi/java/awt/Graphics2D;->setRenderingHint(Lorg/apache/poi/java/awt/RenderingHints$Key;Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Lorg/apache/poi/java/awt/Graphics2D;->fill(Lorg/apache/poi/java/awt/Shape;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/DrawShape;->drawContent(Lorg/apache/poi/java/awt/Graphics2D;)V

    if-eqz v2, :cond_3

    invoke-virtual {p1, v2}, Lorg/apache/poi/java/awt/Graphics2D;->setPaint(Lorg/apache/poi/java/awt/Paint;)V

    invoke-virtual {p1, v3}, Lorg/apache/poi/java/awt/Graphics2D;->setStroke(Lorg/apache/poi/java/awt/Stroke;)V

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-virtual {v1}, Lorg/apache/poi/sl/draw/geom/Outline;->getPath()Lorg/apache/poi/sl/draw/geom/Path;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/sl/draw/geom/Path;->isStroked()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lorg/apache/poi/sl/draw/geom/Outline;->getOutline()Lorg/apache/poi/java/awt/Shape;

    move-result-object v1

    sget-object v4, Lorg/apache/poi/sl/draw/Drawable;->GRADIENT_SHAPE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v4, v1}, Lorg/apache/poi/java/awt/Graphics2D;->setRenderingHint(Lorg/apache/poi/java/awt/RenderingHints$Key;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lorg/apache/poi/java/awt/Graphics2D;->draw(Lorg/apache/poi/java/awt/Shape;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, v2, v3}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->drawDecoration(Lorg/apache/poi/java/awt/Graphics2D;Lorg/apache/poi/java/awt/Paint;Lorg/apache/poi/java/awt/BasicStroke;)V

    return-void
.end method

.method public drawDecoration(Lorg/apache/poi/java/awt/Graphics2D;Lorg/apache/poi/java/awt/Paint;Lorg/apache/poi/java/awt/BasicStroke;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lorg/apache/poi/java/awt/Graphics2D;->setPaint(Lorg/apache/poi/java/awt/Paint;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getLineDecoration()Lorg/apache/poi/sl/usermodel/LineDecoration;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getHeadDecoration(Lorg/apache/poi/java/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/LineDecoration;Lorg/apache/poi/java/awt/BasicStroke;)Lorg/apache/poi/sl/draw/geom/Outline;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getTailDecoration(Lorg/apache/poi/java/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/LineDecoration;Lorg/apache/poi/java/awt/BasicStroke;)Lorg/apache/poi/sl/draw/geom/Outline;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-virtual {p3}, Lorg/apache/poi/sl/draw/geom/Outline;->getOutline()Lorg/apache/poi/java/awt/Shape;

    move-result-object v0

    invoke-virtual {p3}, Lorg/apache/poi/sl/draw/geom/Outline;->getPath()Lorg/apache/poi/sl/draw/geom/Path;

    move-result-object p3

    sget-object v1, Lorg/apache/poi/sl/draw/Drawable;->GRADIENT_SHAPE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v1, v0}, Lorg/apache/poi/java/awt/Graphics2D;->setRenderingHint(Lorg/apache/poi/java/awt/RenderingHints$Key;Ljava/lang/Object;)V

    invoke-virtual {p3}, Lorg/apache/poi/sl/draw/geom/Path;->isFilled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Lorg/apache/poi/java/awt/Graphics2D;->fill(Lorg/apache/poi/java/awt/Shape;)V

    :cond_4
    invoke-virtual {p3}, Lorg/apache/poi/sl/draw/geom/Path;->isStroked()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p1, v0}, Lorg/apache/poi/java/awt/Graphics2D;->draw(Lorg/apache/poi/java/awt/Shape;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public drawShadow(Lorg/apache/poi/java/awt/Graphics2D;Ljava/util/Collection;Lorg/apache/poi/java/awt/Paint;Lorg/apache/poi/java/awt/Paint;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/java/awt/Graphics2D;",
            "Ljava/util/Collection<",
            "Lorg/apache/poi/sl/draw/geom/Outline;",
            ">;",
            "Lorg/apache/poi/java/awt/Paint;",
            "Lorg/apache/poi/java/awt/Paint;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getShadow()Lorg/apache/poi/sl/usermodel/Shadow;

    move-result-object v0

    if-eqz v0, :cond_5

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/Shadow;->getFillStyle()Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Lorg/apache/poi/java/awt/Color;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getRotation()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/poi/sl/usermodel/PlaceableShape;->getFlipVertical()Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide v4, 0x4066800000000000L    # 180.0

    add-double/2addr v2, v4

    :cond_1
    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/Shadow;->getAngle()D

    move-result-wide v4

    sub-double/2addr v4, v2

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/Shadow;->getDistance()D

    move-result-wide v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p1, v6, v7, v2, v3}, Lorg/apache/poi/java/awt/Graphics2D;->translate(DD)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/geom/Outline;->getOutline()Lorg/apache/poi/java/awt/Shape;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/geom/Outline;->getPath()Lorg/apache/poi/sl/draw/geom/Path;

    move-result-object v0

    sget-object v5, Lorg/apache/poi/sl/draw/Drawable;->GRADIENT_SHAPE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    invoke-virtual {p1, v5, v4}, Lorg/apache/poi/java/awt/Graphics2D;->setRenderingHint(Lorg/apache/poi/java/awt/RenderingHints$Key;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lorg/apache/poi/java/awt/Graphics2D;->setPaint(Lorg/apache/poi/java/awt/Paint;)V

    if-eqz p3, :cond_3

    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/geom/Path;->isFilled()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1, v4}, Lorg/apache/poi/java/awt/Graphics2D;->fill(Lorg/apache/poi/java/awt/Shape;)V

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/geom/Path;->isStroked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v4}, Lorg/apache/poi/java/awt/Graphics2D;->draw(Lorg/apache/poi/java/awt/Shape;)V

    goto :goto_0

    :cond_4
    neg-double p2, v6

    neg-double v0, v2

    invoke-virtual {p1, p2, p3, v0, v1}, Lorg/apache/poi/java/awt/Graphics2D;->translate(DD)V

    :cond_5
    :goto_1
    return-void
.end method

.method public getHeadDecoration(Lorg/apache/poi/java/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/LineDecoration;Lorg/apache/poi/java/awt/BasicStroke;)Lorg/apache/poi/sl/draw/geom/Outline;
    .locals 29

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    if-nez p3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface/range {p2 .. p2}, Lorg/apache/poi/sl/usermodel/LineDecoration;->getHeadLength()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    :cond_1
    invoke-interface/range {p2 .. p2}, Lorg/apache/poi/sl/usermodel/LineDecoration;->getHeadWidth()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v2, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    :cond_2
    const-wide/high16 v3, 0x4004000000000000L    # 2.5

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/java/awt/BasicStroke;->getLineWidth()F

    move-result v5

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v5

    move-object/from16 v6, p1

    invoke-static {v6, v5}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Lorg/apache/poi/java/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v6

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v8

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v10

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v12

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v13

    new-instance v5, Lorg/apache/poi/java/awt/geom/AffineTransform;

    invoke-direct {v5}, Lorg/apache/poi/java/awt/geom/AffineTransform;-><init>()V

    invoke-virtual {v2}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->ordinal()I

    move-result v2

    int-to-double v10, v2

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v15

    move-wide/from16 v17, v13

    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    invoke-virtual {v1}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->ordinal()I

    move-result v1

    int-to-double v1, v1

    add-double/2addr v1, v15

    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-interface/range {p2 .. p2}, Lorg/apache/poi/sl/usermodel/LineDecoration;->getHeadShape()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    move-result-object v12

    if-nez v12, :cond_3

    return-object v0

    :cond_3
    sget-object v13, Lorg/apache/poi/sl/draw/DrawSimpleShape$2;->$SwitchMap$org$apache$poi$sl$usermodel$LineDecoration$DecorationShape:[I

    invoke-virtual {v12}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->ordinal()I

    move-result v12

    aget v12, v13, v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_6

    const/4 v0, 0x2

    if-eq v12, v0, :cond_5

    const/4 v0, 0x3

    if-eq v12, v0, :cond_5

    const/4 v0, 0x4

    if-eq v12, v0, :cond_4

    const/4 v0, 0x0

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_4
    new-instance v0, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/Path;-><init>()V

    new-instance v12, Lorg/apache/poi/java/awt/geom/Path2D$Double;

    invoke-direct {v12}, Lorg/apache/poi/java/awt/geom/Path2D$Double;-><init>()V

    mul-double/2addr v1, v3

    neg-double v13, v3

    mul-double/2addr v13, v10

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v13, v13, v19

    invoke-virtual {v12, v1, v2, v13, v14}, Lorg/apache/poi/java/awt/geom/Path2D$Double;->moveTo(DD)V

    const-wide/16 v13, 0x0

    invoke-virtual {v12, v13, v14, v13, v14}, Lorg/apache/poi/java/awt/geom/Path2D$Double;->lineTo(DD)V

    mul-double/2addr v3, v10

    div-double v3, v3, v19

    invoke-virtual {v12, v1, v2, v3, v4}, Lorg/apache/poi/java/awt/geom/Path2D$Double;->lineTo(DD)V

    invoke-virtual {v12}, Lorg/apache/poi/java/awt/geom/Path2D;->closePath()V

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/apache/poi/java/awt/geom/AffineTransform;->translate(DD)V

    move-wide/from16 v13, v17

    goto :goto_0

    :cond_5
    move-wide/from16 v13, v17

    new-instance v0, Lorg/apache/poi/sl/draw/geom/Path;

    const/4 v12, 0x0

    const/4 v15, 0x1

    invoke-direct {v0, v12, v15}, Lorg/apache/poi/sl/draw/geom/Path;-><init>(ZZ)V

    new-instance v12, Lorg/apache/poi/java/awt/geom/Path2D$Double;

    invoke-direct {v12}, Lorg/apache/poi/java/awt/geom/Path2D$Double;-><init>()V

    mul-double/2addr v1, v3

    move-wide v15, v13

    neg-double v13, v3

    mul-double/2addr v13, v10

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v13, v13, v19

    invoke-virtual {v12, v1, v2, v13, v14}, Lorg/apache/poi/java/awt/geom/Path2D$Double;->moveTo(DD)V

    const-wide/16 v13, 0x0

    invoke-virtual {v12, v13, v14, v13, v14}, Lorg/apache/poi/java/awt/geom/Path2D$Double;->lineTo(DD)V

    mul-double/2addr v3, v10

    div-double v3, v3, v19

    invoke-virtual {v12, v1, v2, v3, v4}, Lorg/apache/poi/java/awt/geom/Path2D$Double;->lineTo(DD)V

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/apache/poi/java/awt/geom/AffineTransform;->translate(DD)V

    move-wide v13, v15

    :goto_0
    invoke-virtual {v5, v13, v14}, Lorg/apache/poi/java/awt/geom/AffineTransform;->rotate(D)V

    goto :goto_1

    :cond_6
    move-wide/from16 v13, v17

    new-instance v0, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/Path;-><init>()V

    new-instance v28, Lorg/apache/poi/java/awt/geom/Ellipse2D$Double;

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    mul-double v24, v3, v1

    mul-double v26, v3, v10

    move-object/from16 v19, v28

    invoke-direct/range {v19 .. v27}, Lorg/apache/poi/java/awt/geom/Ellipse2D$Double;-><init>(DDDD)V

    invoke-interface/range {v28 .. v28}, Lorg/apache/poi/java/awt/Shape;->getBounds2D()Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v10

    sub-double/2addr v6, v2

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    div-double/2addr v2, v10

    sub-double/2addr v8, v2

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/apache/poi/java/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v6

    div-double/2addr v6, v10

    add-double v15, v2, v6

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v2

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v6

    div-double/2addr v6, v10

    add-double v17, v2, v6

    move-object v12, v5

    invoke-virtual/range {v12 .. v18}, Lorg/apache/poi/java/awt/geom/AffineTransform;->rotate(DDD)V

    move-object/from16 v12, v28

    :goto_1
    if-eqz v12, :cond_7

    invoke-virtual {v5, v12}, Lorg/apache/poi/java/awt/geom/AffineTransform;->createTransformedShape(Lorg/apache/poi/java/awt/Shape;)Lorg/apache/poi/java/awt/Shape;

    move-result-object v12

    :cond_7
    if-nez v12, :cond_8

    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    new-instance v1, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-direct {v1, v12, v0}, Lorg/apache/poi/sl/draw/geom/Outline;-><init>(Lorg/apache/poi/java/awt/Shape;Lorg/apache/poi/sl/draw/geom/Path;)V

    move-object v0, v1

    :cond_9
    :goto_2
    return-object v0
.end method

.method public bridge synthetic getShape()Lorg/apache/poi/sl/usermodel/Shape;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v0

    return-object v0
.end method

.method public getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/SimpleShape<",
            "**>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawShape;->shape:Lorg/apache/poi/sl/usermodel/Shape;

    check-cast v0, Lorg/apache/poi/sl/usermodel/SimpleShape;

    return-object v0
.end method

.method public getStroke()Lorg/apache/poi/java/awt/BasicStroke;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/sl/usermodel/SimpleShape;->getStrokeStyle()Lorg/apache/poi/sl/usermodel/StrokeStyle;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/sl/draw/DrawShape;->getStroke(Lorg/apache/poi/sl/usermodel/StrokeStyle;)Lorg/apache/poi/java/awt/BasicStroke;

    move-result-object v0

    return-object v0
.end method

.method public getTailDecoration(Lorg/apache/poi/java/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/LineDecoration;Lorg/apache/poi/java/awt/BasicStroke;)Lorg/apache/poi/sl/draw/geom/Outline;
    .locals 29

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    if-nez p3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface/range {p2 .. p2}, Lorg/apache/poi/sl/usermodel/LineDecoration;->getTailLength()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    :cond_1
    invoke-interface/range {p2 .. p2}, Lorg/apache/poi/sl/usermodel/LineDecoration;->getTailWidth()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v2, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->MEDIUM:Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    :cond_2
    const-wide/high16 v3, 0x4004000000000000L    # 2.5

    invoke-virtual/range {p3 .. p3}, Lorg/apache/poi/java/awt/BasicStroke;->getLineWidth()F

    move-result v5

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/sl/draw/DrawSimpleShape;->getShape()Lorg/apache/poi/sl/usermodel/SimpleShape;

    move-result-object v5

    move-object/from16 v6, p1

    invoke-static {v6, v5}, Lorg/apache/poi/sl/draw/DrawShape;->getAnchor(Lorg/apache/poi/java/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/PlaceableShape;)Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v6

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v8

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v10

    invoke-virtual {v5}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v12

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v13

    new-instance v5, Lorg/apache/poi/java/awt/geom/AffineTransform;

    invoke-direct {v5}, Lorg/apache/poi/java/awt/geom/AffineTransform;-><init>()V

    invoke-virtual {v2}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->ordinal()I

    move-result v2

    int-to-double v10, v2

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v15

    move-wide/from16 v17, v13

    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    invoke-virtual {v1}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->ordinal()I

    move-result v1

    int-to-double v1, v1

    add-double/2addr v1, v15

    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-interface/range {p2 .. p2}, Lorg/apache/poi/sl/usermodel/LineDecoration;->getTailShape()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    move-result-object v12

    if-nez v12, :cond_3

    return-object v0

    :cond_3
    sget-object v13, Lorg/apache/poi/sl/draw/DrawSimpleShape$2;->$SwitchMap$org$apache$poi$sl$usermodel$LineDecoration$DecorationShape:[I

    invoke-virtual {v12}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->ordinal()I

    move-result v12

    aget v12, v13, v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_6

    const/4 v0, 0x2

    if-eq v12, v0, :cond_5

    const/4 v0, 0x3

    if-eq v12, v0, :cond_5

    const/4 v0, 0x4

    if-eq v12, v0, :cond_4

    const/4 v0, 0x0

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_4
    new-instance v0, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/Path;-><init>()V

    new-instance v12, Lorg/apache/poi/java/awt/geom/Path2D$Double;

    invoke-direct {v12}, Lorg/apache/poi/java/awt/geom/Path2D$Double;-><init>()V

    neg-double v13, v3

    mul-double/2addr v1, v13

    mul-double/2addr v13, v10

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v13, v13, v19

    invoke-virtual {v12, v1, v2, v13, v14}, Lorg/apache/poi/java/awt/geom/Path2D$Double;->moveTo(DD)V

    const-wide/16 v13, 0x0

    invoke-virtual {v12, v13, v14, v13, v14}, Lorg/apache/poi/java/awt/geom/Path2D$Double;->lineTo(DD)V

    mul-double/2addr v3, v10

    div-double v3, v3, v19

    invoke-virtual {v12, v1, v2, v3, v4}, Lorg/apache/poi/java/awt/geom/Path2D$Double;->lineTo(DD)V

    invoke-virtual {v12}, Lorg/apache/poi/java/awt/geom/Path2D;->closePath()V

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/apache/poi/java/awt/geom/AffineTransform;->translate(DD)V

    move-wide/from16 v13, v17

    goto :goto_0

    :cond_5
    move-wide/from16 v13, v17

    new-instance v0, Lorg/apache/poi/sl/draw/geom/Path;

    const/4 v12, 0x0

    const/4 v15, 0x1

    invoke-direct {v0, v12, v15}, Lorg/apache/poi/sl/draw/geom/Path;-><init>(ZZ)V

    new-instance v12, Lorg/apache/poi/java/awt/geom/Path2D$Double;

    invoke-direct {v12}, Lorg/apache/poi/java/awt/geom/Path2D$Double;-><init>()V

    move-wide v15, v13

    neg-double v13, v3

    mul-double/2addr v1, v13

    mul-double/2addr v13, v10

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    div-double v13, v13, v19

    invoke-virtual {v12, v1, v2, v13, v14}, Lorg/apache/poi/java/awt/geom/Path2D$Double;->moveTo(DD)V

    const-wide/16 v13, 0x0

    invoke-virtual {v12, v13, v14, v13, v14}, Lorg/apache/poi/java/awt/geom/Path2D$Double;->lineTo(DD)V

    mul-double/2addr v3, v10

    div-double v3, v3, v19

    invoke-virtual {v12, v1, v2, v3, v4}, Lorg/apache/poi/java/awt/geom/Path2D$Double;->lineTo(DD)V

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/apache/poi/java/awt/geom/AffineTransform;->translate(DD)V

    move-wide v13, v15

    :goto_0
    invoke-virtual {v5, v13, v14}, Lorg/apache/poi/java/awt/geom/AffineTransform;->rotate(D)V

    goto :goto_1

    :cond_6
    move-wide/from16 v13, v17

    new-instance v0, Lorg/apache/poi/sl/draw/geom/Path;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/geom/Path;-><init>()V

    new-instance v28, Lorg/apache/poi/java/awt/geom/Ellipse2D$Double;

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    mul-double v24, v3, v1

    mul-double v26, v3, v10

    move-object/from16 v19, v28

    invoke-direct/range {v19 .. v27}, Lorg/apache/poi/java/awt/geom/Ellipse2D$Double;-><init>(DDDD)V

    invoke-interface/range {v28 .. v28}, Lorg/apache/poi/java/awt/Shape;->getBounds2D()Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v10

    sub-double/2addr v6, v2

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    div-double/2addr v2, v10

    sub-double/2addr v8, v2

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/apache/poi/java/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v6

    div-double/2addr v6, v10

    add-double v15, v2, v6

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getY()D

    move-result-wide v2

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v6

    div-double/2addr v6, v10

    add-double v17, v2, v6

    move-object v12, v5

    invoke-virtual/range {v12 .. v18}, Lorg/apache/poi/java/awt/geom/AffineTransform;->rotate(DDD)V

    move-object/from16 v12, v28

    :goto_1
    if-eqz v12, :cond_7

    invoke-virtual {v5, v12}, Lorg/apache/poi/java/awt/geom/AffineTransform;->createTransformedShape(Lorg/apache/poi/java/awt/Shape;)Lorg/apache/poi/java/awt/Shape;

    move-result-object v12

    :cond_7
    if-nez v12, :cond_8

    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    new-instance v1, Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-direct {v1, v12, v0}, Lorg/apache/poi/sl/draw/geom/Outline;-><init>(Lorg/apache/poi/java/awt/Shape;Lorg/apache/poi/sl/draw/geom/Path;)V

    move-object v0, v1

    :cond_9
    :goto_2
    return-object v0
.end method
