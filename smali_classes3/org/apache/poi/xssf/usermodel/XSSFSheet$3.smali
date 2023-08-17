.class Lorg/apache/poi/xssf/usermodel/XSSFSheet$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xssf/usermodel/XSSFPivotTable$PivotTableReferenceConfigurator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createPivotTable(Lorg/apache/poi/ss/usermodel/Name;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/usermodel/Sheet;)Lorg/apache/poi/xssf/usermodel/XSSFPivotTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

.field public final synthetic val$source:Lorg/apache/poi/ss/usermodel/Name;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;Lorg/apache/poi/ss/usermodel/Name;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet$3;->this$0:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet$3;->val$source:Lorg/apache/poi/ss/usermodel/Name;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configureReference(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet$3;->val$source:Lorg/apache/poi/ss/usermodel/Name;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Name;->getNameName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheetSource;->setName(Ljava/lang/String;)V

    return-void
.end method
