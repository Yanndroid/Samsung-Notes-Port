.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctcommonslidedata8c7ftype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBg()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;
.end method

.method public abstract addNewControls()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTControlList;
.end method

.method public abstract addNewCustDataLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerDataList;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
.end method

.method public abstract getBg()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;
.end method

.method public abstract getControls()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTControlList;
.end method

.method public abstract getCustDataLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerDataList;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
.end method

.method public abstract isSetBg()Z
.end method

.method public abstract isSetControls()Z
.end method

.method public abstract isSetCustDataLst()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract setBg(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;)V
.end method

.method public abstract setControls(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTControlList;)V
.end method

.method public abstract setCustDataLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerDataList;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setSpTree(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;)V
.end method

.method public abstract unsetBg()V
.end method

.method public abstract unsetControls()V
.end method

.method public abstract unsetCustDataLst()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract xgetName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetName(Lorg/apache/xmlbeans/XmlString;)V
.end method
