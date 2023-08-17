.class public Lcom/samsung/android/app/notes/widget/capture/CaptureManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CaptureManager"


# instance fields
.field private mBackgroundImage:Z

.field private mCaptureEngine:Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

.field private mCloseDoc:Z

.field private mContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mFilePath:Ljava/lang/String;

.field private mPageColor:I

.field private mPageCount:I

.field private mPageLoadHeight:I

.field private mPageLoadWidth:I

.field private mPageMode:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

.field private mPageRectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private mTextOnly:Z

.field private mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Z)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CaptureManager"

    const-string v1, "CaptureManager# with note"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mCloseDoc:Z

    iput-object p2, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageMode:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageLoadWidth:I

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->isListPageMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->PAGE_RATIO:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    iget p2, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageLoadWidth:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->getHeight(I)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageLoadHeight:I

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->init(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageLoadWidth:I

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->PAGE_RATIO:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->getHeight(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageLoadHeight:I

    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->init()V

    return-void
.end method

.method private init()V
    .locals 10

    const-string v0, "CaptureManager"

    :try_start_0
    new-instance v9, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mFilePath:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageLoadWidth:I

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;

    move-result-object v1

    const/16 v5, 0xfa0

    iget-object v6, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->use(ILjava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;-><init>(Landroid/content/Context;Ljava/lang/String;IIZZZ)V

    iput-object v9, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mCloseDoc:Z

    invoke-direct {p0, v9}, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->init(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init# Initialized, page count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init# Failed to open a SpenWNote "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private init(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mCaptureEngine:Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->setWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageCount:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageMode:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getBackgroundColor()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageColor:I

    iput-boolean v1, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mTextOnly:Z

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->hasBackgroundImage(Ljava/util/List;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mBackgroundImage:Z

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageMode:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    sget-object v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageLoadHeight:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->initSinglePageCaptureRect(I)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageRectList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageCount:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->initListPage()V

    :goto_0
    return-void
.end method

.method private initListPage()V
    .locals 6

    iget v0, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageCount:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    iget-object v4, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v4, v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectCount(Z)I

    move-result v5

    if-gtz v5, :cond_3

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getPDFData()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getTemplateType()I

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextSectionStart(I)I

    move-result v4

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextSectionLength(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->findObjectSpan(II)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mTextOnly:Z

    :cond_4
    return-void
.end method

.method private initSinglePageCaptureRect(I)V
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageRectList:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getPDFData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$PDFData;

    iget-object v7, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageRectList:Ljava/util/List;

    new-instance v8, Landroid/graphics/RectF;

    iget-object v6, v6, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$PDFData;->rect:Landroid/graphics/RectF;

    invoke-direct {v8, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$PDFData;

    iget-object v5, v5, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$PDFData;->rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$PDFData;

    iget-object v2, v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$PDFData;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :cond_1
    move v2, v4

    move v5, v2

    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getDrawnRectOfAllObject()Landroid/graphics/RectF;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;

    iget-object v8, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-virtual {v7}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->measureText()V

    invoke-virtual {v7, v1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getMeasuredFitRect(I)Landroid/graphics/RectF;

    move-result-object v8

    mul-int/lit8 v9, p1, 0x2

    cmpl-float v10, v5, v4

    if-ltz v10, :cond_2

    int-to-float v10, v9

    cmpg-float v5, v5, v10

    if-gtz v5, :cond_2

    cmpl-float v5, v2, v4

    if-gtz v5, :cond_4

    :cond_2
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v5, v5, v4

    if-lez v5, :cond_3

    iget v5, v6, Landroid/graphics/RectF;->top:F

    int-to-float v10, v9

    cmpg-float v5, v5, v10

    if-lez v5, :cond_4

    :cond_3
    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v5, v5, v4

    if-lez v5, :cond_5

    iget v5, v8, Landroid/graphics/RectF;->top:F

    int-to-float v10, v9

    cmpl-float v5, v5, v10

    if-ltz v5, :cond_5

    :cond_4
    iput-boolean v1, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mTextOnly:Z

    :cond_5
    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v5, v5, v4

    if-nez v5, :cond_6

    iput-boolean v1, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mTextOnly:Z

    :cond_6
    iget-boolean v5, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mTextOnly:Z

    if-eqz v5, :cond_a

    invoke-virtual {v7}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getLineCount()I

    move-result v5

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v7, v10}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getLinePosition(I)Landroid/graphics/RectF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v9

    cmpg-float v11, v11, v9

    if-gtz v11, :cond_7

    :goto_2
    invoke-virtual {v7, v10}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getLineEndIndex(I)I

    move-result v5

    goto :goto_4

    :cond_7
    move v10, v1

    :goto_3
    if-ge v10, v5, :cond_9

    invoke-virtual {v7, v10}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getLinePosition(I)Landroid/graphics/RectF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    cmpl-float v11, v11, v9

    if-lez v11, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_9
    move v5, v1

    :goto_4
    iget-object v9, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v9

    invoke-virtual {v9, v1, v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->findObjectSpan(II)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    iput-boolean v1, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mTextOnly:Z

    :cond_a
    invoke-virtual {v7}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->close()V

    iget v5, v6, Landroid/graphics/RectF;->bottom:F

    iget v6, v8, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getTemplateType()I

    move-result v0

    if-eqz v0, :cond_b

    int-to-float v0, p1

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    :cond_b
    cmpg-float v0, v2, v5

    if-gez v0, :cond_12

    sub-float/2addr v5, v2

    int-to-float v0, p1

    invoke-static {v5, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-lez v2, :cond_c

    div-float v1, v5, v0

    float-to-int v1, v1

    :cond_c
    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageRectList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v6, v2

    :goto_5
    add-int v7, v2, v1

    if-ge v6, v7, :cond_e

    iget-object v7, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageRectList:Ljava/util/List;

    if-nez v6, :cond_d

    new-instance v8, Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v8, v4, v4, v9, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    add-int/lit8 v8, v6, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageRectList:Ljava/util/List;

    new-instance v9, Landroid/graphics/RectF;

    iget v10, v7, Landroid/graphics/RectF;->bottom:F

    iget v7, v7, Landroid/graphics/RectF;->right:F

    add-float v11, v10, v0

    invoke-direct {v9, v4, v10, v7, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageRectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_10

    new-instance p1, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p1, v4, v4, v0, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    if-ge v0, v3, :cond_f

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageRectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageRectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    new-instance v6, Landroid/graphics/RectF;

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    iget v8, v0, Landroid/graphics/RectF;->right:F

    mul-int/2addr v1, p1

    int-to-float p1, v1

    sub-float/2addr v5, p1

    add-float/2addr v5, v7

    invoke-direct {v6, v4, v7, v8, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result p1

    float-to-int p1, p1

    if-lt p1, v3, :cond_11

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageRectList:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_11
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, v2

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_12
    :goto_7
    return-void
.end method

.method private isContentExistPage(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)Z
    .locals 2

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextSectionStart(I)I

    move-result v0

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getTextSectionLength(I)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectCount(Z)I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result p1

    if-nez p1, :cond_0

    if-ltz v0, :cond_1

    if-lez p2, :cond_1

    :cond_0
    const/4 p3, 0x1

    :cond_1
    return p3
.end method

.method private setContents(Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;ILcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setContents# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CaptureManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mCaptureEngine:Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    invoke-virtual {v0, p3, p4, p2}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->setContents(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mCaptureEngine:Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->setBackgroundColorEnabled(Z)V

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mCaptureEngine:Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/widget/theme/BaseThemeInfo;->isDarkMode()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->setColorTheme(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mCaptureEngine:Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->setColorTheme(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public captureListPage(IILcom/samsung/android/app/notes/widget/theme/ThemeInfo;)Landroid/graphics/Bitmap;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->startTime(Ljava/lang/String;)V

    int-to-float p2, p2

    iget v0, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageLoadWidth:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "captureListPage# pageIndex : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , ratio : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CaptureManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v2

    const/4 v3, 0x1

    if-nez p1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    const/4 v5, 0x0

    move v6, v5

    :goto_1
    iget v7, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageCount:I

    if-ge v4, v7, :cond_2

    iget-object v6, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v6, v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v6

    invoke-direct {p0, v6, v2, v4}, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->isContentExistPage(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-direct {p0, v0, v2, p1}, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->isContentExistPage(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)Z

    move-result v4

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getTemplateType()I

    move-result v7

    if-eqz v7, :cond_3

    move v5, v3

    :cond_3
    if-nez p1, :cond_4

    if-nez v4, :cond_4

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    move v3, v4

    :goto_3
    if-nez v3, :cond_6

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    const-string p2, "captureListPage# It\'s not initialized or page count is 0"

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    goto :goto_6

    :cond_6
    :goto_4
    invoke-direct {p0, p3, p1, v0, v2}, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->setContents(Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;ILcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)V

    if-nez p1, :cond_7

    if-nez v6, :cond_7

    if-nez v5, :cond_7

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getDrawnRectOfAllObject()Landroid/graphics/RectF;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mContext:Landroid/content/Context;

    invoke-direct {p3, v2}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p3, v2}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-virtual {p3}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->measureText()V

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3, p1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getMeasuredFitRect(I)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {p2, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    add-float/2addr p2, v4

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 v0, 0x0

    invoke-direct {v2, v0, v0, v3, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p3}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->close()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "captureListPage# rect: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mCaptureEngine:Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    invoke-virtual {p2, v2}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->captureRect(Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_5

    :cond_7
    const-string p3, "captureListPage# page."

    invoke-static {v1, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mCaptureEngine:Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    invoke-virtual {p3, p2}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->capturePage(F)Landroid/graphics/Bitmap;

    move-result-object p2

    :goto_5
    if-nez p2, :cond_8

    const-string p3, "captureListPage# result of capture is null"

    invoke-static {v1, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureListPage# "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->endTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public captureSinglePage(ILcom/samsung/android/app/notes/widget/theme/ThemeInfo;)Ljava/util/List;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageRectList:Ljava/util/List;

    const/4 v1, 0x1

    const-string v2, "CaptureManager"

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageRectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "captureSinglePage# start"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->startTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageRectList:Ljava/util/List;

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    new-instance v6, Landroid/graphics/RectF;

    iget v7, v4, Landroid/graphics/RectF;->right:F

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    const/4 v8, 0x0

    invoke-direct {v6, v8, v8, v7, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    sget-object v7, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->PAGE_RATIO:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    invoke-virtual {v7, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->getHeight(I)I

    move-result v7

    mul-int/2addr v7, v3

    iget-object v3, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v9, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v9, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageRectList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le p1, v9, :cond_1

    if-le v3, v4, :cond_1

    int-to-float p1, v7

    iget v3, v6, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    iput p1, v6, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageRectList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    iput p1, v3, Landroid/graphics/RectF;->bottom:F

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "captureSinglePage# "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_2

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpl-float p1, p1, v8

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1, v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    iget-object v5, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v5

    invoke-direct {p0, p2, v4, p1, v5}, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->setContents(Lcom/samsung/android/app/notes/widget/theme/ThemeInfo;ILcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mCaptureEngine:Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    invoke-virtual {p1, v6}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->captureRect(Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "captureSinglePage# It\'s not initialized or page count is 0"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v3

    :goto_0
    if-nez p1, :cond_3

    const-string p1, "captureSinglePage# bitmap is null"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    if-le v0, v1, :cond_6

    move v1, v4

    move v3, v1

    :goto_1
    if-ge v1, v0, :cond_5

    iget-object v5, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageRectList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    invoke-static {p1, v4, v3, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget v3, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    :cond_6
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "captureSinglePage# end"

    invoke-static {p1, v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->endTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_7
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "captureSinglePage empty pageRect. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1
.end method

.method public getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageColor()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageColor:I

    return v0
.end method

.method public getPageCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageCount:I

    return v0
.end method

.method public isBackgroundImage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mBackgroundImage:Z

    return v0
.end method

.method public isListPageMode()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mPageMode:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    sget-object v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->LIST:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTextOnlyNote()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mTextOnly:Z

    return v0
.end method

.method public release()V
    .locals 4

    const-string v0, "CaptureManager"

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mContext:Landroid/content/Context;

    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mCloseDoc:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->close(Z)V

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mCaptureEngine:Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->close()V

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->disuse(Ljava/lang/String;)V

    :cond_1
    return-void

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mFilePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/capture/CaptureManager;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenOpenModeManager;->disuse(Ljava/lang/String;)V

    :cond_2
    throw v0
.end method
