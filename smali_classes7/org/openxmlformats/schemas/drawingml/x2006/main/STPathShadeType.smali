.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Factory;,
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;
    }
.end annotation


# static fields
.field public static final CIRCLE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;

.field public static final INT_CIRCLE:I = 0x2

.field public static final INT_RECT:I = 0x3

.field public static final INT_SHAPE:I = 0x1

.field public static final RECT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;

.field public static final SHAPE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "stpathshadetype93c3type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "shape"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType;->SHAPE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;

    const-string v0, "circle"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType;->CIRCLE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;

    const-string v0, "rect"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType;->RECT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPathShadeType$Enum;

    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
