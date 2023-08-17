.class public abstract Lcom/samsung/android/support/senl/nt/word/base/controller/HandwritingOfficeController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OfficeElement:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TOfficeElement;"
        }
    .end annotation
.end field

.field public mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/word/base/OfficeView;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/word/base/OfficeView;",
            "TOfficeElement;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/HandwritingOfficeController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/HandwritingOfficeController;->mElement:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addHandwriting(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;II)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/HandwritingOfficeController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-boolean v0, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isContinuousPage:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v7, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/HandwritingOfficeController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget v0, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->prevHeight:I

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p3

    invoke-direct {v7, v1, v0, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/HandwritingOfficeController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget v2, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->prevHeight:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/HandwritingOfficeController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget v4, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->cropHeight:I

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getWidth()I

    move-result v5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/HandwritingOfficeController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v8

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->convertRectContinuousPage(IIIIILandroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/HandwritingOfficeController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/HandwritingOfficeController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object v2, v2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->getHeight()I

    move-result v2

    invoke-static {p1, v1, v2, v0}, Lcom/samsung/android/support/senl/nt/word/common/ConvertUtils;->convertRectF(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    :goto_0
    iget v1, v0, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/HandwritingOfficeController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mDocParams:Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;

    iget v2, p1, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mWidth:I

    mul-int v3, v0, v2

    div-int/2addr v3, v1

    iget p1, p1, Lcom/samsung/android/support/senl/nt/word/base/data/OfficeParams;->mHeight:I

    if-le v3, p1, :cond_1

    mul-int/2addr v1, p1

    div-int/2addr v1, v0

    move v0, p1

    goto :goto_1

    :cond_1
    move v1, v2

    move v0, v3

    :cond_2
    :goto_1
    invoke-virtual {p0, v1, v0, p2}, Lcom/samsung/android/support/senl/nt/word/base/controller/HandwritingOfficeController;->addHandwritingToView(III)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/word/base/controller/HandwritingOfficeController;->mView:Lcom/samsung/android/support/senl/nt/word/base/OfficeView;

    iget-boolean v0, p2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->isContinuousPage:Z

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->mInsertHelper:Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/word/common/FileInsertHelper;->cropHw:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/support/senl/nt/word/common/OfficeCropHeight;

    iget p2, p2, Lcom/samsung/android/support/senl/nt/word/base/OfficeView;->prevHeight:I

    invoke-direct {v1, p2, p3}, Lcom/samsung/android/support/senl/nt/word/common/OfficeCropHeight;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/base/controller/HandwritingOfficeController;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "End handwriting , height : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/word/base/controller/HandwritingOfficeController;->getTag()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Add handwriting error : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public abstract addHandwritingToView(III)Ljava/lang/String;
.end method

.method public abstract getTag()Ljava/lang/String;
.end method
