.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Factory;,
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;
    }
.end annotation


# static fields
.field public static final INT_LG:I = 0x3

.field public static final INT_MED:I = 0x2

.field public static final INT_SM:I = 0x1

.field public static final LG:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;

.field public static final MED:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;

.field public static final SM:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "stlineendwidth16aatype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "sm"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth;->SM:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;

    const-string v0, "med"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth;->MED:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;

    const-string v0, "lg"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth;->LG:Lorg/openxmlformats/schemas/drawingml/x2006/main/STLineEndWidth$Enum;

    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
