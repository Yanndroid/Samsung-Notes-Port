.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalAlignRun;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalAlignRun$Factory;,
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalAlignRun$Enum;
    }
.end annotation


# static fields
.field public static final BASELINE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalAlignRun$Enum;

.field public static final INT_BASELINE:I = 0x1

.field public static final INT_SUBSCRIPT:I = 0x3

.field public static final INT_SUPERSCRIPT:I = 0x2

.field public static final SUBSCRIPT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalAlignRun$Enum;

.field public static final SUPERSCRIPT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalAlignRun$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalAlignRun;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "stverticalalignrun297ctype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalAlignRun;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "baseline"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalAlignRun$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalAlignRun$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalAlignRun;->BASELINE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalAlignRun$Enum;

    const-string v0, "superscript"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalAlignRun$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalAlignRun$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalAlignRun;->SUPERSCRIPT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalAlignRun$Enum;

    const-string v0, "subscript"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalAlignRun$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalAlignRun$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalAlignRun;->SUBSCRIPT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalAlignRun$Enum;

    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
