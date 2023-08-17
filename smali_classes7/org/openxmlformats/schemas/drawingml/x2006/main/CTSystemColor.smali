.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctsystemcolor4525type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTSystemColor;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAlpha()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;
.end method

.method public abstract addNewAlphaMod()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositivePercentage;
.end method

.method public abstract addNewAlphaOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFixedPercentage;
.end method

.method public abstract addNewBlue()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract addNewBlueMod()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract addNewBlueOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract addNewComp()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTComplementTransform;
.end method

.method public abstract addNewGamma()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGammaTransform;
.end method

.method public abstract addNewGray()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGrayscaleTransform;
.end method

.method public abstract addNewGreen()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract addNewGreenMod()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract addNewGreenOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract addNewHue()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedAngle;
.end method

.method public abstract addNewHueMod()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositivePercentage;
.end method

.method public abstract addNewHueOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAngle;
.end method

.method public abstract addNewInv()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTInverseTransform;
.end method

.method public abstract addNewInvGamma()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTInverseGammaTransform;
.end method

.method public abstract addNewLum()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract addNewLumMod()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract addNewLumOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract addNewRed()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract addNewRedMod()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract addNewRedOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract addNewSat()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract addNewSatMod()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract addNewSatOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract addNewShade()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;
.end method

.method public abstract addNewTint()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;
.end method

.method public abstract getAlphaArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;
.end method

.method public abstract getAlphaArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;
.end method

.method public abstract getAlphaList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAlphaModArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositivePercentage;
.end method

.method public abstract getAlphaModArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositivePercentage;
.end method

.method public abstract getAlphaModList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositivePercentage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAlphaOffArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFixedPercentage;
.end method

.method public abstract getAlphaOffArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFixedPercentage;
.end method

.method public abstract getAlphaOffList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFixedPercentage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBlueArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getBlueArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getBlueList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBlueModArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getBlueModArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getBlueModList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBlueOffArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getBlueOffArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getBlueOffList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCompArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTComplementTransform;
.end method

.method public abstract getCompArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTComplementTransform;
.end method

.method public abstract getCompList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTComplementTransform;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGammaArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGammaTransform;
.end method

.method public abstract getGammaArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGammaTransform;
.end method

.method public abstract getGammaList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGammaTransform;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGrayArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGrayscaleTransform;
.end method

.method public abstract getGrayArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGrayscaleTransform;
.end method

.method public abstract getGrayList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGrayscaleTransform;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGreenArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getGreenArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getGreenList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGreenModArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getGreenModArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getGreenModList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGreenOffArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getGreenOffArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getGreenOffList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHueArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedAngle;
.end method

.method public abstract getHueArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedAngle;
.end method

.method public abstract getHueList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedAngle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHueModArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositivePercentage;
.end method

.method public abstract getHueModArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositivePercentage;
.end method

.method public abstract getHueModList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositivePercentage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHueOffArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAngle;
.end method

.method public abstract getHueOffArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAngle;
.end method

.method public abstract getHueOffList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAngle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInvArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTInverseTransform;
.end method

.method public abstract getInvArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTInverseTransform;
.end method

.method public abstract getInvGammaArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTInverseGammaTransform;
.end method

.method public abstract getInvGammaArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTInverseGammaTransform;
.end method

