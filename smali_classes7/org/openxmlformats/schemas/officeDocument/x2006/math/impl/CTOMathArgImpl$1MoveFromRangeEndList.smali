.class final Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl$1MoveFromRangeEndList;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->getMoveFromRangeEndList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "1MoveFromRangeEndList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl$1MoveFromRangeEndList;->this$0:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl$1MoveFromRangeEndList;->add(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V

    return-void
.end method

.method public add(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V
    .locals 1

    iget-object v0, p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl$1MoveFromRangeEndList;->this$0:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->insertNewMoveFromRangeEnd(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl$1MoveFromRangeEndList;->get(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
    .locals 1

    iget-object v0, p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl$1MoveFromRangeEndList;->this$0:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->getMoveFromRangeEndArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl$1MoveFromRangeEndList;->remove(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
    .locals 2

    iget-object v0, p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl$1MoveFromRangeEndList;->this$0:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->getMoveFromRangeEndArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    move-result-object v0

    iget-object v1, p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl$1MoveFromRangeEndList;->this$0:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;

    invoke-virtual {v1, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->removeMoveFromRangeEnd(I)V

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl$1MoveFromRangeEndList;->set(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    move-result-object p1

    return-object p1
.end method

.method public set(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;
    .locals 2

    iget-object v0, p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl$1MoveFromRangeEndList;->this$0:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->getMoveFromRangeEndArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;

    move-result-object v0

    iget-object v1, p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl$1MoveFromRangeEndList;->this$0:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;

    invoke-virtual {v1, p1, p2}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->setMoveFromRangeEndArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTMarkupRange;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl$1MoveFromRangeEndList;->this$0:Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/math/impl/CTOMathArgImpl;->sizeOfMoveFromRangeEndArray()I

    move-result v0

    return v0
.end method
