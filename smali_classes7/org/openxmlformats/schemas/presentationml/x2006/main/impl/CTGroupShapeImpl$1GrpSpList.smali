.class final Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl$1GrpSpList;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;->getGrpSpList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "1GrpSpList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl$1GrpSpList;->this$0:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl$1GrpSpList;->add(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;)V

    return-void
.end method

.method public add(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;)V
    .locals 1

    iget-object v0, p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl$1GrpSpList;->this$0:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;->insertNewGrpSp(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl$1GrpSpList;->get(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    .locals 1

    iget-object v0, p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl$1GrpSpList;->this$0:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;->getGrpSpArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl$1GrpSpList;->remove(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    .locals 2

    iget-object v0, p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl$1GrpSpList;->this$0:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;->getGrpSpArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v0

    iget-object v1, p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl$1GrpSpList;->this$0:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;

    invoke-virtual {v1, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;->removeGrpSp(I)V

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl$1GrpSpList;->set(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object p1

    return-object p1
.end method

.method public set(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
    .locals 2

    iget-object v0, p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl$1GrpSpList;->this$0:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;->getGrpSpArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;

    move-result-object v0

    iget-object v1, p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl$1GrpSpList;->this$0:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;

    invoke-virtual {v1, p1, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;->setGrpSpArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl$1GrpSpList;->this$0:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;->sizeOfGrpSpArray()I

    move-result v0

    return v0
.end method