.method public abstract getInvGammaList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTInverseGammaTransform;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInvList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTInverseTransform;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastClr()[B
.end method

.method public abstract getLumArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getLumArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getLumList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLumModArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getLumModArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getLumModList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLumOffArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getLumOffArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getLumOffList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRedArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getRedArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getRedList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRedModArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getRedModArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getRedModList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRedOffArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getRedOffArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getRedOffList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSatArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getSatArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getSatList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSatModArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getSatModArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getSatModList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSatOffArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getSatOffArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract getSatOffList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getShadeArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;
.end method

.method public abstract getShadeArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;
.end method

.method public abstract getShadeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTintArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;
.end method

.method public abstract getTintArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;
.end method

.method public abstract getTintList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;
.end method

.method public abstract insertNewAlpha(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;
.end method

.method public abstract insertNewAlphaMod(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositivePercentage;
.end method

.method public abstract insertNewAlphaOff(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFixedPercentage;
.end method

.method public abstract insertNewBlue(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract insertNewBlueMod(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract insertNewBlueOff(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract insertNewComp(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTComplementTransform;
.end method

.method public abstract insertNewGamma(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGammaTransform;
.end method

.method public abstract insertNewGray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGrayscaleTransform;
.end method

.method public abstract insertNewGreen(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract insertNewGreenMod(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract insertNewGreenOff(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract insertNewHue(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedAngle;
.end method

.method public abstract insertNewHueMod(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositivePercentage;
.end method

.method public abstract insertNewHueOff(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAngle;
.end method

.method public abstract insertNewInv(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTInverseTransform;
.end method

.method public abstract insertNewInvGamma(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTInverseGammaTransform;
.end method

.method public abstract insertNewLum(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract insertNewLumMod(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract insertNewLumOff(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract insertNewRed(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract insertNewRedMod(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract insertNewRedOff(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract insertNewSat(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract insertNewSatMod(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract insertNewSatOff(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;
.end method

.method public abstract insertNewShade(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;
.end method

.method public abstract insertNewTint(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;
.end method

.method public abstract isSetLastClr()Z
.end method

.method public abstract removeAlpha(I)V
.end method

.method public abstract removeAlphaMod(I)V
.end method

.method public abstract removeAlphaOff(I)V
.end method

.method public abstract removeBlue(I)V
.end method

.method public abstract removeBlueMod(I)V
.end method

.method public abstract removeBlueOff(I)V
.end method

.method public abstract removeComp(I)V
.end method

.method public abstract removeGamma(I)V
.end method

.method public abstract removeGray(I)V
.end method

.method public abstract removeGreen(I)V
.end method

.method public abstract removeGreenMod(I)V
.end method

.method public abstract removeGreenOff(I)V
.end method

.method public abstract removeHue(I)V
.end method

.method public abstract removeHueMod(I)V
.end method

.method public abstract removeHueOff(I)V
.end method

.method public abstract removeInv(I)V
.end method

.method public abstract removeInvGamma(I)V
.end method

.method public abstract removeLum(I)V
.end method

.method public abstract removeLumMod(I)V
.end method

.method public abstract removeLumOff(I)V
.end method

.method public abstract removeRed(I)V
.end method

.method public abstract removeRedMod(I)V
.end method

.method public abstract removeRedOff(I)V
.end method

.method public abstract removeSat(I)V
.end method

.method public abstract removeSatMod(I)V
.end method

.method public abstract removeSatOff(I)V
.end method

.method public abstract removeShade(I)V
.end method

.method public abstract removeTint(I)V
.end method

.method public abstract setAlphaArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;)V
.end method

.method public abstract setAlphaArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;)V
.end method

.method public abstract setAlphaModArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPositivePercentage;)V
.end method

.method public abstract setAlphaModArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositivePercentage;)V
.end method

.method public abstract setAlphaOffArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTFixedPercentage;)V
.end method

.method public abstract setAlphaOffArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTFixedPercentage;)V
.end method

.method public abstract setBlueArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setBlueArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setBlueModArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setBlueModArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setBlueOffArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setBlueOffArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setCompArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTComplementTransform;)V
.end method

.method public abstract setCompArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTComplementTransform;)V
.end method

.method public abstract setGammaArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTGammaTransform;)V
.end method

.method public abstract setGammaArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGammaTransform;)V
.end method

.method public abstract setGrayArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTGrayscaleTransform;)V
.end method

.method public abstract setGrayArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGrayscaleTransform;)V
.end method

.method public abstract setGreenArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setGreenArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setGreenModArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setGreenModArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setGreenOffArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setGreenOffArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setHueArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedAngle;)V
.end method

.method public abstract setHueArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedAngle;)V
.end method

.method public abstract setHueModArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPositivePercentage;)V
.end method

.method public abstract setHueModArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositivePercentage;)V
.end method

.method public abstract setHueOffArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTAngle;)V
.end method

.method public abstract setHueOffArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAngle;)V
.end method

.method public abstract setInvArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTInverseTransform;)V
.end method

.method public abstract setInvArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTInverseTransform;)V
.end method

.method public abstract setInvGammaArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTInverseGammaTransform;)V
.end method

.method public abstract setInvGammaArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTInverseGammaTransform;)V
.end method

.method public abstract setLastClr([B)V
.end method

.method public abstract setLumArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setLumArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setLumModArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setLumModArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setLumOffArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setLumOffArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setRedArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setRedArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setRedModArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setRedModArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setRedOffArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setRedOffArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setSatArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setSatArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setSatModArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setSatModArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setSatOffArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setSatOffArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPercentage;)V
.end method

.method public abstract setShadeArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;)V
.end method

.method public abstract setShadeArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;)V
.end method

.method public abstract setTintArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;)V
.end method

.method public abstract setTintArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveFixedPercentage;)V
.end method

.method public abstract setVal(Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal$Enum;)V
.end method

.method public abstract sizeOfAlphaArray()I
.end method

.method public abstract sizeOfAlphaModArray()I
.end method

.method public abstract sizeOfAlphaOffArray()I
.end method

.method public abstract sizeOfBlueArray()I
.end method

.method public abstract sizeOfBlueModArray()I
.end method

.method public abstract sizeOfBlueOffArray()I
.end method

.method public abstract sizeOfCompArray()I
.end method

.method public abstract sizeOfGammaArray()I
.end method

.method public abstract sizeOfGrayArray()I
.end method

.method public abstract sizeOfGreenArray()I
.end method

.method public abstract sizeOfGreenModArray()I
.end method

.method public abstract sizeOfGreenOffArray()I
.end method

.method public abstract sizeOfHueArray()I
.end method

.method public abstract sizeOfHueModArray()I
.end method

.method public abstract sizeOfHueOffArray()I
.end method

.method public abstract sizeOfInvArray()I
.end method

.method public abstract sizeOfInvGammaArray()I
.end method

.method public abstract sizeOfLumArray()I
.end method

.method public abstract sizeOfLumModArray()I
.end method

.method public abstract sizeOfLumOffArray()I
.end method

.method public abstract sizeOfRedArray()I
.end method

.method public abstract sizeOfRedModArray()I
.end method

.method public abstract sizeOfRedOffArray()I
.end method

.method public abstract sizeOfSatArray()I
.end method

.method public abstract sizeOfSatModArray()I
.end method

.method public abstract sizeOfSatOffArray()I
.end method

.method public abstract sizeOfShadeArray()I
.end method

.method public abstract sizeOfTintArray()I
.end method

.method public abstract unsetLastClr()V
.end method

.method public abstract xgetLastClr()Lorg/openxmlformats/schemas/drawingml/x2006/main/STHexBinary3;
.end method

.method public abstract xgetVal()Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;
.end method

.method public abstract xsetLastClr(Lorg/openxmlformats/schemas/drawingml/x2006/main/STHexBinary3;)V
.end method

.method public abstract xsetVal(Lorg/openxmlformats/schemas/drawingml/x2006/main/STSystemColorVal;)V
.end method
