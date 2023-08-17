.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPrBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPrBase$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPrBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "cttcprbase93e6type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcPrBase;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCnfStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCnf;
.end method

.method public abstract addNewGridSpan()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract addNewHMerge()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHMerge;
.end method

.method public abstract addNewHideMark()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewNoWrap()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewShd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;
.end method

.method public abstract addNewTcBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcBorders;
.end method

.method public abstract addNewTcFitText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewTcMar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcMar;
.end method

.method public abstract addNewTcW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
.end method

.method public abstract addNewTextDirection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextDirection;
.end method

.method public abstract addNewVAlign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalJc;
.end method

.method public abstract addNewVMerge()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVMerge;
.end method

.method public abstract getCnfStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCnf;
.end method

.method public abstract getGridSpan()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;
.end method

.method public abstract getHMerge()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHMerge;
.end method

.method public abstract getHideMark()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getNoWrap()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getShd()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;
.end method

.method public abstract getTcBorders()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcBorders;
.end method

.method public abstract getTcFitText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getTcMar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcMar;
.end method

.method public abstract getTcW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
.end method

.method public abstract getTextDirection()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextDirection;
.end method

.method public abstract getVAlign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalJc;
.end method

.method public abstract getVMerge()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVMerge;
.end method

.method public abstract isSetCnfStyle()Z
.end method

.method public abstract isSetGridSpan()Z
.end method

.method public abstract isSetHMerge()Z
.end method

.method public abstract isSetHideMark()Z
.end method

.method public abstract isSetNoWrap()Z
.end method

.method public abstract isSetShd()Z
.end method

.method public abstract isSetTcBorders()Z
.end method

.method public abstract isSetTcFitText()Z
.end method

.method public abstract isSetTcMar()Z
.end method

.method public abstract isSetTcW()Z
.end method

.method public abstract isSetTextDirection()Z
.end method

.method public abstract isSetVAlign()Z
.end method

.method public abstract isSetVMerge()Z
.end method

.method public abstract setCnfStyle(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCnf;)V
.end method

.method public abstract setGridSpan(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;)V
.end method

.method public abstract setHMerge(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHMerge;)V
.end method

.method public abstract setHideMark(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setNoWrap(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setShd(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTShd;)V
.end method

.method public abstract setTcBorders(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcBorders;)V
.end method

.method public abstract setTcFitText(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setTcMar(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTcMar;)V
.end method

.method public abstract setTcW(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;)V
.end method

.method public abstract setTextDirection(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTextDirection;)V
.end method

.method public abstract setVAlign(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalJc;)V
.end method

.method public abstract setVMerge(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVMerge;)V
.end method

.method public abstract unsetCnfStyle()V
.end method

.method public abstract unsetGridSpan()V
.end method

.method public abstract unsetHMerge()V
.end method

.method public abstract unsetHideMark()V
.end method

.method public abstract unsetNoWrap()V
.end method

.method public abstract unsetShd()V
.end method

.method public abstract unsetTcBorders()V
.end method

.method public abstract unsetTcFitText()V
.end method

.method public abstract unsetTcMar()V
.end method

.method public abstract unsetTcW()V
.end method

.method public abstract unsetTextDirection()V
.end method

.method public abstract unsetVAlign()V
.end method

.method public abstract unsetVMerge()V
.end method
