.class public final Lorg/apache/poi/xssf/usermodel/XSSFRelation;
.super Lorg/apache/poi/POIXMLRelation;
.source "SourceFile"


# static fields
.field public static final ACTIVEX_BINS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final ACTIVEX_CONTROLS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final CALC_CHAIN:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final CHART:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final CHARTSHEET:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final CTRL_PROP_RECORDS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final CUSTOM_PROPERTIES:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final CUSTOM_XML_MAPPINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final DIALOG_SHEET_BIN:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final DRAWINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final EXTERNAL_LINKS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final IMAGES:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final IMAGE_BMP:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final IMAGE_DIB:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final IMAGE_EMF:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final IMAGE_EPS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final IMAGE_GIF:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final IMAGE_JPEG:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final IMAGE_PICT:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final IMAGE_PNG:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final IMAGE_TIFF:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final IMAGE_WMF:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final IMAGE_WPG:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final INTL_MACRO_SHEET_BIN:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final MACROS_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final MACRO_ADDIN_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final MACRO_SHEET_BIN:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final MACRO_TEMPLATE_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final NS_CHART:Ljava/lang/String; = "http://schemas.openxmlformats.org/drawingml/2006/chart"

.field public static final NS_DRAWINGML:Ljava/lang/String; = "http://schemas.openxmlformats.org/drawingml/2006/main"

.field public static final NS_SPREADSHEETML:Ljava/lang/String; = "http://schemas.openxmlformats.org/spreadsheetml/2006/main"

.field public static final OLEEMBEDDINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final PACKEMBEDDINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final PIVOT_CACHE_DEFINITION:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final PIVOT_CACHE_RECORDS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final PIVOT_TABLE:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final PRINTER_SETTINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final SHARED_STRINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final SHEET_COMMENTS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final SHEET_HYPERLINKS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final SINGLE_XML_CELLS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final STYLES:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final TABLE:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final TEMPLATE_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final THEME:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final VBA_MACROS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final VML_DRAWINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final WORKSHEET:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field public static final XLSB_BINARY_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

