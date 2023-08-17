.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Factory;,
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;
    }
.end annotation


# static fields
.field public static final EA_VERT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

.field public static final HORZ:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

.field public static final INT_EA_VERT:I = 0x5

.field public static final INT_HORZ:I = 0x1

.field public static final INT_MONGOLIAN_VERT:I = 0x6

.field public static final INT_VERT:I = 0x2

.field public static final INT_VERT_270:I = 0x3

.field public static final INT_WORD_ART_VERT:I = 0x4

.field public static final INT_WORD_ART_VERT_RTL:I = 0x7

.field public static final MONGOLIAN_VERT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

.field public static final VERT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

.field public static final VERT_270:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

.field public static final WORD_ART_VERT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

.field public static final WORD_ART_VERT_RTL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "sttextverticaltyped988type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "horz"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType;->HORZ:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    const-string v0, "vert"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType;->VERT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    const-string v0, "vert270"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType;->VERT_270:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    const-string v0, "wordArtVert"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType;->WORD_ART_VERT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    const-string v0, "eaVert"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType;->EA_VERT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    const-string v0, "mongolianVert"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType;->MONGOLIAN_VERT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    const-string v0, "wordArtVertRtl"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType;->WORD_ART_VERT_RTL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextVerticalType$Enum;

    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
