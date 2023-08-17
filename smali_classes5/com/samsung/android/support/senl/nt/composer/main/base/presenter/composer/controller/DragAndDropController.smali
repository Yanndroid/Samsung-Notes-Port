.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BIG_SHADOW_VIEW_WIDTH_RATIO:F = 0.55f

.field public static final SMALL_SHADOW_VIEW_WIDTH_RATIO:F = 0.75f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCompView:Landroid/view/View;

.field private mHashCode:I

.field private mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

.field private mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

.field private mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

.field private mScrollController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

.field private mStorageChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

.field private mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

.field private mViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DragAndDropController"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mCompView:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    iput p8, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mHashCode:I

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    iput-object p6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mScrollController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    invoke-virtual {p7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getTaskController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    invoke-virtual {p7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getStorageChecker()Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mStorageChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

    invoke-virtual {p7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getViewState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;

    return-object p0
.end method

.method private createClipData(Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;)Landroid/content/ClipData;
    .locals 8

    new-instance v0, Landroid/content/ClipData$Item;

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->plainText:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->htmlText:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "image/jpeg"

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v4, "text/html"

    aput-object v4, v1, v3

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mHashCode:I

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->getCurrentPageIndex()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getPastePosition()Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->createClipLabel(IILandroid/graphics/PointF;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createClipData - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Landroid/content/ClipData;

    new-instance v5, Landroid/content/ClipData$Item;

    iget-object v6, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->uriList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-direct {v5, v6}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {v4, v3, v1, v5}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    :goto_0
    iget-object v1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    new-instance v1, Landroid/content/ClipData$Item;

    iget-object v3, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-direct {v1, v3}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v4, v1}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v0}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    return-object v4

    :cond_1
    new-instance p1, Landroid/content/ClipData;

    invoke-direct {p1, v3, v1, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    return-object p1
.end method

.method private createComposerScaledBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mScrollController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;->getScale()F

    move-result v0

    mul-float/2addr p2, v0

    float-to-int p2, p2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    invoke-static {p1, p2, p3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createComposerScaledBitmap, invalid bitmap, bitmap: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private createImageTypeBitmap(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;->getThumbnailPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    return-object v3

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-gt v1, v4, :cond_2

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gt v1, v4, :cond_2

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v2, v1, v4, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createImageTypeBitmap, cropRect is wrong. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getDrawnRect()Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-direct {p0, v2, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->createComposerScaledBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createImageTypeBitmap, invalid contentRect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private createShadowView(Landroid/view/LayoutInflater;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$layout;->drag_n_drop_shadow_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->contentList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->contentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget v0, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->contentType:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->setSelectedObjectBitmapToShadowView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->createShadowViewObject(Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->createShadowViewPlainText(Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;Landroid/view/View;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->setShadowViewLayout(Landroid/view/View;)V

    return-object p1
.end method

.method private createShadowViewObject(Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;Landroid/view/View;)V
    .locals 7

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->contentList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v2

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createShadowView, contentType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    iget v5, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->contentType:I

    if-ne v5, v3, :cond_0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getObjectSpanAtTextIndex(I)Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getObject()Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v2

    :cond_0
    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$id;->shadow_view_text:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v6, 0x1

    if-eq v2, v6, :cond_6

    if-eq v2, v4, :cond_5

    if-eq v2, v3, :cond_4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_6

    const/4 v3, 0x7

    if-eq v2, v3, :cond_6

    const/16 v3, 0x8

    if-eq v2, v3, :cond_6

    const/16 p1, 0xa

    if-eq v2, p1, :cond_3

    const/16 p1, 0x11

    if-eq v2, p1, :cond_2

    const/16 p1, 0xd

    if-eq v2, p1, :cond_1

    const/16 p1, 0xe

    if-eq v2, p1, :cond_4

    goto :goto_2

    :cond_1
    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->getUri()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;->getTitle()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->getTitle()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->createImageTypeBitmap(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->setBitmapToShadowView(Landroid/graphics/Bitmap;Landroid/view/View;)V

    goto :goto_2

    :cond_5
    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    iget p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->contentType:I

    if-ne p1, v4, :cond_7

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    goto :goto_0

    :cond_7
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->setSelectedObjectBitmapToShadowView(Landroid/view/View;)V

    :goto_2
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method private createShadowViewPlainText(Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->TAG:Ljava/lang/String;

    const-string v1, "createShadowViewPlainText, set plain text."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->plainText:Ljava/lang/String;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->shadow_view_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;)Landroid/content/ClipData;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->createClipData(Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;)Landroid/content/ClipData;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;Landroid/content/ClipData;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->startDragAndDrop(Landroid/content/ClipData;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;)V

    return-void
.end method

.method public static bridge synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getMaxScreenWidth()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->composer_shadow_view_max_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    const v1, 0x3f0ccccd    # 0.55f

    :goto_0
    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private resize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v1, v0

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resize, resizeWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", decorViewWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-le v0, v1, :cond_1

    int-to-float v0, v1

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ImageUtil;->resizeBitmapImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private setBitmapToShadowView(Landroid/graphics/Bitmap;Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->shadow_view_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->resize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->composer_shadow_view_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setSelectedObjectBitmapToShadowView(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedObjectBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->createComposerScaledBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->setBitmapToShadowView(Landroid/graphics/Bitmap;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setShadowViewLayout(Landroid/view/View;)V
    .locals 11

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v2, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->getMaxScreenWidth()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sget-object v7, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setShadowViewLayout, shadowView: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", decorView : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v8, 0x40000000    # 2.0f

    if-ge v5, v3, :cond_0

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    move v3, v5

    :cond_0
    if-ge v6, v4, :cond_1

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShadowViewLayout, result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v0, v3, v6}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private startDragAndDrop(Landroid/content/ClipData;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->createShadowView(Landroid/view/LayoutInflater;Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;->setShadowViewWidth(I)V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;->setShadowViewHeight(I)V

    :cond_1
    new-instance p2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {p2, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const/16 p3, 0x101

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mCompView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    goto :goto_1

    :cond_2
    :goto_0
    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDragAndDrop#shadowView size is wrong : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ClipData : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", dropContent : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->contentList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public executeDragAndDrop(Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;)Z
    .locals 6

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->TAG:Ljava/lang/String;

    const-string v1, "onSelectedItemLongClicked#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-ge v1, v3, :cond_0

    const-string p1, "onSelectionAreaLongPressed# M os is not supported"

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mStorageChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->checkAvailableStateToEdit(ZZ)I

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isSemDevice()Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->isObjectLock()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "onSelectionAreaLongPressed# isObjectLock"

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "301"

    const-string v1, "3018"

    goto :goto_1

    :cond_4
    const-string v0, "401"

    const-string v1, "4027"

    :goto_1
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$InputValues;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$InputValues;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;-><init>()V

    new-instance v5, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController$1;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;)V

    invoke-virtual {v1, v4, v0, v5, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->execute(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Z)Z

    return v3
.end method

.method public isObjectLock()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedObjectList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getLockState()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mCompView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/DragAndDropController;->mActivity:Landroid/app/Activity;

    return-void
.end method
