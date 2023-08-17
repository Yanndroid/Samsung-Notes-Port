.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctpath2d73d2type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewArcTo()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;
.end method

.method public abstract addNewClose()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DClose;
.end method

.method public abstract addNewCubicBezTo()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;
.end method

.method public abstract addNewLnTo()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;
.end method

.method public abstract addNewMoveTo()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;
.end method

.method public abstract addNewQuadBezTo()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;
.end method

.method public abstract getArcToArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;
.end method

.method public abstract getArcToArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;
.end method

.method public abstract getArcToList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCloseArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DClose;
.end method

.method public abstract getCloseArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DClose;
.end method

.method public abstract getCloseList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DClose;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCubicBezToArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;
.end method

.method public abstract getCubicBezToArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;
.end method

.method public abstract getCubicBezToList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExtrusionOk()Z
.end method

.method public abstract getFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;
.end method

.method public abstract getH()J
.end method

.method public abstract getLnToArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;
.end method

.method public abstract getLnToArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;
.end method

.method public abstract getLnToList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMoveToArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;
.end method

.method public abstract getMoveToArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;
.end method

.method public abstract getMoveToList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getQuadBezToArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;
.end method

.method public abstract getQuadBezToArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;
.end method

.method public abstract getQuadBezToList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStroke()Z
.end method

.method public abstract getW()J
.end method

.method public abstract insertNewArcTo(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;
.end method

.method public abstract insertNewClose(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DClose;
.end method

.method public abstract insertNewCubicBezTo(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;
.end method

.method public abstract insertNewLnTo(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;
.end method

.method public abstract insertNewMoveTo(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;
.end method

.method public abstract insertNewQuadBezTo(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;
.end method

.method public abstract isSetExtrusionOk()Z
.end method

.method public abstract isSetFill()Z
.end method

.method public abstract isSetH()Z
.end method

.method public abstract isSetStroke()Z
.end method

.method public abstract isSetW()Z
.end method

.method public abstract removeArcTo(I)V
.end method

.method public abstract removeClose(I)V
.end method

.method public abstract removeCubicBezTo(I)V
.end method

.method public abstract removeLnTo(I)V
.end method

.method public abstract removeMoveTo(I)V
.end method

.method public abstract removeQuadBezTo(I)V
.end method

.method public abstract setArcToArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;)V
.end method

.method public abstract setArcToArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DArcTo;)V
.end method

.method public abstract setCloseArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DClose;)V
.end method

.method public abstract setCloseArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DClose;)V
.end method

.method public abstract setCubicBezToArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;)V
.end method

.method public abstract setCubicBezToArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DCubicBezierTo;)V
.end method

.method public abstract setExtrusionOk(Z)V
.end method

.method public abstract setFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode$Enum;)V
.end method

.method public abstract setH(J)V
.end method

.method public abstract setLnToArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;)V
.end method

.method public abstract setLnToArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DLineTo;)V
.end method

.method public abstract setMoveToArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;)V
.end method

.method public abstract setMoveToArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DMoveTo;)V
.end method

.method public abstract setQuadBezToArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;)V
.end method

.method public abstract setQuadBezToArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2DQuadBezierTo;)V
.end method

.method public abstract setStroke(Z)V
.end method

.method public abstract setW(J)V
.end method

.method public abstract sizeOfArcToArray()I
.end method

.method public abstract sizeOfCloseArray()I
.end method

.method public abstract sizeOfCubicBezToArray()I
.end method

.method public abstract sizeOfLnToArray()I
.end method

.method public abstract sizeOfMoveToArray()I
.end method

.method public abstract sizeOfQuadBezToArray()I
.end method

.method public abstract unsetExtrusionOk()V
.end method

.method public abstract unsetFill()V
.end method

.method public abstract unsetH()V
.end method

.method public abstract unsetStroke()V
.end method

.method public abstract unsetW()V
.end method

.method public abstract xgetExtrusionOk()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode;
.end method

.method public abstract xgetH()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;
.end method

.method public abstract xgetStroke()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetW()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;
.end method

.method public abstract xsetExtrusionOk(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetFill(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathFillMode;)V
.end method

.method public abstract xsetH(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;)V
.end method

.method public abstract xsetStroke(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetW(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;)V
.end method
