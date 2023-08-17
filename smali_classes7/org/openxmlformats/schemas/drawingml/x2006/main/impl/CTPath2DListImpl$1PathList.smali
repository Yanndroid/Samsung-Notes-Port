.class final Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl$1PathList;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl;->getPathList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "1PathList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl$1PathList;->this$0:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl$1PathList;->add(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)V

    return-void
.end method

.method public add(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)V
    .locals 1

    iget-object v0, p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl$1PathList;->this$0:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl;->insertNewPath(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl$1PathList;->get(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    .locals 1

    iget-object v0, p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl$1PathList;->this$0:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl;->getPathArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl$1PathList;->remove(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    .locals 2

    iget-object v0, p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl$1PathList;->this$0:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl;->getPathArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    move-result-object v0

    iget-object v1, p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl$1PathList;->this$0:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl;

    invoke-virtual {v1, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl;->removePath(I)V

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl$1PathList;->set(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    move-result-object p1

    return-object p1
.end method

.method public set(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;
    .locals 2

    iget-object v0, p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl$1PathList;->this$0:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl;->getPathArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;

    move-result-object v0

    iget-object v1, p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl$1PathList;->this$0:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl;

    invoke-virtual {v1, p1, p2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl;->setPathArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTPath2D;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl$1PathList;->this$0:Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl;

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/impl/CTPath2DListImpl;->sizeOfPathArray()I

    move-result v0

    return v0
.end method
