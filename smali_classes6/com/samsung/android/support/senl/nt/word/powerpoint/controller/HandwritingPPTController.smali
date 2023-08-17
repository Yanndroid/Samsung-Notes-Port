.class public Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/HandwritingPPTController;
.super Lcom/samsung/android/support/senl/nt/word/base/controller/HandwritingOfficeController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/word/base/controller/HandwritingOfficeController<",
        "Lorg/apache/poi/xslf/usermodel/XSLFSlide;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HandwritingPPTController"


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Lorg/apache/poi/xslf/usermodel/XSLFSlide;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/word/base/controller/HandwritingOfficeController;-><init>(Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addHandwritingToView(III)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/powerpoint/controller/HandwritingPPTController;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "addHandwritingToView()"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->increaseElementId()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/HandwritingOfficeController;->mElement:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xslf/usermodel/XSLFSlide;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/HandwritingOfficeController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getMarginLeft()I

    move-result v1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/HandwritingOfficeController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getMarginTop()I

    move-result v2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/HandwritingOfficeController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    iget p2, p1, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mWidth:I

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getMarginLeft()I

    move-result p1

    sub-int/2addr p2, p1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/HandwritingOfficeController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getMarginRight()I

    move-result p1

    sub-int v3, p2, p1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/HandwritingOfficeController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    iget v4, p1, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mHeight:I

    sget v5, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mElementId:I

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/word/powerpoint/utils/PPTUtils;->createPicture(Lorg/apache/poi/xslf/usermodel/XSLFSlide;IIIII)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPicture;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "image"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mElementId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ".png"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/HandwritingOfficeController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mInsertHelper:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->hwHashMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "HandwritingPPTController"

    return-object v0
.end method
