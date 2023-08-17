.class final Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl$1OMathParaList;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->getOMathParaList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "1OMathParaList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl$1OMathParaList;->this$0:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl$1OMathParaList;->add(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;)V

    return-void
.end method

.method public add(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;)V
    .locals 1

    iget-object v0, p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl$1OMathParaList;->this$0:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->insertNewOMathPara(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl$1OMathParaList;->get(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;
    .locals 1

    iget-object v0, p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl$1OMathParaList;->this$0:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->getOMathParaArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl$1OMathParaList;->remove(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;
    .locals 2

    iget-object v0, p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl$1OMathParaList;->this$0:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->getOMathParaArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;

    move-result-object v0

    iget-object v1, p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl$1OMathParaList;->this$0:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;

    invoke-virtual {v1, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->removeOMathPara(I)V

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl$1OMathParaList;->set(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;

    move-result-object p1

    return-object p1
.end method

.method public set(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;
    .locals 2

    iget-object v0, p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl$1OMathParaList;->this$0:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->getOMathParaArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;

    move-result-object v0

    iget-object v1, p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl$1OMathParaList;->this$0:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;

    invoke-virtual {v1, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->setOMathParaArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTOMathPara;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl$1OMathParaList;->this$0:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathImpl;->sizeOfOMathParaArray()I

    move-result v0

    return v0
.end method
