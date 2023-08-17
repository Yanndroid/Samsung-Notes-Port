.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctoutershadoweffect7b5dtype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOuterShadowEffect;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewHslClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;
.end method

.method public abstract addNewPrstClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;
.end method

.method public abstract addNewSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;
.end method

.method public abstract addNewScrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;
.end method

.method public abstract addNewSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
.end method

.method public abstract addNewSysClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;
.end method

.method public abstract getAlgn()Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;
.end method

.method public abstract getBlurRad()J
.end method

.method public abstract getDir()I
.end method

.method public abstract getDist()J
.end method

.method public abstract getHslClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;
.end method

.method public abstract getKx()I
.end method

.method public abstract getKy()I
.end method

.method public abstract getPrstClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;
.end method

.method public abstract getRotWithShape()Z
.end method

.method public abstract getSchemeClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;
.end method

.method public abstract getScrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;
.end method

.method public abstract getSrgbClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;
.end method

.method public abstract getSx()I
.end method

.method public abstract getSy()I
.end method

.method public abstract getSysClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;
.end method

.method public abstract isSetAlgn()Z
.end method

.method public abstract isSetBlurRad()Z
.end method

.method public abstract isSetDir()Z
.end method

.method public abstract isSetDist()Z
.end method

.method public abstract isSetHslClr()Z
.end method

.method public abstract isSetKx()Z
.end method

.method public abstract isSetKy()Z
.end method

.method public abstract isSetPrstClr()Z
.end method

.method public abstract isSetRotWithShape()Z
.end method

.method public abstract isSetSchemeClr()Z
.end method

.method public abstract isSetScrgbClr()Z
.end method

.method public abstract isSetSrgbClr()Z
.end method

.method public abstract isSetSx()Z
.end method

.method public abstract isSetSy()Z
.end method

.method public abstract isSetSysClr()Z
.end method

.method public abstract setAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment$Enum;)V
.end method

.method public abstract setBlurRad(J)V
.end method

.method public abstract setDir(I)V
.end method

.method public abstract setDist(J)V
.end method

.method public abstract setHslClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHslColor;)V
.end method

.method public abstract setKx(I)V
.end method

.method public abstract setKy(I)V
.end method

.method public abstract setPrstClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetColor;)V
.end method

.method public abstract setRotWithShape(Z)V
.end method

.method public abstract setSchemeClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSchemeColor;)V
.end method

.method public abstract setScrgbClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTScRgbColor;)V
.end method

.method public abstract setSrgbClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSRgbColor;)V
.end method

.method public abstract setSx(I)V
.end method

.method public abstract setSy(I)V
.end method

.method public abstract setSysClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;)V
.end method

.method public abstract unsetAlgn()V
.end method

.method public abstract unsetBlurRad()V
.end method

.method public abstract unsetDir()V
.end method

.method public abstract unsetDist()V
.end method

.method public abstract unsetHslClr()V
.end method

.method public abstract unsetKx()V
.end method

.method public abstract unsetKy()V
.end method

.method public abstract unsetPrstClr()V
.end method

.method public abstract unsetRotWithShape()V
.end method

.method public abstract unsetSchemeClr()V
.end method

.method public abstract unsetScrgbClr()V
.end method

.method public abstract unsetSrgbClr()V
.end method

.method public abstract unsetSx()V
.end method

.method public abstract unsetSy()V
.end method

.method public abstract unsetSysClr()V
.end method

.method public abstract xgetAlgn()Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment;
.end method

.method public abstract xgetBlurRad()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;
.end method

.method public abstract xgetDir()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedAngle;
.end method

.method public abstract xgetDist()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;
.end method

.method public abstract xgetKx()Lorg/openxmlformats/schemas/drawingml/x2006/main/STFixedAngle;
.end method

.method public abstract xgetKy()Lorg/openxmlformats/schemas/drawingml/x2006/main/STFixedAngle;
.end method

.method public abstract xgetRotWithShape()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSx()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;
.end method

.method public abstract xgetSy()Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;
.end method

.method public abstract xsetAlgn(Lorg/openxmlformats/schemas/drawingml/x2006/main/STRectAlignment;)V
.end method

.method public abstract xsetBlurRad(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;)V
.end method

.method public abstract xsetDir(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveFixedAngle;)V
.end method

.method public abstract xsetDist(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPositiveCoordinate;)V
.end method

.method public abstract xsetKx(Lorg/openxmlformats/schemas/drawingml/x2006/main/STFixedAngle;)V
.end method

.method public abstract xsetKy(Lorg/openxmlformats/schemas/drawingml/x2006/main/STFixedAngle;)V
.end method

.method public abstract xsetRotWithShape(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSx(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)V
.end method

.method public abstract xsetSy(Lorg/openxmlformats/schemas/drawingml/x2006/main/STPercentage;)V
.end method
