.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Factory;,
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;
    }
.end annotation


# static fields
.field public static final BOTH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;

.field public static final BOTTOM:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;

.field public static final CENTER:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;

.field public static final INT_BOTH:I = 0x3

.field public static final INT_BOTTOM:I = 0x4

.field public static final INT_CENTER:I = 0x2

.field public static final INT_TOP:I = 0x1

.field public static final TOP:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "stverticaljc3629type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "top"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc;->TOP:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;

    const-string v0, "center"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc;->CENTER:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;

    const-string v0, "both"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc;->BOTH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;

    const-string v0, "bottom"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc;->BOTTOM:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalJc$Enum;

    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
