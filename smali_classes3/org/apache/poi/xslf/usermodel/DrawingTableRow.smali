.class public Lorg/apache/poi/xslf/usermodel/DrawingTableRow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Removal;
    version = "3.18"
.end annotation


# instance fields
.field private final row:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/DrawingTableRow;->row:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    return-void
.end method


# virtual methods
.method public getCells()[Lorg/apache/poi/xslf/usermodel/DrawingTableCell;
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/DrawingTableRow;->row:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;->getTcArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;

    move-result-object v0

    array-length v1, v0

    new-array v2, v1, [Lorg/apache/poi/xslf/usermodel/DrawingTableCell;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    new-instance v4, Lorg/apache/poi/xslf/usermodel/DrawingTableCell;

    aget-object v5, v0, v3

    invoke-direct {v4, v5}, Lorg/apache/poi/xslf/usermodel/DrawingTableCell;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableCell;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method
