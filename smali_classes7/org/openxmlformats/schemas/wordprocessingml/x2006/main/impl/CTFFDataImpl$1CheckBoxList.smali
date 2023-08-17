.class final Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl$1CheckBoxList;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl;->getCheckBoxList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "1CheckBoxList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl$1CheckBoxList;->this$0:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl$1CheckBoxList;->add(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;)V

    return-void
.end method

.method public add(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;)V
    .locals 1

    iget-object v0, p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl$1CheckBoxList;->this$0:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl;->insertNewCheckBox(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl$1CheckBoxList;->get(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;
    .locals 1

    iget-object v0, p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl$1CheckBoxList;->this$0:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl;->getCheckBoxArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl$1CheckBoxList;->remove(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;
    .locals 2

    iget-object v0, p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl$1CheckBoxList;->this$0:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl;->getCheckBoxArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;

    move-result-object v0

    iget-object v1, p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl$1CheckBoxList;->this$0:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl;

    invoke-virtual {v1, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl;->removeCheckBox(I)V

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl$1CheckBoxList;->set(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;

    move-result-object p1

    return-object p1
.end method

.method public set(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;
    .locals 2

    iget-object v0, p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl$1CheckBoxList;->this$0:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl;

    invoke-virtual {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl;->getCheckBoxArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;

    move-result-object v0

    iget-object v1, p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl$1CheckBoxList;->this$0:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl;

    invoke-virtual {v1, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl;->setCheckBoxArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl$1CheckBoxList;->this$0:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl;

    invoke-virtual {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFFDataImpl;->sizeOfCheckBoxArray()I

    move-result v0

    return v0
.end method
