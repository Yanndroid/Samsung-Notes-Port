.class final Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl$1AnimRotList;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;->getAnimRotList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "1AnimRotList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateRotationBehavior;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl$1AnimRotList;->this$0:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateRotationBehavior;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl$1AnimRotList;->add(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateRotationBehavior;)V

    return-void
.end method

.method public add(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateRotationBehavior;)V
    .locals 1

    iget-object v0, p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl$1AnimRotList;->this$0:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;->insertNewAnimRot(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateRotationBehavior;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateRotationBehavior;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl$1AnimRotList;->get(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateRotationBehavior;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateRotationBehavior;
    .locals 1

    iget-object v0, p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl$1AnimRotList;->this$0:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;->getAnimRotArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateRotationBehavior;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl$1AnimRotList;->remove(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateRotationBehavior;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateRotationBehavior;
    .locals 2

    iget-object v0, p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl$1AnimRotList;->this$0:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;->getAnimRotArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateRotationBehavior;

    move-result-object v0

    iget-object v1, p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl$1AnimRotList;->this$0:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;

    invoke-virtual {v1, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;->removeAnimRot(I)V

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateRotationBehavior;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl$1AnimRotList;->set(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateRotationBehavior;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateRotationBehavior;

    move-result-object p1

    return-object p1
.end method

.method public set(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateRotationBehavior;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateRotationBehavior;
    .locals 2

    iget-object v0, p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl$1AnimRotList;->this$0:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;->getAnimRotArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateRotationBehavior;

    move-result-object v0

    iget-object v1, p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl$1AnimRotList;->this$0:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;

    invoke-virtual {v1, p1, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;->setAnimRotArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLAnimateRotationBehavior;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl$1AnimRotList;->this$0:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTTimeNodeListImpl;->sizeOfAnimRotArray()I

    move-result v0

    return v0
.end method
