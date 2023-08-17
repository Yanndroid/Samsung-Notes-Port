.class public Lorg/apache/poi/xslf/usermodel/DrawingTable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Removal;
    version = "3.18"
.end annotation


# instance fields
.field private final table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/DrawingTable;->table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    return-void
.end method


# virtual methods
.method public getRows()[Lorg/apache/poi/xslf/usermodel/DrawingTableRow;
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/DrawingTable;->table:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->getTrArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;

    move-result-object v0

    array-length v1, v0

    new-array v2, v1, [Lorg/apache/poi/xslf/usermodel/DrawingTableRow;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    new-instance v4, Lorg/apache/poi/xslf/usermodel/DrawingTableRow;

    aget-object v5, v0, v3

    invoke-direct {v4, v5}, Lorg/apache/poi/xslf/usermodel/DrawingTableRow;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method
