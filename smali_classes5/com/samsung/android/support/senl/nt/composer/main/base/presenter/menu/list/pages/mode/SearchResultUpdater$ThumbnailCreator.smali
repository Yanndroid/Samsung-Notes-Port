.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbnailCreator"
.end annotation


# instance fields
.field private mCachePath:Ljava/lang/String;

.field private mCapture:Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

.field private mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field private mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;->mCapture:Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;->mCachePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createOriginalThumbnail(I)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getPageInfo(I)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->getThumbnailFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v4

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;->mCapture:Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v5

    const/4 v7, 0x0

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->setThumbnail(Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;IZ)V

    :cond_1
    return-void
.end method

.method public createSearchThumbnail(Lcom/samsung/android/sdk/composer/search/SearchData;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;
    .locals 15

    move-object v6, p0

    iget-object v0, v6, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iget-object v1, v6, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/composer/search/SearchData;->getPageIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getPageInfo(I)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->getThumbnailFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v9, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "createSearchThumbnail# thumbnailBitmap is null"

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :cond_0
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v13, 0x0

    invoke-virtual {v12, v9, v13, v13, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v1, v6, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/composer/search/SearchData;->getPageIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v1

    iget-object v2, v6, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;->mCapture:Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/composer/search/SearchData;->getPageIndex()I

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->setContents(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v3

    iget-object v0, v6, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getThumbnailRatio()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/composer/search/SearchData;->getRects()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/composer/search/SearchData;->getIsFills()Ljava/util/ArrayList;

    move-result-object v14

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;->getDrawRect(IIFLjava/util/ArrayList;Ljava/util/ArrayList;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "createSearchThumbnail# rectBitmap is null"

    goto :goto_0

    :cond_1
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v12, v1, v13, v13, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v12, v0, v13, v13, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v6, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;->mCachePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/composer/search/SearchData;->getPageIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v11, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/util/ImageUtils;->makeJpg(Landroid/graphics/Bitmap;Ljava/lang/String;IZ)Z

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/list/pages/PageId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDrawRect(IIFLjava/util/ArrayList;Ljava/util/ArrayList;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIF",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_3

    if-gtz p1, :cond_0

    goto :goto_2

    :cond_0
    int-to-float p1, p1

    mul-float/2addr p1, p3

    float-to-int p1, p1

    int-to-float p2, p2

    mul-float/2addr p2, p3

    float-to-int p2, p2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const v1, 0x4dfc7f66    # 5.29525952E8f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    mul-float/2addr v5, p3

    iput v5, v4, Landroid/graphics/RectF;->left:F

    iget v5, v4, Landroid/graphics/RectF;->top:F

    mul-float/2addr v5, p3

    iput v5, v4, Landroid/graphics/RectF;->top:F

    iget v5, v4, Landroid/graphics/RectF;->right:F

    mul-float/2addr v5, p3

    iput v5, v4, Landroid/graphics/RectF;->right:F

    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v5, p3

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    if-ge v3, v2, :cond_1

    invoke-virtual {p5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_1

    :cond_1
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_1
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p2, v4, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object p1

    :cond_3
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;->mCapture:Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->close()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;->mCapture:Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/SearchResultUpdater$ThumbnailCreator;->mCachePath:Ljava/lang/String;

    return-void
.end method
