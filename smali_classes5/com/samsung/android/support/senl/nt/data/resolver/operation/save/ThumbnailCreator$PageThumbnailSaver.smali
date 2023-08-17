.class Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageThumbnailSaver"
.end annotation


# static fields
.field private static final THUMBNAIL_CAPTURE_RATIO:F = 0.7f


# instance fields
.field private final mBodyTextRectF:Landroid/graphics/RectF;

.field private mBottom:F

.field private mContext:Landroid/content/Context;

.field public mCropFileNameBuilder:Ljava/lang/StringBuilder;

.field private final mEditPageIndex:I

.field public mFullFileNameBuilder:Ljava/lang/StringBuilder;

.field private final mHasTextWithObjectSpan:Z

.field private mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field private mPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

.field private mPageHeight:I

.field private mPageWidth:I

.field private mTop:F

.field private mTotalBottom:F

.field private final mUuid:Ljava/lang/String;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;Landroid/content/Context;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;ILandroid/graphics/RectF;Z)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->this$0:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "full_thumbnail"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mFullFileNameBuilder:Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "thumbnail"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mCropFileNameBuilder:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mUuid:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mEditPageIndex:I

    iput-object p6, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mBodyTextRectF:Landroid/graphics/RectF;

    invoke-virtual {p3, p5}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iput-boolean p7, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mHasTextWithObjectSpan:Z

    return-void
.end method

