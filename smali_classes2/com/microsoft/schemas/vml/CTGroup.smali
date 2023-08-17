.class public interface abstract Lcom/microsoft/schemas/vml/CTGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/vml/CTGroup$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/microsoft/schemas/vml/CTGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctgroup2b13type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lcom/microsoft/schemas/vml/CTGroup;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAnchorlock()Lcom/microsoft/schemas/office/word/CTAnchorLock;
.end method

.method public abstract addNewArc()Lcom/microsoft/schemas/vml/CTArc;
.end method

.method public abstract addNewBorderbottom()Lcom/microsoft/schemas/office/word/CTBorder;
.end method

.method public abstract addNewBorderleft()Lcom/microsoft/schemas/office/word/CTBorder;
.end method

.method public abstract addNewBorderright()Lcom/microsoft/schemas/office/word/CTBorder;
.end method

.method public abstract addNewBordertop()Lcom/microsoft/schemas/office/word/CTBorder;
.end method

.method public abstract addNewCallout()Lcom/microsoft/schemas/office/office/CTCallout;
.end method

.method public abstract addNewClientData()Lcom/microsoft/schemas/office/excel/CTClientData;
.end method

.method public abstract addNewClippath()Lcom/microsoft/schemas/office/office/CTClipPath;
.end method

.method public abstract addNewCurve()Lcom/microsoft/schemas/vml/CTCurve;
.end method

.method public abstract addNewDiagram()Lcom/microsoft/schemas/office/office/CTDiagram;
.end method

.method public abstract addNewExtrusion()Lcom/microsoft/schemas/office/office/CTExtrusion;
.end method

.method public abstract addNewFill()Lcom/microsoft/schemas/vml/CTFill;
.end method

.method public abstract addNewFormulas()Lcom/microsoft/schemas/vml/CTFormulas;
.end method

.method public abstract addNewGroup()Lcom/microsoft/schemas/vml/CTGroup;
.end method

.method public abstract addNewHandles()Lcom/microsoft/schemas/vml/CTHandles;
.end method

.method public abstract addNewImage()Lcom/microsoft/schemas/vml/CTImage;
.end method

.method public abstract addNewImagedata()Lcom/microsoft/schemas/vml/CTImageData;
.end method

.method public abstract addNewLine()Lcom/microsoft/schemas/vml/CTLine;
.end method

.method public abstract addNewLock()Lcom/microsoft/schemas/office/office/CTLock;
.end method

.method public abstract addNewOval()Lcom/microsoft/schemas/vml/CTOval;
.end method

.method public abstract addNewPath()Lcom/microsoft/schemas/vml/CTPath;
.end method

.method public abstract addNewPolyline()Lcom/microsoft/schemas/vml/CTPolyLine;
.end method

.method public abstract addNewRect()Lcom/microsoft/schemas/vml/CTRect;
.end method

.method public abstract addNewRoundrect()Lcom/microsoft/schemas/vml/CTRoundRect;
.end method

.method public abstract addNewShadow()Lcom/microsoft/schemas/vml/CTShadow;
.end method

.method public abstract addNewShape()Lcom/microsoft/schemas/vml/CTShape;
.end method

.method public abstract addNewShapetype()Lcom/microsoft/schemas/vml/CTShapetype;
.end method

.method public abstract addNewSignatureline()Lcom/microsoft/schemas/office/office/CTSignatureLine;
.end method

.method public abstract addNewSkew()Lcom/microsoft/schemas/office/office/CTSkew;
.end method

.method public abstract addNewStroke()Lcom/microsoft/schemas/vml/CTStroke;
.end method

.method public abstract addNewTextbox()Lcom/microsoft/schemas/vml/CTTextbox;
.end method

.method public abstract addNewTextdata()Lcom/microsoft/schemas/office/powerpoint/CTRel;
.end method

.method public abstract addNewTextpath()Lcom/microsoft/schemas/vml/CTTextPath;
.end method

.method public abstract addNewWrap()Lcom/microsoft/schemas/office/word/CTWrap;
.end method

.method public abstract getAllowincell()Lcom/microsoft/schemas/office/office/STTrueFalse$Enum;
.end method

.method public abstract getAllowoverlap()Lcom/microsoft/schemas/office/office/STTrueFalse$Enum;
.end method

.method public abstract getAlt()Ljava/lang/String;
.end method

.method public abstract getAnchorlockArray(I)Lcom/microsoft/schemas/office/word/CTAnchorLock;
.end method

