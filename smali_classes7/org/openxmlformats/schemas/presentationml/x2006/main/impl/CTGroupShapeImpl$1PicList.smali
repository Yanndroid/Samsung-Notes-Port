.class final Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl$1PicList;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;->getPicList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "1PicList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl$1PicList;->this$0:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl$1PicList;->add(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;)V

    return-void
.end method

.method public add(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;)V
    .locals 1

    iget-object v0, p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl$1PicList;->this$0:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;->insertNewPic(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl$1PicList;->get(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;
    .locals 1

    iget-object v0, p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl$1PicList;->this$0:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;->getPicArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl$1PicList;->remove(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;
    .locals 2

    iget-object v0, p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl$1PicList;->this$0:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;->getPicArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    move-result-object v0

    iget-object v1, p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl$1PicList;->this$0:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;

    invoke-virtual {v1, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;->removePic(I)V

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl$1PicList;->set(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    move-result-object p1

    return-object p1
.end method

.method public set(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;
    .locals 2

    iget-object v0, p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl$1PicList;->this$0:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;->getPicArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    move-result-object v0

    iget-object v1, p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl$1PicList;->this$0:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;

    invoke-virtual {v1, p1, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;->setPicArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl$1PicList;->this$0:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTGroupShapeImpl;->sizeOfPicArray()I

    move-result v0

    return v0
.end method