.method private capture(Ljava/util/List;)[Landroid/graphics/Bitmap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "create bitmap - start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->setWNote(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mEditPageIndex:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->setContents(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;I)V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-gt v3, v4, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->setColorTheme(I)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->b()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PageThumbnailSaver#capture start theme : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    const/4 v8, 0x0

    const v9, 0x3f333333    # 0.7f

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/app/notes/data/R$dimen;->note_list_thumbnail_top_offset:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget v7, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mTop:F

    int-to-float v6, v6

    sub-float/2addr v7, v6

    iput v7, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mTop:F

    iget v7, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mTotalBottom:F

    sub-float/2addr v7, v6

    iput v7, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mTotalBottom:F

    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mTop:F

    iget v10, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mPageWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mTotalBottom:F

    invoke-direct {v6, v8, v7, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v7, Landroid/graphics/Rect;

    iget v8, v6, Landroid/graphics/RectF;->top:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iget v10, v6, Landroid/graphics/RectF;->right:F

    mul-float/2addr v10, v9

    float-to-int v10, v10

    iget v11, v6, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v11, v9

    float-to-int v9, v11

    invoke-direct {v7, v2, v8, v10, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v6}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->captureRect(Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v6, v8, v9, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v4, "capture# SINGLE mode, finalRect : "

    goto :goto_1

    :cond_0
    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mPageWidth:I

    int-to-float v7, v7

    iget v10, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mTotalBottom:F

    invoke-direct {v6, v8, v8, v7, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v7, Landroid/graphics/Rect;

    iget v8, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mPageWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iget v10, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mTotalBottom:F

    mul-float/2addr v10, v9

    float-to-int v9, v10

    invoke-direct {v7, v2, v2, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v6}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->captureRect(Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v6, v8, v9, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v4, "capture# LIST mode, finalRect : "

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PageThumbnailSaver#capture end theme "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mUuid:Ljava/lang/String;

    const-string v8, "mainlist"

    invoke-static {v6, v7, v8}, Lcom/samsung/android/support/senl/nt/base/common/util/PageCacheUtils;->getCacheDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v6, v1, v3

    const/16 v7, 0x5a

    invoke-static {v6, v4, v7, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/ImageUtils;->makeJpg(Landroid/graphics/Bitmap;Ljava/lang/String;IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, " success, theme : "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v4, " fail\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mUuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;->deleteOldFile(Landroid/content/Context;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->b()Ljava/lang/String;

    move-result-object p1

    const-string v2, "create bitmap - end"

    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/nt/data/common/log/DataLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/NoteCaptureControl;->close()V

    return-object v1
.end method

.method private cropCapture([Landroid/graphics/Bitmap;[Ljava/lang/String;)V
    .locals 9

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mTop:F

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v3, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mPageWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iget v4, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mBottom:F

    mul-float/2addr v4, v2

    float-to-int v2, v4

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object v1

    move v2, v4

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    aget-object v3, p1, v2

    sget-object v5, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    if-ne v1, v5, :cond_0

    move v5, v4

    goto :goto_1

    :cond_0
    iget v5, v0, Landroid/graphics/Rect;->top:I

    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    aget-object v8, p1, v2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v3, v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mUuid:Ljava/lang/String;

    const-string v8, "mainlist"

    invoke-static {v6, v7, v8}, Lcom/samsung/android/support/senl/nt/base/common/util/PageCacheUtils;->getCacheDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p2, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x5a

    const/4 v7, 0x1

    invoke-static {v3, v5, v6, v7}, Lcom/samsung/android/support/senl/nt/base/common/util/ImageUtils;->makeJpg(Landroid/graphics/Bitmap;Ljava/lang/String;IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->b()Ljava/lang/String;

    move-result-object v3

    const-string v5, "cropCapture# success"

    invoke-static {v3, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mUuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p2, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v3}, Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;->deleteOldFile(Landroid/content/Context;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    return-void
.end method

.method private setPageSize()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mPageWidth:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mPageHeight:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mPageWidth:I

    int-to-float v0, v0

    const v1, 0x3fb50750

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mPageHeight:I

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mEditPageIndex:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PageThumbnailSaver#setPageSize editPageIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mEditPageIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dummy page. no thumbnail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mPageWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mPageHeight:I

    if-le v1, v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PageThumbnailSaver#setPageSize pageWidth : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mPageWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pageHeight : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mPageHeight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private setTopBottom()Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getDrawnRectOfAllObject()Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mTop:F

    iget v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mPageHeight:I

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mBottom:F

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTopBottom# objectRectF : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", bodyTextRectF : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mBodyTextRectF:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", top : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mTop:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", bottom "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mBottom:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->this$0:Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->a(Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v3

    const-string v4, ", bottom : "

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "setTopBottom# has PDF"

    :goto_0
    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mBodyTextRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_1

    const-string v2, "setTopBottom# has only template"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mBottom:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mBottom:F

    goto/16 :goto_4

    :cond_1
    const-string v1, "setTopBottom# has only title"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "setTopBottom# has text + template"

    :goto_1
    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mHasTextWithObjectSpan:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "setTopBottom# has only text with object span"

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "setTopBottom# has only text"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mCropFileNameBuilder:Ljava/lang/StringBuilder;

    const-string v2, "_text"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mFullFileNameBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mBodyTextRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mTop:F

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mBodyTextRectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mBottom:F

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTopBottom# objectRectF is empty - top : "

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mBodyTextRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "setTopBottom# has object + template"

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mTop:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mBottom:F

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTopBottom# has only handwriting or image - top : "

    goto :goto_3

    :cond_7
    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mBodyTextRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mTop:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mBodyTextRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mBottom:F

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTopBottom# everything - top : "

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mTop:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mBottom:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->LIST:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    if-ne v0, v2, :cond_9

    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mBottom:F

    iget v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mPageHeight:I

    int-to-float v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8

    int-to-float v0, v1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mBottom:F

    :cond_8
    int-to-float v0, v1

    :goto_5
    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mTotalBottom:F

    goto :goto_8

    :cond_9
    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mBottom:F

    iget v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mTop:F

    sub-float/2addr v0, v2

    iget v3, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mPageHeight:I

    int-to-float v5, v3

    cmpl-float v5, v0, v5

    if-lez v5, :cond_a

    int-to-float v0, v3

    add-float/2addr v2, v0

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_6
    iput v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mBottom:F

    goto :goto_7

    :cond_a
    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mTop:F

    int-to-float v0, v3

    goto :goto_6

    :cond_b
    :goto_7
    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mTop:F

    iget v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mPageHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_5

    :goto_8
    iget v0, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mBottom:F

    const/high16 v1, 0x43480000    # 200.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    iput v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mBottom:F

    :cond_c
    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTopBottom# final - top : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mTop:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mBottom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", totalBottom : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mTotalBottom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public run()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->setPageSize()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->setTopBottom()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mFullFileNameBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "d_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->capture(Ljava/util/List;)[Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->mCropFileNameBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v4, v3

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->cropCapture([Landroid/graphics/Bitmap;[Ljava/lang/String;)V

    aget-object v1, v4, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v1, v4, v3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->release()V

    return-object v0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/resolver/operation/save/ThumbnailCreator$PageThumbnailSaver;->release()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
