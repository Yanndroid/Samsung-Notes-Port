.class public Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;
    }
.end annotation


# instance fields
.field private _tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    return-void
.end method


# virtual methods
.method public getStyleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getStyleId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStyleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getStyleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTablePartStyle(Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$TablePartStyle;)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;
    .locals 1

    sget-object v0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle$1;->$SwitchMap$org$apache$poi$xslf$usermodel$XSLFTableStyle$TablePartStyle:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getWholeTbl()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getNwCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getNeCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getSwCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object p1

    return-object p1

    :pswitch_3
    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getSeCell()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object p1

    return-object p1

    :pswitch_4
    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getLastRow()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object p1

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getFirstRow()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object p1

    return-object p1

    :pswitch_6
    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getLastCol()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object p1

    return-object p1

    :pswitch_7
    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getFirstCol()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object p1

    return-object p1

    :pswitch_8
    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getBand2V()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object p1

    return-object p1

    :pswitch_9
    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getBand1V()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object p1

    return-object p1

    :pswitch_a
    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getBand2H()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object p1

    return-object p1

    :pswitch_b
    iget-object p1, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;->getBand1H()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTablePartStyle;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getXmlObject()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/usermodel/XSLFTableStyle;->_tblStyle:Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTableStyle;

    return-object v0
.end method
