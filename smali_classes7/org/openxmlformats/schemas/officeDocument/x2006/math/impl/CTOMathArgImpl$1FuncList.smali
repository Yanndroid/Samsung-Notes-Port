.class final Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl$1FuncList;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->getFuncList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "1FuncList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl$1FuncList;->this$0:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl$1FuncList;->add(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;)V

    return-void
.end method

.method public add(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;)V
    .locals 1

    iget-object v0, p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl$1FuncList;->this$0:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->insertNewFunc(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl$1FuncList;->get(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;
    .locals 1

    iget-object v0, p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl$1FuncList;->this$0:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->getFuncArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl$1FuncList;->remove(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;
    .locals 2

    iget-object v0, p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl$1FuncList;->this$0:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->getFuncArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;

    move-result-object v0

    iget-object v1, p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl$1FuncList;->this$0:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;

    invoke-virtual {v1, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->removeFunc(I)V

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl$1FuncList;->set(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;

    move-result-object p1

    return-object p1
.end method

.method public set(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;
    .locals 2

    iget-object v0, p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl$1FuncList;->this$0:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->getFuncArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;

    move-result-object v0

    iget-object v1, p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl$1FuncList;->this$0:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;

    invoke-virtual {v1, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->setFuncArray(ILorg/openxmlformats/schemas/officeDocument/x2006/math/CTFunc;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl$1FuncList;->this$0:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->sizeOfFuncArray()I

    move-result v0

    return v0
.end method