.method public abstract getAnchorlockArray()[Lcom/microsoft/schemas/office/word/CTAnchorLock;
.end method

.method public abstract getAnchorlockList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/word/CTAnchorLock;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getArcArray(I)Lcom/microsoft/schemas/vml/CTArc;
.end method

.method public abstract getArcArray()[Lcom/microsoft/schemas/vml/CTArc;
.end method

.method public abstract getArcList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/vml/CTArc;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBorderbottomArray(I)Lcom/microsoft/schemas/office/word/CTBorder;
.end method

.method public abstract getBorderbottomArray()[Lcom/microsoft/schemas/office/word/CTBorder;
.end method

.method public abstract getBorderbottomList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/word/CTBorder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBorderbottomcolor()Ljava/lang/String;
.end method

.method public abstract getBorderleftArray(I)Lcom/microsoft/schemas/office/word/CTBorder;
.end method

.method public abstract getBorderleftArray()[Lcom/microsoft/schemas/office/word/CTBorder;
.end method

.method public abstract getBorderleftList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/word/CTBorder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBorderleftcolor()Ljava/lang/String;
.end method

.method public abstract getBorderrightArray(I)Lcom/microsoft/schemas/office/word/CTBorder;
.end method

.method public abstract getBorderrightArray()[Lcom/microsoft/schemas/office/word/CTBorder;
.end method

.method public abstract getBorderrightList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/word/CTBorder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBorderrightcolor()Ljava/lang/String;
.end method

.method public abstract getBordertopArray(I)Lcom/microsoft/schemas/office/word/CTBorder;
.end method

.method public abstract getBordertopArray()[Lcom/microsoft/schemas/office/word/CTBorder;
.end method

.method public abstract getBordertopList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/word/CTBorder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBordertopcolor()Ljava/lang/String;
.end method

.method public abstract getBullet()Lcom/microsoft/schemas/office/office/STTrueFalse$Enum;
.end method

.method public abstract getButton()Lcom/microsoft/schemas/office/office/STTrueFalse$Enum;
.end method

.method public abstract getCalloutArray(I)Lcom/microsoft/schemas/office/office/CTCallout;
.end method

.method public abstract getCalloutArray()[Lcom/microsoft/schemas/office/office/CTCallout;
.end method

.method public abstract getCalloutList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/office/CTCallout;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getClass1()Ljava/lang/String;
.end method

.method public abstract getClientDataArray(I)Lcom/microsoft/schemas/office/excel/CTClientData;
.end method

.method public abstract getClientDataArray()[Lcom/microsoft/schemas/office/excel/CTClientData;
.end method

.method public abstract getClientDataList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/excel/CTClientData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getClippathArray(I)Lcom/microsoft/schemas/office/office/CTClipPath;
.end method

.method public abstract getClippathArray()[Lcom/microsoft/schemas/office/office/CTClipPath;
.end method

.method public abstract getClippathList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/office/CTClipPath;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCoordorigin()Ljava/lang/String;
.end method

.method public abstract getCoordsize()Ljava/lang/String;
.end method

.method public abstract getCurveArray(I)Lcom/microsoft/schemas/vml/CTCurve;
.end method

.method public abstract getCurveArray()[Lcom/microsoft/schemas/vml/CTCurve;
.end method

.method public abstract getCurveList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/vml/CTCurve;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDgmlayout()Ljava/math/BigInteger;
.end method

.method public abstract getDgmlayoutmru()Ljava/math/BigInteger;
.end method

.method public abstract getDgmnodekind()Ljava/math/BigInteger;
.end method

.method public abstract getDiagramArray(I)Lcom/microsoft/schemas/office/office/CTDiagram;
.end method

.method public abstract getDiagramArray()[Lcom/microsoft/schemas/office/office/CTDiagram;
.end method

.method public abstract getDiagramList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/office/CTDiagram;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDoubleclicknotify()Lcom/microsoft/schemas/office/office/STTrueFalse$Enum;
.end method

.method public abstract getEditas()Lcom/microsoft/schemas/vml/STEditAs$Enum;
.end method

.method public abstract getExtrusionArray(I)Lcom/microsoft/schemas/office/office/CTExtrusion;
.end method

.method public abstract getExtrusionArray()[Lcom/microsoft/schemas/office/office/CTExtrusion;
.end method

.method public abstract getExtrusionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/office/CTExtrusion;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFillArray(I)Lcom/microsoft/schemas/vml/CTFill;
.end method

.method public abstract getFillArray()[Lcom/microsoft/schemas/vml/CTFill;
.end method

.method public abstract getFillList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/vml/CTFill;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFillcolor()Ljava/lang/String;
.end method

.method public abstract getFilled()Lcom/microsoft/schemas/vml/STTrueFalse$Enum;
.end method

.method public abstract getFormulasArray(I)Lcom/microsoft/schemas/vml/CTFormulas;
.end method

.method public abstract getFormulasArray()[Lcom/microsoft/schemas/vml/CTFormulas;
.end method

.method public abstract getFormulasList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/vml/CTFormulas;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGroupArray(I)Lcom/microsoft/schemas/vml/CTGroup;
.end method

.method public abstract getGroupArray()[Lcom/microsoft/schemas/vml/CTGroup;
.end method

.method public abstract getGroupList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/vml/CTGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHandlesArray(I)Lcom/microsoft/schemas/vml/CTHandles;
.end method

.method public abstract getHandlesArray()[Lcom/microsoft/schemas/vml/CTHandles;
.end method

.method public abstract getHandlesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/vml/CTHandles;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHr()Lcom/microsoft/schemas/office/office/STTrueFalse$Enum;
.end method

.method public abstract getHralign()Lcom/microsoft/schemas/office/office/STHrAlign$Enum;
.end method

.method public abstract getHref()Ljava/lang/String;
.end method

.method public abstract getHrnoshade()Lcom/microsoft/schemas/office/office/STTrueFalse$Enum;
.end method

.method public abstract getHrpct()F
.end method

.method public abstract getHrstd()Lcom/microsoft/schemas/office/office/STTrueFalse$Enum;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getImageArray(I)Lcom/microsoft/schemas/vml/CTImage;
.end method

.method public abstract getImageArray()[Lcom/microsoft/schemas/vml/CTImage;
.end method

.method public abstract getImageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/vml/CTImage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImagedataArray(I)Lcom/microsoft/schemas/vml/CTImageData;
.end method

.method public abstract getImagedataArray()[Lcom/microsoft/schemas/vml/CTImageData;
.end method

.method public abstract getImagedataList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/vml/CTImageData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInsetmode()Lcom/microsoft/schemas/office/office/STInsetMode$Enum;
.end method

.method public abstract getLineArray(I)Lcom/microsoft/schemas/vml/CTLine;
.end method

.method public abstract getLineArray()[Lcom/microsoft/schemas/vml/CTLine;
.end method

.method public abstract getLineList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/vml/CTLine;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLockArray(I)Lcom/microsoft/schemas/office/office/CTLock;
.end method

.method public abstract getLockArray()[Lcom/microsoft/schemas/office/office/CTLock;
.end method

.method public abstract getLockList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/office/CTLock;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOned()Lcom/microsoft/schemas/office/office/STTrueFalse$Enum;
.end method

.method public abstract getOvalArray(I)Lcom/microsoft/schemas/vml/CTOval;
.end method

.method public abstract getOvalArray()[Lcom/microsoft/schemas/vml/CTOval;
.end method

.method public abstract getOvalList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/vml/CTOval;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPathArray(I)Lcom/microsoft/schemas/vml/CTPath;
.end method

.method public abstract getPathArray()[Lcom/microsoft/schemas/vml/CTPath;
.end method

.method public abstract getPathList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/vml/CTPath;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPolylineArray(I)Lcom/microsoft/schemas/vml/CTPolyLine;
.end method

.method public abstract getPolylineArray()[Lcom/microsoft/schemas/vml/CTPolyLine;
.end method

.method public abstract getPolylineList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/vml/CTPolyLine;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrint()Lcom/microsoft/schemas/vml/STTrueFalse$Enum;
.end method

.method public abstract getRectArray(I)Lcom/microsoft/schemas/vml/CTRect;
.end method

.method public abstract getRectArray()[Lcom/microsoft/schemas/vml/CTRect;
.end method

.method public abstract getRectList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/vml/CTRect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRegroupid()Ljava/math/BigInteger;
.end method

.method public abstract getRoundrectArray(I)Lcom/microsoft/schemas/vml/CTRoundRect;
.end method

.method public abstract getRoundrectArray()[Lcom/microsoft/schemas/vml/CTRoundRect;
.end method

.method public abstract getRoundrectList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/vml/CTRoundRect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getShadowArray(I)Lcom/microsoft/schemas/vml/CTShadow;
.end method

.method public abstract getShadowArray()[Lcom/microsoft/schemas/vml/CTShadow;
.end method

.method public abstract getShadowList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/vml/CTShadow;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getShapeArray(I)Lcom/microsoft/schemas/vml/CTShape;
.end method

.method public abstract getShapeArray()[Lcom/microsoft/schemas/vml/CTShape;
.end method

.method public abstract getShapeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/vml/CTShape;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getShapetypeArray(I)Lcom/microsoft/schemas/vml/CTShapetype;
.end method

.method public abstract getShapetypeArray()[Lcom/microsoft/schemas/vml/CTShapetype;
.end method

.method public abstract getShapetypeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/vml/CTShapetype;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSignaturelineArray(I)Lcom/microsoft/schemas/office/office/CTSignatureLine;
.end method

.method public abstract getSignaturelineArray()[Lcom/microsoft/schemas/office/office/CTSignatureLine;
.end method

.method public abstract getSignaturelineList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/office/CTSignatureLine;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSkewArray(I)Lcom/microsoft/schemas/office/office/CTSkew;
.end method

.method public abstract getSkewArray()[Lcom/microsoft/schemas/office/office/CTSkew;
.end method

.method public abstract getSkewList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/office/CTSkew;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSpid()Ljava/lang/String;
.end method

.method public abstract getStrokeArray(I)Lcom/microsoft/schemas/vml/CTStroke;
.end method

.method public abstract getStrokeArray()[Lcom/microsoft/schemas/vml/CTStroke;
.end method

.method public abstract getStrokeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/vml/CTStroke;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStyle()Ljava/lang/String;
.end method

.method public abstract getTablelimits()Ljava/lang/String;
.end method

.method public abstract getTableproperties()Ljava/lang/String;
.end method

.method public abstract getTarget()Ljava/lang/String;
.end method

.method public abstract getTextboxArray(I)Lcom/microsoft/schemas/vml/CTTextbox;
.end method

.method public abstract getTextboxArray()[Lcom/microsoft/schemas/vml/CTTextbox;
.end method

.method public abstract getTextboxList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/vml/CTTextbox;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTextdataArray(I)Lcom/microsoft/schemas/office/powerpoint/CTRel;
.end method

.method public abstract getTextdataArray()[Lcom/microsoft/schemas/office/powerpoint/CTRel;
.end method

.method public abstract getTextdataList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/powerpoint/CTRel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTextpathArray(I)Lcom/microsoft/schemas/vml/CTTextPath;
.end method

.method public abstract getTextpathArray()[Lcom/microsoft/schemas/vml/CTTextPath;
.end method

.method public abstract getTextpathList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/vml/CTTextPath;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUserdrawn()Lcom/microsoft/schemas/office/office/STTrueFalse$Enum;
.end method

.method public abstract getUserhidden()Lcom/microsoft/schemas/office/office/STTrueFalse$Enum;
.end method

.method public abstract getWrapArray(I)Lcom/microsoft/schemas/office/word/CTWrap;
.end method

.method public abstract getWrapArray()[Lcom/microsoft/schemas/office/word/CTWrap;
.end method

.method public abstract getWrapList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/word/CTWrap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWrapcoords()Ljava/lang/String;
.end method

.method public abstract insertNewAnchorlock(I)Lcom/microsoft/schemas/office/word/CTAnchorLock;
.end method

.method public abstract insertNewArc(I)Lcom/microsoft/schemas/vml/CTArc;
.end method

.method public abstract insertNewBorderbottom(I)Lcom/microsoft/schemas/office/word/CTBorder;
.end method

.method public abstract insertNewBorderleft(I)Lcom/microsoft/schemas/office/word/CTBorder;
.end method

.method public abstract insertNewBorderright(I)Lcom/microsoft/schemas/office/word/CTBorder;
.end method

.method public abstract insertNewBordertop(I)Lcom/microsoft/schemas/office/word/CTBorder;
.end method

.method public abstract insertNewCallout(I)Lcom/microsoft/schemas/office/office/CTCallout;
.end method

.method public abstract insertNewClientData(I)Lcom/microsoft/schemas/office/excel/CTClientData;
.end method

.method public abstract insertNewClippath(I)Lcom/microsoft/schemas/office/office/CTClipPath;
.end method

.method public abstract insertNewCurve(I)Lcom/microsoft/schemas/vml/CTCurve;
.end method

.method public abstract insertNewDiagram(I)Lcom/microsoft/schemas/office/office/CTDiagram;
.end method

.method public abstract insertNewExtrusion(I)Lcom/microsoft/schemas/office/office/CTExtrusion;
.end method

.method public abstract insertNewFill(I)Lcom/microsoft/schemas/vml/CTFill;
.end method

.method public abstract insertNewFormulas(I)Lcom/microsoft/schemas/vml/CTFormulas;
.end method

.method public abstract insertNewGroup(I)Lcom/microsoft/schemas/vml/CTGroup;
.end method

.method public abstract insertNewHandles(I)Lcom/microsoft/schemas/vml/CTHandles;
.end method

.method public abstract insertNewImage(I)Lcom/microsoft/schemas/vml/CTImage;
.end method

.method public abstract insertNewImagedata(I)Lcom/microsoft/schemas/vml/CTImageData;
.end method

.method public abstract insertNewLine(I)Lcom/microsoft/schemas/vml/CTLine;
.end method

.method public abstract insertNewLock(I)Lcom/microsoft/schemas/office/office/CTLock;
.end method

.method public abstract insertNewOval(I)Lcom/microsoft/schemas/vml/CTOval;
.end method

.method public abstract insertNewPath(I)Lcom/microsoft/schemas/vml/CTPath;
.end method

.method public abstract insertNewPolyline(I)Lcom/microsoft/schemas/vml/CTPolyLine;
.end method

.method public abstract insertNewRect(I)Lcom/microsoft/schemas/vml/CTRect;
.end method

.method public abstract insertNewRoundrect(I)Lcom/microsoft/schemas/vml/CTRoundRect;
.end method

.method public abstract insertNewShadow(I)Lcom/microsoft/schemas/vml/CTShadow;
.end method

.method public abstract insertNewShape(I)Lcom/microsoft/schemas/vml/CTShape;
.end method

.method public abstract insertNewShapetype(I)Lcom/microsoft/schemas/vml/CTShapetype;
.end method

.method public abstract insertNewSignatureline(I)Lcom/microsoft/schemas/office/office/CTSignatureLine;
.end method

.method public abstract insertNewSkew(I)Lcom/microsoft/schemas/office/office/CTSkew;
.end method

.method public abstract insertNewStroke(I)Lcom/microsoft/schemas/vml/CTStroke;
.end method

.method public abstract insertNewTextbox(I)Lcom/microsoft/schemas/vml/CTTextbox;
.end method

.method public abstract insertNewTextdata(I)Lcom/microsoft/schemas/office/powerpoint/CTRel;
.end method

.method public abstract insertNewTextpath(I)Lcom/microsoft/schemas/vml/CTTextPath;
.end method

.method public abstract insertNewWrap(I)Lcom/microsoft/schemas/office/word/CTWrap;
.end method

.method public abstract isSetAllowincell()Z
.end method

.method public abstract isSetAllowoverlap()Z
.end method

.method public abstract isSetAlt()Z
.end method

.method public abstract isSetBorderbottomcolor()Z
.end method

.method public abstract isSetBorderleftcolor()Z
.end method

.method public abstract isSetBorderrightcolor()Z
.end method

.method public abstract isSetBordertopcolor()Z
.end method

.method public abstract isSetBullet()Z
.end method

.method public abstract isSetButton()Z
.end method

.method public abstract isSetClass1()Z
.end method

.method public abstract isSetCoordorigin()Z
.end method

.method public abstract isSetCoordsize()Z
.end method

.method public abstract isSetDgmlayout()Z
.end method

.method public abstract isSetDgmlayoutmru()Z
.end method

.method public abstract isSetDgmnodekind()Z
.end method

.method public abstract isSetDoubleclicknotify()Z
.end method

.method public abstract isSetEditas()Z
.end method

.method public abstract isSetFillcolor()Z
.end method

.method public abstract isSetFilled()Z
.end method

.method public abstract isSetHr()Z
.end method

.method public abstract isSetHralign()Z
.end method

.method public abstract isSetHref()Z
.end method

.method public abstract isSetHrnoshade()Z
.end method

.method public abstract isSetHrpct()Z
.end method

.method public abstract isSetHrstd()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetInsetmode()Z
.end method

.method public abstract isSetOned()Z
.end method

.method public abstract isSetPrint()Z
.end method

.method public abstract isSetRegroupid()Z
.end method

.method public abstract isSetSpid()Z
.end method

.method public abstract isSetStyle()Z
.end method

.method public abstract isSetTablelimits()Z
.end method

.method public abstract isSetTableproperties()Z
.end method

.method public abstract isSetTarget()Z
.end method

.method public abstract isSetTitle()Z
.end method

.method public abstract isSetUserdrawn()Z
.end method

.method public abstract isSetUserhidden()Z
.end method

.method public abstract isSetWrapcoords()Z
.end method

.method public abstract removeAnchorlock(I)V
.end method

.method public abstract removeArc(I)V
.end method

.method public abstract removeBorderbottom(I)V
.end method

.method public abstract removeBorderleft(I)V
.end method

.method public abstract removeBorderright(I)V
.end method

.method public abstract removeBordertop(I)V
.end method

.method public abstract removeCallout(I)V
.end method

.method public abstract removeClientData(I)V
.end method

.method public abstract removeClippath(I)V
.end method

.method public abstract removeCurve(I)V
.end method

.method public abstract removeDiagram(I)V
.end method

.method public abstract removeExtrusion(I)V
.end method

.method public abstract removeFill(I)V
.end method

.method public abstract removeFormulas(I)V
.end method

.method public abstract removeGroup(I)V
.end method

.method public abstract removeHandles(I)V
.end method

.method public abstract removeImage(I)V
.end method

.method public abstract removeImagedata(I)V
.end method

.method public abstract removeLine(I)V
.end method

.method public abstract removeLock(I)V
.end method

.method public abstract removeOval(I)V
.end method

.method public abstract removePath(I)V
.end method

.method public abstract removePolyline(I)V
.end method

.method public abstract removeRect(I)V
.end method

.method public abstract removeRoundrect(I)V
.end method

.method public abstract removeShadow(I)V
.end method

.method public abstract removeShape(I)V
.end method

.method public abstract removeShapetype(I)V
.end method

.method public abstract removeSignatureline(I)V
.end method

.method public abstract removeSkew(I)V
.end method

.method public abstract removeStroke(I)V
.end method

.method public abstract removeTextbox(I)V
.end method

.method public abstract removeTextdata(I)V
.end method

.method public abstract removeTextpath(I)V
.end method

.method public abstract removeWrap(I)V
.end method

.method public abstract setAllowincell(Lcom/microsoft/schemas/office/office/STTrueFalse$Enum;)V
.end method

.method public abstract setAllowoverlap(Lcom/microsoft/schemas/office/office/STTrueFalse$Enum;)V
.end method

.method public abstract setAlt(Ljava/lang/String;)V
.end method

.method public abstract setAnchorlockArray(ILcom/microsoft/schemas/office/word/CTAnchorLock;)V
.end method

.method public abstract setAnchorlockArray([Lcom/microsoft/schemas/office/word/CTAnchorLock;)V
.end method

.method public abstract setArcArray(ILcom/microsoft/schemas/vml/CTArc;)V
.end method

.method public abstract setArcArray([Lcom/microsoft/schemas/vml/CTArc;)V
.end method

.method public abstract setBorderbottomArray(ILcom/microsoft/schemas/office/word/CTBorder;)V
.end method

.method public abstract setBorderbottomArray([Lcom/microsoft/schemas/office/word/CTBorder;)V
.end method

.method public abstract setBorderbottomcolor(Ljava/lang/String;)V
.end method

.method public abstract setBorderleftArray(ILcom/microsoft/schemas/office/word/CTBorder;)V
.end method

.method public abstract setBorderleftArray([Lcom/microsoft/schemas/office/word/CTBorder;)V
.end method

.method public abstract setBorderleftcolor(Ljava/lang/String;)V
.end method

.method public abstract setBorderrightArray(ILcom/microsoft/schemas/office/word/CTBorder;)V
.end method

.method public abstract setBorderrightArray([Lcom/microsoft/schemas/office/word/CTBorder;)V
.end method

.method public abstract setBorderrightcolor(Ljava/lang/String;)V
.end method

.method public abstract setBordertopArray(ILcom/microsoft/schemas/office/word/CTBorder;)V
.end method

.method public abstract setBordertopArray([Lcom/microsoft/schemas/office/word/CTBorder;)V
.end method

.method public abstract setBordertopcolor(Ljava/lang/String;)V
.end method

.method public abstract setBullet(Lcom/microsoft/schemas/office/office/STTrueFalse$Enum;)V
.end method

.method public abstract setButton(Lcom/microsoft/schemas/office/office/STTrueFalse$Enum;)V
.end method

.method public abstract setCalloutArray(ILcom/microsoft/schemas/office/office/CTCallout;)V
.end method

.method public abstract setCalloutArray([Lcom/microsoft/schemas/office/office/CTCallout;)V
.end method

.method public abstract setClass1(Ljava/lang/String;)V
.end method

.method public abstract setClientDataArray(ILcom/microsoft/schemas/office/excel/CTClientData;)V
.end method

.method public abstract setClientDataArray([Lcom/microsoft/schemas/office/excel/CTClientData;)V
.end method

.method public abstract setClippathArray(ILcom/microsoft/schemas/office/office/CTClipPath;)V
.end method

.method public abstract setClippathArray([Lcom/microsoft/schemas/office/office/CTClipPath;)V
.end method

.method public abstract setCoordorigin(Ljava/lang/String;)V
.end method

.method public abstract setCoordsize(Ljava/lang/String;)V
.end method

.method public abstract setCurveArray(ILcom/microsoft/schemas/vml/CTCurve;)V
.end method

.method public abstract setCurveArray([Lcom/microsoft/schemas/vml/CTCurve;)V
.end method

.method public abstract setDgmlayout(Ljava/math/BigInteger;)V
.end method

.method public abstract setDgmlayoutmru(Ljava/math/BigInteger;)V
.end method

.method public abstract setDgmnodekind(Ljava/math/BigInteger;)V
.end method

.method public abstract setDiagramArray(ILcom/microsoft/schemas/office/office/CTDiagram;)V
.end method

.method public abstract setDiagramArray([Lcom/microsoft/schemas/office/office/CTDiagram;)V
.end method

.method public abstract setDoubleclicknotify(Lcom/microsoft/schemas/office/office/STTrueFalse$Enum;)V
.end method

.method public abstract setEditas(Lcom/microsoft/schemas/vml/STEditAs$Enum;)V
.end method

.method public abstract setExtrusionArray(ILcom/microsoft/schemas/office/office/CTExtrusion;)V
.end method

.method public abstract setExtrusionArray([Lcom/microsoft/schemas/office/office/CTExtrusion;)V
.end method

.method public abstract setFillArray(ILcom/microsoft/schemas/vml/CTFill;)V
.end method

.method public abstract setFillArray([Lcom/microsoft/schemas/vml/CTFill;)V
.end method

.method public abstract setFillcolor(Ljava/lang/String;)V
.end method

.method public abstract setFilled(Lcom/microsoft/schemas/vml/STTrueFalse$Enum;)V
.end method

.method public abstract setFormulasArray(ILcom/microsoft/schemas/vml/CTFormulas;)V
.end method

.method public abstract setFormulasArray([Lcom/microsoft/schemas/vml/CTFormulas;)V
.end method

.method public abstract setGroupArray(ILcom/microsoft/schemas/vml/CTGroup;)V
.end method

.method public abstract setGroupArray([Lcom/microsoft/schemas/vml/CTGroup;)V
.end method

.method public abstract setHandlesArray(ILcom/microsoft/schemas/vml/CTHandles;)V
.end method

.method public abstract setHandlesArray([Lcom/microsoft/schemas/vml/CTHandles;)V
.end method

.method public abstract setHr(Lcom/microsoft/schemas/office/office/STTrueFalse$Enum;)V
.end method

.method public abstract setHralign(Lcom/microsoft/schemas/office/office/STHrAlign$Enum;)V
.end method

.method public abstract setHref(Ljava/lang/String;)V
.end method

.method public abstract setHrnoshade(Lcom/microsoft/schemas/office/office/STTrueFalse$Enum;)V
.end method

.method public abstract setHrpct(F)V
.end method

.method public abstract setHrstd(Lcom/microsoft/schemas/office/office/STTrueFalse$Enum;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setImageArray(ILcom/microsoft/schemas/vml/CTImage;)V
.end method

.method public abstract setImageArray([Lcom/microsoft/schemas/vml/CTImage;)V
.end method

.method public abstract setImagedataArray(ILcom/microsoft/schemas/vml/CTImageData;)V
.end method

.method public abstract setImagedataArray([Lcom/microsoft/schemas/vml/CTImageData;)V
.end method

.method public abstract setInsetmode(Lcom/microsoft/schemas/office/office/STInsetMode$Enum;)V
.end method

.method public abstract setLineArray(ILcom/microsoft/schemas/vml/CTLine;)V
.end method

.method public abstract setLineArray([Lcom/microsoft/schemas/vml/CTLine;)V
.end method

.method public abstract setLockArray(ILcom/microsoft/schemas/office/office/CTLock;)V
.end method

.method public abstract setLockArray([Lcom/microsoft/schemas/office/office/CTLock;)V
.end method

.method public abstract setOned(Lcom/microsoft/schemas/office/office/STTrueFalse$Enum;)V
.end method

.method public abstract setOvalArray(ILcom/microsoft/schemas/vml/CTOval;)V
.end method

.method public abstract setOvalArray([Lcom/microsoft/schemas/vml/CTOval;)V
.end method

.method public abstract setPathArray(ILcom/microsoft/schemas/vml/CTPath;)V
.end method

.method public abstract setPathArray([Lcom/microsoft/schemas/vml/CTPath;)V
.end method

.method public abstract setPolylineArray(ILcom/microsoft/schemas/vml/CTPolyLine;)V
.end method

.method public abstract setPolylineArray([Lcom/microsoft/schemas/vml/CTPolyLine;)V
.end method

.method public abstract setPrint(Lcom/microsoft/schemas/vml/STTrueFalse$Enum;)V
.end method

.method public abstract setRectArray(ILcom/microsoft/schemas/vml/CTRect;)V
.end method

.method public abstract setRectArray([Lcom/microsoft/schemas/vml/CTRect;)V
.end method

.method public abstract setRegroupid(Ljava/math/BigInteger;)V
.end method

.method public abstract setRoundrectArray(ILcom/microsoft/schemas/vml/CTRoundRect;)V
.end method

.method public abstract setRoundrectArray([Lcom/microsoft/schemas/vml/CTRoundRect;)V
.end method

.method public abstract setShadowArray(ILcom/microsoft/schemas/vml/CTShadow;)V
.end method

.method public abstract setShadowArray([Lcom/microsoft/schemas/vml/CTShadow;)V
.end method

.method public abstract setShapeArray(ILcom/microsoft/schemas/vml/CTShape;)V
.end method

.method public abstract setShapeArray([Lcom/microsoft/schemas/vml/CTShape;)V
.end method

.method public abstract setShapetypeArray(ILcom/microsoft/schemas/vml/CTShapetype;)V
.end method

.method public abstract setShapetypeArray([Lcom/microsoft/schemas/vml/CTShapetype;)V
.end method

.method public abstract setSignaturelineArray(ILcom/microsoft/schemas/office/office/CTSignatureLine;)V
.end method

.method public abstract setSignaturelineArray([Lcom/microsoft/schemas/office/office/CTSignatureLine;)V
.end method

.method public abstract setSkewArray(ILcom/microsoft/schemas/office/office/CTSkew;)V
.end method

.method public abstract setSkewArray([Lcom/microsoft/schemas/office/office/CTSkew;)V
.end method

.method public abstract setSpid(Ljava/lang/String;)V
.end method

.method public abstract setStrokeArray(ILcom/microsoft/schemas/vml/CTStroke;)V
.end method

.method public abstract setStrokeArray([Lcom/microsoft/schemas/vml/CTStroke;)V
.end method

.method public abstract setStyle(Ljava/lang/String;)V
.end method

.method public abstract setTablelimits(Ljava/lang/String;)V
.end method

.method public abstract setTableproperties(Ljava/lang/String;)V
.end method

.method public abstract setTarget(Ljava/lang/String;)V
.end method

.method public abstract setTextboxArray(ILcom/microsoft/schemas/vml/CTTextbox;)V
.end method

.method public abstract setTextboxArray([Lcom/microsoft/schemas/vml/CTTextbox;)V
.end method

.method public abstract setTextdataArray(ILcom/microsoft/schemas/office/powerpoint/CTRel;)V
.end method

.method public abstract setTextdataArray([Lcom/microsoft/schemas/office/powerpoint/CTRel;)V
.end method

.method public abstract setTextpathArray(ILcom/microsoft/schemas/vml/CTTextPath;)V
.end method

.method public abstract setTextpathArray([Lcom/microsoft/schemas/vml/CTTextPath;)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public abstract setUserdrawn(Lcom/microsoft/schemas/office/office/STTrueFalse$Enum;)V
.end method

.method public abstract setUserhidden(Lcom/microsoft/schemas/office/office/STTrueFalse$Enum;)V
.end method

.method public abstract setWrapArray(ILcom/microsoft/schemas/office/word/CTWrap;)V
.end method

.method public abstract setWrapArray([Lcom/microsoft/schemas/office/word/CTWrap;)V
.end method

.method public abstract setWrapcoords(Ljava/lang/String;)V
.end method

.method public abstract sizeOfAnchorlockArray()I
.end method

.method public abstract sizeOfArcArray()I
.end method

.method public abstract sizeOfBorderbottomArray()I
.end method

.method public abstract sizeOfBorderleftArray()I
.end method

.method public abstract sizeOfBorderrightArray()I
.end method

.method public abstract sizeOfBordertopArray()I
.end method

.method public abstract sizeOfCalloutArray()I
.end method

.method public abstract sizeOfClientDataArray()I
.end method

.method public abstract sizeOfClippathArray()I
.end method

.method public abstract sizeOfCurveArray()I
.end method

.method public abstract sizeOfDiagramArray()I
.end method

.method public abstract sizeOfExtrusionArray()I
.end method

.method public abstract sizeOfFillArray()I
.end method

.method public abstract sizeOfFormulasArray()I
.end method

.method public abstract sizeOfGroupArray()I
.end method

.method public abstract sizeOfHandlesArray()I
.end method

.method public abstract sizeOfImageArray()I
.end method

.method public abstract sizeOfImagedataArray()I
.end method

.method public abstract sizeOfLineArray()I
.end method

.method public abstract sizeOfLockArray()I
.end method

.method public abstract sizeOfOvalArray()I
.end method

.method public abstract sizeOfPathArray()I
.end method

.method public abstract sizeOfPolylineArray()I
.end method

.method public abstract sizeOfRectArray()I
.end method

.method public abstract sizeOfRoundrectArray()I
.end method

.method public abstract sizeOfShadowArray()I
.end method

.method public abstract sizeOfShapeArray()I
.end method

.method public abstract sizeOfShapetypeArray()I
.end method

.method public abstract sizeOfSignaturelineArray()I
.end method

.method public abstract sizeOfSkewArray()I
.end method

.method public abstract sizeOfStrokeArray()I
.end method

.method public abstract sizeOfTextboxArray()I
.end method

.method public abstract sizeOfTextdataArray()I
.end method

.method public abstract sizeOfTextpathArray()I
.end method

.method public abstract sizeOfWrapArray()I
.end method

.method public abstract unsetAllowincell()V
.end method

.method public abstract unsetAllowoverlap()V
.end method

.method public abstract unsetAlt()V
.end method

.method public abstract unsetBorderbottomcolor()V
.end method

.method public abstract unsetBorderleftcolor()V
.end method

.method public abstract unsetBorderrightcolor()V
.end method

.method public abstract unsetBordertopcolor()V
.end method

.method public abstract unsetBullet()V
.end method

.method public abstract unsetButton()V
.end method

.method public abstract unsetClass1()V
.end method

.method public abstract unsetCoordorigin()V
.end method

.method public abstract unsetCoordsize()V
.end method

.method public abstract unsetDgmlayout()V
.end method

.method public abstract unsetDgmlayoutmru()V
.end method

.method public abstract unsetDgmnodekind()V
.end method

.method public abstract unsetDoubleclicknotify()V
.end method

.method public abstract unsetEditas()V
.end method

.method public abstract unsetFillcolor()V
.end method

.method public abstract unsetFilled()V
.end method

.method public abstract unsetHr()V
.end method

.method public abstract unsetHralign()V
.end method

.method public abstract unsetHref()V
.end method

.method public abstract unsetHrnoshade()V
.end method

.method public abstract unsetHrpct()V
.end method

.method public abstract unsetHrstd()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetInsetmode()V
.end method

.method public abstract unsetOned()V
.end method

.method public abstract unsetPrint()V
.end method

.method public abstract unsetRegroupid()V
.end method

.method public abstract unsetSpid()V
.end method

.method public abstract unsetStyle()V
.end method

.method public abstract unsetTablelimits()V
.end method

.method public abstract unsetTableproperties()V
.end method

.method public abstract unsetTarget()V
.end method

.method public abstract unsetTitle()V
.end method

.method public abstract unsetUserdrawn()V
.end method

.method public abstract unsetUserhidden()V
.end method

.method public abstract unsetWrapcoords()V
.end method

.method public abstract xgetAllowincell()Lcom/microsoft/schemas/office/office/STTrueFalse;
.end method

.method public abstract xgetAllowoverlap()Lcom/microsoft/schemas/office/office/STTrueFalse;
.end method

.method public abstract xgetAlt()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetBorderbottomcolor()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetBorderleftcolor()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetBorderrightcolor()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetBordertopcolor()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetBullet()Lcom/microsoft/schemas/office/office/STTrueFalse;
.end method

.method public abstract xgetButton()Lcom/microsoft/schemas/office/office/STTrueFalse;
.end method

.method public abstract xgetClass1()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetCoordorigin()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetCoordsize()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetDgmlayout()Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetDgmlayoutmru()Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetDgmnodekind()Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetDoubleclicknotify()Lcom/microsoft/schemas/office/office/STTrueFalse;
.end method

.method public abstract xgetEditas()Lcom/microsoft/schemas/vml/STEditAs;
.end method

.method public abstract xgetFillcolor()Lcom/microsoft/schemas/vml/STColorType;
.end method

.method public abstract xgetFilled()Lcom/microsoft/schemas/vml/STTrueFalse;
.end method

.method public abstract xgetHr()Lcom/microsoft/schemas/office/office/STTrueFalse;
.end method

.method public abstract xgetHralign()Lcom/microsoft/schemas/office/office/STHrAlign;
.end method

.method public abstract xgetHref()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetHrnoshade()Lcom/microsoft/schemas/office/office/STTrueFalse;
.end method

.method public abstract xgetHrpct()Lorg/apache/xmlbeans/XmlFloat;
.end method

.method public abstract xgetHrstd()Lcom/microsoft/schemas/office/office/STTrueFalse;
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetInsetmode()Lcom/microsoft/schemas/office/office/STInsetMode;
.end method

.method public abstract xgetOned()Lcom/microsoft/schemas/office/office/STTrueFalse;
.end method

.method public abstract xgetPrint()Lcom/microsoft/schemas/vml/STTrueFalse;
.end method

.method public abstract xgetRegroupid()Lorg/apache/xmlbeans/XmlInteger;
.end method

.method public abstract xgetSpid()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetStyle()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetTablelimits()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetTableproperties()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetTarget()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetTitle()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetUserdrawn()Lcom/microsoft/schemas/office/office/STTrueFalse;
.end method

.method public abstract xgetUserhidden()Lcom/microsoft/schemas/office/office/STTrueFalse;
.end method

.method public abstract xgetWrapcoords()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetAllowincell(Lcom/microsoft/schemas/office/office/STTrueFalse;)V
.end method

.method public abstract xsetAllowoverlap(Lcom/microsoft/schemas/office/office/STTrueFalse;)V
.end method

.method public abstract xsetAlt(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetBorderbottomcolor(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetBorderleftcolor(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetBorderrightcolor(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetBordertopcolor(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetBullet(Lcom/microsoft/schemas/office/office/STTrueFalse;)V
.end method

.method public abstract xsetButton(Lcom/microsoft/schemas/office/office/STTrueFalse;)V
.end method

.method public abstract xsetClass1(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetCoordorigin(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetCoordsize(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetDgmlayout(Lorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetDgmlayoutmru(Lorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetDgmnodekind(Lorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetDoubleclicknotify(Lcom/microsoft/schemas/office/office/STTrueFalse;)V
.end method

.method public abstract xsetEditas(Lcom/microsoft/schemas/vml/STEditAs;)V
.end method

.method public abstract xsetFillcolor(Lcom/microsoft/schemas/vml/STColorType;)V
.end method

.method public abstract xsetFilled(Lcom/microsoft/schemas/vml/STTrueFalse;)V
.end method

.method public abstract xsetHr(Lcom/microsoft/schemas/office/office/STTrueFalse;)V
.end method

.method public abstract xsetHralign(Lcom/microsoft/schemas/office/office/STHrAlign;)V
.end method

.method public abstract xsetHref(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetHrnoshade(Lcom/microsoft/schemas/office/office/STTrueFalse;)V
.end method

.method public abstract xsetHrpct(Lorg/apache/xmlbeans/XmlFloat;)V
.end method

.method public abstract xsetHrstd(Lcom/microsoft/schemas/office/office/STTrueFalse;)V
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetInsetmode(Lcom/microsoft/schemas/office/office/STInsetMode;)V
.end method

.method public abstract xsetOned(Lcom/microsoft/schemas/office/office/STTrueFalse;)V
.end method

.method public abstract xsetPrint(Lcom/microsoft/schemas/vml/STTrueFalse;)V
.end method

.method public abstract xsetRegroupid(Lorg/apache/xmlbeans/XmlInteger;)V
.end method

.method public abstract xsetSpid(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetStyle(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetTablelimits(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetTableproperties(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetTarget(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetTitle(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetUserdrawn(Lcom/microsoft/schemas/office/office/STTrueFalse;)V
.end method

.method public abstract xsetUserhidden(Lcom/microsoft/schemas/office/office/STTrueFalse;)V
.end method

.method public abstract xsetWrapcoords(Lorg/apache/xmlbeans/XmlString;)V
.end method
