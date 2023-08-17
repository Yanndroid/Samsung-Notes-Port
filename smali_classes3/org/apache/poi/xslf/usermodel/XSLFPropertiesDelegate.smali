.class Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TextCharDelegate;,
        Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$LineStyleDelegate;,
        Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;,
        Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;,
        Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$StyleMatrixDelegate;,
        Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;,
        Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;,
        Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;,
        Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFEffectProperties;,
        Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;,
        Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDelegate(Ljava/lang/Class;Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/apache/xmlbeans/XmlObject;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    invoke-direct {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$ShapeDelegate;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;)V

    goto/16 :goto_1

    :cond_1
    instance-of v1, p1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;

    check-cast p1, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;

    invoke-direct {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$BackgroundDelegate;-><init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackgroundProperties;)V

    goto/16 :goto_1

    :cond_2
    instance-of v1, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    if-eqz v1, :cond_3

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$StyleMatrixDelegate;

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;

    invoke-direct {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$StyleMatrixDelegate;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStyleMatrixReference;)V

    goto/16 :goto_1

    :cond_3
    instance-of v1, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    if-eqz v1, :cond_4

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;

    invoke-direct {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TableCellDelegate;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCellProperties;)V

    goto :goto_1

    :cond_4
    instance-of v1, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNoFillProperties;

    if-nez v1, :cond_9

    instance-of v1, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSolidColorFillProperties;

    if-nez v1, :cond_9

    instance-of v1, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGradientFillProperties;

    if-nez v1, :cond_9

    instance-of v1, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    if-nez v1, :cond_9

    instance-of v1, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPatternFillProperties;

    if-nez v1, :cond_9

    instance-of v1, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGroupFillProperties;

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    instance-of v1, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    if-eqz v1, :cond_6

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;

    invoke-direct {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillDelegate;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFillProperties;)V

    goto :goto_1

    :cond_6
    instance-of v1, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    if-eqz v1, :cond_7

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$LineStyleDelegate;

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;

    invoke-direct {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$LineStyleDelegate;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTLineProperties;)V

    goto :goto_1

    :cond_7
    instance-of v1, p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    if-eqz v1, :cond_8

    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TextCharDelegate;

    check-cast p1, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;

    invoke-direct {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$TextCharDelegate;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V

    goto :goto_1

    :cond_8
    sget-object p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is an unknown properties type"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {p0, v1, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-object v0

    :cond_9
    :goto_0
    new-instance v1, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;

    invoke-direct {v1, p1}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$FillPartDelegate;-><init>(Lorg/apache/xmlbeans/XmlObject;)V

    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    return-object v1

    :cond_a
    sget-object p1, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v4, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t implement "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-virtual {p1, v4, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getEffectDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFEffectProperties;
    .locals 1

    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFEffectProperties;

    invoke-static {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getDelegate(Ljava/lang/Class;Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFEffectProperties;

    return-object p0
.end method

.method public static getFillDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;
    .locals 1

    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    invoke-static {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getDelegate(Ljava/lang/Class;Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFFillProperties;

    return-object p0
.end method

.method public static getGeometryDelegate(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;
    .locals 1

    const-class v0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;

    invoke-static {v0, p0}, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate;->getDelegate(Ljava/lang/Class;Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xslf/usermodel/XSLFPropertiesDelegate$XSLFGeometryProperties;

    return-object p0
.end method
