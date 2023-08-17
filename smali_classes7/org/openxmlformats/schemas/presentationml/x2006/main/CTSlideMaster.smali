.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctslidemasterd8fctype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMaster;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;
.end method

.method public abstract addNewClrMap()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;
.end method

.method public abstract addNewHf()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;
.end method

.method public abstract addNewSldLayoutIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayoutIdList;
.end method

.method public abstract addNewTiming()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTiming;
.end method

.method public abstract addNewTransition()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTransition;
.end method

.method public abstract addNewTxStyles()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterTextStyles;
.end method

.method public abstract getCSld()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;
.end method

.method public abstract getClrMap()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;
.end method

.method public abstract getHf()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;
.end method

.method public abstract getPreserve()Z
.end method

.method public abstract getSldLayoutIdLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayoutIdList;
.end method

.method public abstract getTiming()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTiming;
.end method

.method public abstract getTransition()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTransition;
.end method

.method public abstract getTxStyles()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterTextStyles;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetHf()Z
.end method

.method public abstract isSetPreserve()Z
.end method

.method public abstract isSetSldLayoutIdLst()Z
.end method

.method public abstract isSetTiming()Z
.end method

.method public abstract isSetTransition()Z
.end method

.method public abstract isSetTxStyles()Z
.end method

.method public abstract setCSld(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;)V
.end method

.method public abstract setClrMap(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;)V
.end method

.method public abstract setHf(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;)V
.end method

.method public abstract setPreserve(Z)V
.end method

.method public abstract setSldLayoutIdLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayoutIdList;)V
.end method

.method public abstract setTiming(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTiming;)V
.end method

.method public abstract setTransition(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideTransition;)V
.end method

.method public abstract setTxStyles(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideMasterTextStyles;)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetHf()V
.end method

.method public abstract unsetPreserve()V
.end method

.method public abstract unsetSldLayoutIdLst()V
.end method

.method public abstract unsetTiming()V
.end method

.method public abstract unsetTransition()V
.end method

.method public abstract unsetTxStyles()V
.end method

.method public abstract xgetPreserve()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetPreserve(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
