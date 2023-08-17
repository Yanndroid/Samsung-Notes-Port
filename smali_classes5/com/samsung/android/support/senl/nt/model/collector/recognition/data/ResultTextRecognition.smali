.class public Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mLinkInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;->mTextInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;->mLinkInfoList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public convertFromResultSpenRecognizer(Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;Ljava/lang/String;I)V
    .locals 8

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;->resultString:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;

    invoke-direct {v3}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;-><init>()V

    iget-object v4, p1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;->resultString:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->str:Ljava/lang/String;

    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;->resultRectF:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v4, v3, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->rect:Landroid/graphics/RectF;

    const/4 v4, 0x1

    iput v4, v3, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->contentType:I

    iput-object p2, v3, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->pageUuid:Ljava/lang/String;

    iput p3, v3, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->pageWidth:I

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;->mTextInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;->resultLinkString:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_1

    new-instance v2, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;-><init>()V

    iget-object v3, p1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;->resultLinkString:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->linkStr:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;->repObjectUuid:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->repObjectUuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;->resultStrokeRectF:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iget v6, v3, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget v7, v3, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-direct {v4, v5, v6, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, v2, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->strokeRect:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;->linkType:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->linkType:I

    iget-object v3, p1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;->resultStrokeIndex:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, v2, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->handleList:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;->lastCharRect:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iget v6, v3, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget v7, v3, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-direct {v4, v5, v6, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, v2, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->lastCharRect:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;->leftCharRect:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iget v6, v3, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget v7, v3, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-direct {v4, v5, v6, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, v2, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->leftCharRect:Landroid/graphics/Rect;

    iput-object p2, v2, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->pageUuid:Ljava/lang/String;

    iput p3, v2, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->pageWidth:I

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;->mLinkInfoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_1
    return-void
.end method

.method public getLinkInfoList()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;->mLinkInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getTextInfoList()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;->mTextInfoList:Ljava/util/List;

    return-object v0
.end method
