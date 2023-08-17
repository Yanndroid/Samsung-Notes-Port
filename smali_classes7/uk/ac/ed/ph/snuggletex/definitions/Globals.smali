.class public final Luk/ac/ed/ph/snuggletex/definitions/Globals;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL_MODES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final CSS_PROPERTIES_DOCUMENT_URN:Ljava/lang/String; = "urn:snuggletex-css-properties"

.field public static final CSS_PROPERTIES_NAME:Ljava/lang/String; = "uk/ac/ed/ph/snuggletex/css.properties"

.field public static final EXTRACT_CHILD_NODES_XSL_RESOURCE_NAME:Ljava/lang/String; = "classpath:/uk/ac/ed/ph/snuggletex/extract-child-nodes.xsl"

.field public static final GENERAL_MESSAGES_PROPERTIES_BASENAME:Ljava/lang/String; = "uk/ac/ed/ph/snuggletex/general-messages"

.field public static final MATHML_ENTITIES_MAP_XSL_RESOURCE_NAME:Ljava/lang/String; = "classpath:/uk/ac/ed/ph/snuggletex/mathml-entities-map.xsl"

.field public static final MATHML_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/1998/Math/MathML"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MATHML_PREF_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2002/Math/preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MATHML_TO_XHTML_XSL_RESOURCE_NAME:Ljava/lang/String; = "classpath:/uk/ac/ed/ph/snuggletex/mathml-to-xhtml.xsl"

.field public static final MATH_MODE_ONLY:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARA_MODE_ONLY:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRIP_ALL_NAMESPACES_XSL_RESOURCE_NAME:Ljava/lang/String; = "classpath:/uk/ac/ed/ph/snuggletex/strip-all-namespaces.xsl"

.field public static final STRIP_XHTML_NAMESPACE_XSL_RESOURCE_NAME:Ljava/lang/String; = "classpath:/uk/ac/ed/ph/snuggletex/strip-xhtml-namespace.xsl"

.field public static final TEXT_MODE_ONLY:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final XHTML_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/1999/xhtml"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final XMLNS_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final XML_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->MATH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/Globals;->MATH_MODE_ONLY:Ljava/util/EnumSet;

    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->PARAGRAPH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    sput-object v2, Luk/ac/ed/ph/snuggletex/definitions/Globals;->PARA_MODE_ONLY:Ljava/util/EnumSet;

    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->LR:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    sput-object v3, Luk/ac/ed/ph/snuggletex/definitions/Globals;->TEXT_MODE_ONLY:Ljava/util/EnumSet;

    invoke-static {v1, v0, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Luk/ac/ed/ph/snuggletex/definitions/Globals;->ALL_MODES:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
