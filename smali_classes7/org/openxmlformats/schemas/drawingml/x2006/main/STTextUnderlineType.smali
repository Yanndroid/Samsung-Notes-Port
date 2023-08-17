.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Factory;,
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;
    }
.end annotation


# static fields
.field public static final DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final DASH_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final DASH_LONG:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final DASH_LONG_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final DBL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final DOTTED:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final DOTTED_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final DOT_DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final DOT_DASH_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final DOT_DOT_DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final DOT_DOT_DASH_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final INT_DASH:I = 0x8

.field public static final INT_DASH_HEAVY:I = 0x9

.field public static final INT_DASH_LONG:I = 0xa

.field public static final INT_DASH_LONG_HEAVY:I = 0xb

.field public static final INT_DBL:I = 0x4

.field public static final INT_DOTTED:I = 0x6

.field public static final INT_DOTTED_HEAVY:I = 0x7

.field public static final INT_DOT_DASH:I = 0xc

.field public static final INT_DOT_DASH_HEAVY:I = 0xd

.field public static final INT_DOT_DOT_DASH:I = 0xe

.field public static final INT_DOT_DOT_DASH_HEAVY:I = 0xf

.field public static final INT_HEAVY:I = 0x5

.field public static final INT_NONE:I = 0x1

.field public static final INT_SNG:I = 0x3

.field public static final INT_WAVY:I = 0x10

.field public static final INT_WAVY_DBL:I = 0x12

.field public static final INT_WAVY_HEAVY:I = 0x11

.field public static final INT_WORDS:I = 0x2

.field public static final NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final SNG:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final WAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final WAVY_DBL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final WAVY_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final WORDS:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "sttextunderlinetype469atype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->NONE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v0, "words"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->WORDS:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v0, "sng"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->SNG:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v0, "dbl"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DBL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v0, "heavy"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v0, "dotted"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DOTTED:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v0, "dottedHeavy"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DOTTED_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v0, "dash"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v0, "dashHeavy"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DASH_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v0, "dashLong"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DASH_LONG:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v0, "dashLongHeavy"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DASH_LONG_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v0, "dotDash"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DOT_DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v0, "dotDashHeavy"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DOT_DASH_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v0, "dotDotDash"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DOT_DOT_DASH:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v0, "dotDotDashHeavy"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->DOT_DOT_DASH_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v0, "wavy"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->WAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v0, "wavyHeavy"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->WAVY_HEAVY:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    const-string v0, "wavyDbl"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType;->WAVY_DBL:Lorg/openxmlformats/schemas/drawingml/x2006/main/STTextUnderlineType$Enum;

    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
