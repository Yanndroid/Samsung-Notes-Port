.class public final Lorg/apache/poi/xwpf/usermodel/XWPFRelation;
.super Lorg/apache/poi/POIXMLRelation;
.source "SourceFile"


# static fields
.field public static final COMMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final ENDNOTE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final FONT_TABLE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final FOOTER:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final FOOTNOTE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final GLOSSARY_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final HEADER:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final HYPERLINK:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_BMP:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_DIB:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_EMF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_EPS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_GIF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_JPEG:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_PICT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_PNG:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_TIFF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_WMF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final IMAGE_WPG:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final MACRO_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final MACRO_TEMPLATE_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final NUMBERING:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final SETTINGS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final STYLES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final TEMPLATE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final THEME:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field public static final WEB_SETTINGS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

.field private static final _table:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xwpf/usermodel/XWPFRelation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-class v0, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->_table:Ljava/util/Map;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.document.main+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"

    const-string v4, "/word/document.xml"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.template.main+xml"

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->TEMPLATE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v2, "application/vnd.ms-word.document.macroEnabled.main+xml"

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->MACRO_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v2, "application/vnd.ms-word.template.macroEnabledTemplate.main+xml"

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->MACRO_TEMPLATE_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.document.glossary+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/glossaryDocument"

    const-string v4, "/word/glossary/document.xml"

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->GLOSSARY_DOCUMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-class v2, Lorg/apache/poi/xwpf/usermodel/XWPFNumbering;

    const-string v3, "application/vnd.openxmlformats-officedocument.wordprocessingml.numbering+xml"

    const-string v4, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/numbering"

    const-string v6, "/word/numbering.xml"

    invoke-direct {v1, v3, v4, v6, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->NUMBERING:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.fontTable+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/fontTable"

    const-string v4, "/word/fontTable.xml"

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->FONT_TABLE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-class v2, Lorg/apache/poi/xwpf/usermodel/XWPFSettings;

    const-string v3, "application/vnd.openxmlformats-officedocument.wordprocessingml.settings+xml"

    const-string v4, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/settings"

    const-string v6, "/word/settings.xml"

    invoke-direct {v1, v3, v4, v6, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->SETTINGS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-class v2, Lorg/apache/poi/xwpf/usermodel/XWPFStyles;

    const-string v3, "application/vnd.openxmlformats-officedocument.wordprocessingml.styles+xml"

    const-string v4, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/styles"

    const-string v6, "/word/styles.xml"

    invoke-direct {v1, v3, v4, v6, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->STYLES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.webSettings+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/webSettings"

    const-string v4, "/word/webSettings.xml"

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->WEB_SETTINGS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-class v2, Lorg/apache/poi/xwpf/usermodel/XWPFHeader;

    const-string v3, "application/vnd.openxmlformats-officedocument.wordprocessingml.header+xml"

    const-string v4, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/header"

    const-string v6, "/word/header#.xml"

    invoke-direct {v1, v3, v4, v6, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->HEADER:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-class v2, Lorg/apache/poi/xwpf/usermodel/XWPFFooter;

    const-string v3, "application/vnd.openxmlformats-officedocument.wordprocessingml.footer+xml"

    const-string v4, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/footer"

    const-string v6, "/word/footer#.xml"

    invoke-direct {v1, v3, v4, v6, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->FOOTER:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v2, "application/vnd.openxmlformats-officedocument.theme+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/theme"

    const-string v4, "/word/theme/theme#.xml"

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->THEME:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/hyperlink"

    invoke-direct {v1, v5, v2, v5, v5}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->HYPERLINK:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/comments"

    invoke-direct {v1, v5, v2, v5, v5}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->COMMENT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-class v2, Lorg/apache/poi/xwpf/usermodel/XWPFFootnotes;

    const-string v3, "application/vnd.openxmlformats-officedocument.wordprocessingml.footnotes+xml"

    const-string v4, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/footnotes"

    const-string v6, "/word/footnotes.xml"

    invoke-direct {v1, v3, v4, v6, v2}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->FOOTNOTE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/endnotes"

    invoke-direct {v1, v5, v2, v5, v5}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->ENDNOTE:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v2, "image/x-emf"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    const-string v4, "/word/media/image#.emf"

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_EMF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v2, "image/x-wmf"

    const-string v4, "/word/media/image#.wmf"

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_WMF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v2, "image/pict"

    const-string v4, "/word/media/image#.pict"

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_PICT:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v2, "image/jpeg"

    const-string v4, "/word/media/image#.jpeg"

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_JPEG:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v2, "image/png"

    const-string v4, "/word/media/image#.png"

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_PNG:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v2, "image/dib"

    const-string v4, "/word/media/image#.dib"

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_DIB:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v2, "image/gif"

    const-string v4, "/word/media/image#.gif"

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_GIF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v2, "image/tiff"

    const-string v4, "/word/media/image#.tiff"

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_TIFF:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v2, "image/x-eps"

    const-string v4, "/word/media/image#.eps"

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_EPS:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v2, "image/x-ms-bmp"

    const-string v4, "/word/media/image#.bmp"

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_BMP:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    const-string v2, "image/x-wpg"

    const-string v4, "/word/media/image#.wpg"

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGE_WPG:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    new-instance v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    invoke-direct {v1, v5, v3, v5, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->IMAGES:Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/poi/POIXMLDocumentPart;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/POIXMLRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sget-object p1, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->_table:Ljava/util/Map;

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/XWPFRelation;
    .locals 1

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;->_table:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xwpf/usermodel/XWPFRelation;

    return-object p0
.end method