.field private static final _table:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/xssf/usermodel/XSSFRelation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-class v0, Lorg/apache/poi/xssf/usermodel/XSSFPictureData;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->_table:Ljava/util/Map;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet.main+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/workbook"

    const-string v4, "/xl/workbook.xml"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v2, "application/vnd.ms-excel.sheet.macroEnabled.main+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument"

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->MACROS_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.template.main+xml"

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->TEMPLATE_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v2, "application/vnd.ms-excel.template.macroEnabled.main+xml"

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->MACRO_TEMPLATE_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v2, "application/vnd.ms-excel.addin.macroEnabled.main+xml"

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->MACRO_ADDIN_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v2, "application/vnd.ms-excel.sheet.binary.macroEnabled.main"

    const-string v4, "/xl/workbook.bin"

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->XLSB_BINARY_WORKBOOK:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-class v2, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    const-string v3, "application/vnd.openxmlformats-officedocument.spreadsheetml.worksheet+xml"

    const-string v4, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/worksheet"

    const-string v6, "/xl/worksheets/sheet#.xml"

    invoke-direct {v1, v3, v4, v6, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->WORKSHEET:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-class v2, Lorg/apache/poi/xssf/usermodel/XSSFChartSheet;

    const-string v3, "application/vnd.openxmlformats-officedocument.spreadsheetml.chartsheet+xml"

    const-string v4, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/chartsheet"

    const-string v6, "/xl/chartsheets/sheet#.xml"

    invoke-direct {v1, v3, v4, v6, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->CHARTSHEET:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-class v2, Lorg/apache/poi/xssf/model/SharedStringsTable;

    const-string v3, "application/vnd.openxmlformats-officedocument.spreadsheetml.sharedStrings+xml"

    const-string v4, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/sharedStrings"

    const-string v6, "/xl/sharedStrings.xml"

    invoke-direct {v1, v3, v4, v6, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHARED_STRINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-class v2, Lorg/apache/poi/xssf/model/StylesTable;

    const-string v3, "application/vnd.openxmlformats-officedocument.spreadsheetml.styles+xml"

    const-string v4, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/styles"

    const-string v6, "/xl/styles.xml"

    invoke-direct {v1, v3, v4, v6, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->STYLES:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-class v2, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    const-string v3, "application/vnd.openxmlformats-officedocument.drawing+xml"

    const-string v4, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/drawing"

    const-string v6, "/xl/drawings/drawing#.xml"

    invoke-direct {v1, v3, v4, v6, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->DRAWINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-class v2, Lorg/apache/poi/xssf/usermodel/XSSFVMLDrawing;

    const-string v3, "application/vnd.openxmlformats-officedocument.vmlDrawing"

    const-string v4, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/vmlDrawing"

    const-string v6, "/xl/drawings/vmlDrawing#.vml"

    invoke-direct {v1, v3, v4, v6, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->VML_DRAWINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-class v2, Lorg/apache/poi/xssf/usermodel/XSSFChart;

    const-string v3, "application/vnd.openxmlformats-officedocument.drawingml.chart+xml"

    const-string v4, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/chart"

    const-string v6, "/xl/charts/chart#.xml"

    invoke-direct {v1, v3, v4, v6, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->CHART:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-class v2, Lorg/apache/poi/xssf/model/MapInfo;

    const-string v3, "application/xml"

    const-string v4, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/xmlMaps"

    const-string v6, "/xl/xmlMaps.xml"

    invoke-direct {v1, v3, v4, v6, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->CUSTOM_XML_MAPPINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-class v2, Lorg/apache/poi/xssf/model/SingleXmlCells;

    const-string v3, "application/vnd.openxmlformats-officedocument.spreadsheetml.tableSingleCells+xml"

    const-string v4, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/tableSingleCells"

    const-string v6, "/xl/tables/tableSingleCells#.xml"

    invoke-direct {v1, v3, v4, v6, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SINGLE_XML_CELLS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-class v2, Lorg/apache/poi/xssf/usermodel/XSSFTable;

    const-string v3, "application/vnd.openxmlformats-officedocument.spreadsheetml.table+xml"

    const-string v4, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/table"

    const-string v6, "/xl/tables/table#.xml"

    invoke-direct {v1, v3, v4, v6, v2}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->TABLE:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/image"

    invoke-direct {v1, v5, v2, v5, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGES:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v3, "image/x-emf"

    const-string v4, "/xl/media/image#.emf"

    invoke-direct {v1, v3, v2, v4, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_EMF:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v3, "image/x-wmf"

    const-string v4, "/xl/media/image#.wmf"

    invoke-direct {v1, v3, v2, v4, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_WMF:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v3, "image/pict"

    const-string v4, "/xl/media/image#.pict"

    invoke-direct {v1, v3, v2, v4, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_PICT:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v3, "image/jpeg"

    const-string v4, "/xl/media/image#.jpeg"

    invoke-direct {v1, v3, v2, v4, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_JPEG:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v3, "image/png"

    const-string v4, "/xl/media/image#.png"

    invoke-direct {v1, v3, v2, v4, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_PNG:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v3, "image/dib"

    const-string v4, "/xl/media/image#.dib"

    invoke-direct {v1, v3, v2, v4, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_DIB:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v3, "image/gif"

    const-string v4, "/xl/media/image#.gif"

    invoke-direct {v1, v3, v2, v4, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_GIF:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v3, "image/tiff"

    const-string v4, "/xl/media/image#.tiff"

    invoke-direct {v1, v3, v2, v4, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_TIFF:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v3, "image/x-eps"

    const-string v4, "/xl/media/image#.eps"

    invoke-direct {v1, v3, v2, v4, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_EPS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v3, "image/x-ms-bmp"

    const-string v4, "/xl/media/image#.bmp"

    invoke-direct {v1, v3, v2, v4, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_BMP:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v3, "image/x-wpg"

    const-string v4, "/xl/media/image#.wpg"

    invoke-direct {v1, v3, v2, v4, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->IMAGE_WPG:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-class v1, Lorg/apache/poi/xssf/model/CommentsTable;

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.comments+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/comments"

    const-string v4, "/xl/comments#.xml"

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHEET_COMMENTS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/hyperlink"

    invoke-direct {v0, v5, v1, v5, v5}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->SHEET_HYPERLINKS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/oleObject"

    invoke-direct {v0, v5, v1, v5, v5}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->OLEEMBEDDINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/package"

    invoke-direct {v0, v5, v1, v5, v5}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->PACKEMBEDDINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-class v1, Lorg/apache/poi/xssf/usermodel/XSSFVBAPart;

    const-string v2, "application/vnd.ms-office.vbaProject"

    const-string v3, "http://schemas.microsoft.com/office/2006/relationships/vbaProject"

    const-string v4, "/xl/vbaProject.bin"

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->VBA_MACROS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v1, "application/vnd.ms-office.activeX+xml"

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/control"

    const-string v3, "/xl/activeX/activeX#.xml"

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->ACTIVEX_CONTROLS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v1, "application/vnd.ms-office.activeX"

    const-string v2, "http://schemas.microsoft.com/office/2006/relationships/activeXControlBinary"

    const-string v3, "/xl/activeX/activeX#.bin"

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->ACTIVEX_BINS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v1, "http://schemas.microsoft.com/office/2006/relationships/xlMacrosheet"

    const-string v2, "/xl/macroSheets/sheet#.bin"

    invoke-direct {v0, v5, v1, v2, v5}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->MACRO_SHEET_BIN:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v1, "http://schemas.microsoft.com/office/2006/relationships/xlIntlMacrosheet"

    invoke-direct {v0, v5, v1, v2, v5}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->INTL_MACRO_SHEET_BIN:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/dialogsheet"

    const-string v2, "/xl/dialogSheets/sheet#.bin"

    invoke-direct {v0, v5, v1, v2, v5}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->DIALOG_SHEET_BIN:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-class v1, Lorg/apache/poi/xssf/model/ThemesTable;

    const-string v2, "application/vnd.openxmlformats-officedocument.theme+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/theme"

    const-string v4, "/xl/theme/theme#.xml"

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->THEME:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-class v1, Lorg/apache/poi/xssf/model/CalculationChain;

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.calcChain+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/calcChain"

    const-string v4, "/xl/calcChain.xml"

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->CALC_CHAIN:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-class v1, Lorg/apache/poi/xssf/model/ExternalLinksTable;

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.externalLink+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/externalLink"

    const-string v4, "/xl/externalLinks/externalLink#.xmll"

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->EXTERNAL_LINKS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.printerSettings"

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/printerSettings"

    const-string v3, "/xl/printerSettings/printerSettings#.bin"

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->PRINTER_SETTINGS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-class v1, Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.pivotTable+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/pivotTable"

    const-string v4, "/xl/pivotTables/pivotTable#.xml"

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->PIVOT_TABLE:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-class v1, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheDefinition;

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.pivotCacheDefinition+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/pivotCacheDefinition"

    const-string v4, "/xl/pivotCache/pivotCacheDefinition#.xml"

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->PIVOT_CACHE_DEFINITION:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-class v1, Lorg/apache/poi/xssf/usermodel/XSSFPivotCacheRecords;

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.pivotCacheRecords+xml"

    const-string v3, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/pivotCacheRecords"

    const-string v4, "/xl/pivotCache/pivotCacheRecords#.xml"

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->PIVOT_CACHE_RECORDS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/ctrlProp"

    const-string v2, "/xl/ctrlProps/ctrlProp#.xml"

    invoke-direct {v0, v5, v1, v2, v5}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->CTRL_PROP_RECORDS:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    const-string v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.customProperty"

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/customProperty"

    const-string v3, "/xl/customProperty#.bin"

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/apache/poi/xssf/usermodel/XSSFRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->CUSTOM_PROPERTIES:Lorg/apache/poi/xssf/usermodel/XSSFRelation;

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

    sget-object p1, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->_table:Ljava/util/Map;

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/poi/xssf/usermodel/XSSFRelation;
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;->_table:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFRelation;

    return-object p0
.end method
