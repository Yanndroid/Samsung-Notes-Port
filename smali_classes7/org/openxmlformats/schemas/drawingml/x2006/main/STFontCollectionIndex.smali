.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/STFontCollectionIndex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STFontCollectionIndex$Factory;,
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STFontCollectionIndex$Enum;
    }
.end annotation


# static fields
.field public static final INT_MAJOR:I = 0x1

.field public static final INT_MINOR:I = 0x2

.field public static final INT_NONE:I = 0x3

.field public static final MAJOR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STFontCollectionIndex$Enum;

.field public static final MINOR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STFontCollectionIndex$Enum;

.field public static final NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STFontCollectionIndex$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STFontCollectionIndex;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "stfontcollectionindex6766type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STFontCollectionIndex;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "major"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STFontCollectionIndex$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STFontCollectionIndex$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STFontCollectionIndex;->MAJOR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STFontCollectionIndex$Enum;

    const-string v0, "minor"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STFontCollectionIndex$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STFontCollectionIndex$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STFontCollectionIndex;->MINOR:Lorg/openxmlformats/schemas/drawingml/x2006/main/STFontCollectionIndex$Enum;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STFontCollectionIndex$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STFontCollectionIndex$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STFontCollectionIndex;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STFontCollectionIndex$Enum;

    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
