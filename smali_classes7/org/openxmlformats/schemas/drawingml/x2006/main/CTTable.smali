.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "cttable5f3ftype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTable;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewTblGrid()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableGrid;
.end method

.method public abstract addNewTblPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;
.end method

.method public abstract addNewTr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;
.end method

.method public abstract getTblGrid()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableGrid;
.end method

.method public abstract getTblPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;
.end method

.method public abstract getTrArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;
.end method

.method public abstract getTrArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;
.end method

.method public abstract getTrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewTr(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;
.end method

.method public abstract isSetTblPr()Z
.end method

.method public abstract removeTr(I)V
.end method

.method public abstract setTblGrid(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableGrid;)V
.end method

.method public abstract setTblPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableProperties;)V
.end method

.method public abstract setTrArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;)V
.end method

.method public abstract setTrArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableRow;)V
.end method

.method public abstract sizeOfTrArray()I
.end method

.method public abstract unsetTblPr()V
.end method
