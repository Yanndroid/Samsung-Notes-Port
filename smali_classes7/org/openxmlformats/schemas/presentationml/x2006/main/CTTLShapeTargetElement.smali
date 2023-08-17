.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLShapeTargetElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLShapeTargetElement$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLShapeTargetElement;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "cttlshapetargetelement2763type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLShapeTargetElement;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBg()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract addNewGraphicEl()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationElementChoice;
.end method

.method public abstract addNewOleChartEl()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLOleChartTargetElement;
.end method

.method public abstract addNewSubSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLSubShapeId;
.end method

.method public abstract addNewTxEl()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTextTargetElement;
.end method

.method public abstract getBg()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;
.end method

.method public abstract getGraphicEl()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationElementChoice;
.end method

.method public abstract getOleChartEl()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLOleChartTargetElement;
.end method

.method public abstract getSpid()Ljava/lang/String;
.end method

.method public abstract getSubSp()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLSubShapeId;
.end method

.method public abstract getTxEl()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTextTargetElement;
.end method

.method public abstract isSetBg()Z
.end method

.method public abstract isSetGraphicEl()Z
.end method

.method public abstract isSetOleChartEl()Z
.end method

.method public abstract isSetSubSp()Z
.end method

.method public abstract isSetTxEl()Z
.end method

.method public abstract setBg(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmpty;)V
.end method

.method public abstract setGraphicEl(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAnimationElementChoice;)V
.end method

.method public abstract setOleChartEl(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLOleChartTargetElement;)V
.end method

.method public abstract setSpid(Ljava/lang/String;)V
.end method

.method public abstract setSubSp(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLSubShapeId;)V
.end method

.method public abstract setTxEl(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTextTargetElement;)V
.end method

.method public abstract unsetBg()V
.end method

.method public abstract unsetGraphicEl()V
.end method

.method public abstract unsetOleChartEl()V
.end method

.method public abstract unsetSubSp()V
.end method

.method public abstract unsetTxEl()V
.end method

.method public abstract xgetSpid()Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeID;
.end method

.method public abstract xsetSpid(Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeID;)V
.end method
