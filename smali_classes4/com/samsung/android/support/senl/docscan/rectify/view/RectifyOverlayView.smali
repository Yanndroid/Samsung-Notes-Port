.class public Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final DEFAULT_HANDLE_VERTEX:[Landroid/graphics/PointF;

.field private final TAG:Ljava/lang/String;

.field private mContainer:Landroid/view/View;

.field private mHandlerPreview:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerPreview;

.field private mHandlers:[Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerView;

.field private mImageView:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;

.field private mIsPreviewLeft:Z

.field private final mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

.field private mPreview:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "RectifyOverlayView"

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Landroid/graphics/PointF;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x1

    aput-object v1, v0, v4

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->DEFAULT_HANDLE_VERTEX:[Landroid/graphics/PointF;

    new-instance v0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;-><init>(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "RectifyOverlayView"

    iput-object p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->TAG:Ljava/lang/String;

    const/4 p2, 0x4

    new-array p2, p2, [Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x0

    aput-object v0, p2, v2

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x1

    aput-object v0, p2, v3

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x2

    aput-object v0, p2, v3

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x3

    aput-object v0, p2, v1

    iput-object p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->DEFAULT_HANDLE_VERTEX:[Landroid/graphics/PointF;

    new-instance p2, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;-><init>(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "RectifyOverlayView"

    iput-object p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->TAG:Ljava/lang/String;

    const/4 p2, 0x4

    new-array p2, p2, [Landroid/graphics/PointF;

    new-instance p3, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {p3, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x0

    aput-object p3, p2, v1

    new-instance p3, Landroid/graphics/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p3, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x1

    aput-object p3, p2, v2

    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x2

    aput-object p3, p2, v2

    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v0, 0x3

    aput-object p3, p2, v0

    iput-object p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->DEFAULT_HANDLE_VERTEX:[Landroid/graphics/PointF;

    new-instance p2, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;-><init>(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p2, "RectifyOverlayView"

    iput-object p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->TAG:Ljava/lang/String;

    const/4 p2, 0x4

    new-array p2, p2, [Landroid/graphics/PointF;

    new-instance p3, Landroid/graphics/PointF;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v0, 0x0

    aput-object p3, p2, v0

    new-instance p3, Landroid/graphics/PointF;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p3, v0, p4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x1

    aput-object p3, p2, v1

    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x2

    aput-object p3, p2, v1

    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3, p4, v0}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 p4, 0x3

    aput-object p3, p2, p4

    iput-object p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->DEFAULT_HANDLE_VERTEX:[Landroid/graphics/PointF;

    new-instance p2, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$1;-><init>(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mContainer:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerPreview;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mHandlerPreview:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerPreview;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)[Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mHandlers:[Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerView;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mImageView:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;

    return-object p0
.end method

.method private dismissHandlerPreview()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->dismissHandlerPreview(Ljava/lang/Runnable;)V

    return-void
.end method

.method private dismissHandlerPreview(Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "RectifyOverlayView"

    const-string v1, "dismissHandlerPreview# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mHandlerPreview:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerPreview;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$7;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$7;-><init>(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mIsPreviewLeft:Z

    return p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->initHandler()V

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;ILandroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->initHandlerPreview(ILandroid/graphics/PointF;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;ILandroid/graphics/PointF;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->movePosition(ILandroid/graphics/PointF;Z)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/docscan/R$layout;->rectify_overlay_view:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lcom/samsung/android/support/senl/docscan/R$id;->image_view_container:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget p1, Lcom/samsung/android/support/senl/docscan/R$id;->image_view:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mImageView:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;

    new-instance v0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$2;-><init>(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;->setContract(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView$Contract;)V

    sget p1, Lcom/samsung/android/support/senl/docscan/R$id;->rectify_handler_preview:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerPreview;

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mHandlerPreview:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerPreview;

    return-void
.end method

.method private initHandler()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->loadHandlerPosition()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->scaleDownHandlers()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->dismissHandlerPreview()V

    return-void
.end method

.method private initHandlerPreview(ILandroid/graphics/PointF;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mHandlers:[Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerView;

    aget-object p1, v0, p1

    sget v0, Lcom/samsung/android/support/senl/docscan/R$id;->handler_view:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->updateHandlerPreviewImage(Landroid/view/View;Landroid/graphics/PointF;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->updateHandlerPreviewPosition(Landroid/view/View;Landroid/graphics/PointF;)Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->showHandlerPreview()V

    return-void
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;[Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->movePosition([Landroid/graphics/PointF;)V

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->scaleUpHandler(I)V

    return-void
.end method

.method public static bridge synthetic l(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->showHandlerPreview()V

    return-void
.end method

.method private loadHandlerPosition()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->sortVertexList()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->getRealPositionListFromRatio()[Landroid/graphics/PointF;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->getNumOfAngle()I

    move-result v2

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    iget v2, v2, Landroid/graphics/PointF;->x:F

    aget-object v3, v0, v1

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->setHandlerPosition(IFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static bridge synthetic m(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->updateHandlerPreviewPosition()V

    return-void
.end method

.method private movePosition(ILandroid/graphics/PointF;Z)V
    .locals 2
    .param p2    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mHandlers:[Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerView;

    aget-object v0, v0, p1

    iget v1, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setX(F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mHandlers:[Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerView;

    aget-object v0, v0, p1

    iget v1, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setY(F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->getRatioFromRealPosition(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->setVertex(ILandroid/graphics/PointF;)V

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->updateHandlerPreview(ILandroid/graphics/PointF;)V

    :cond_0
    return-void
.end method

.method private movePosition([Landroid/graphics/PointF;)V
    .locals 3
    .param p1    # [Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->movePosition(ILandroid/graphics/PointF;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private reDrawHandlerPreview()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$4;-><init>(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->dismissHandlerPreview(Ljava/lang/Runnable;)V

    return-void
.end method

.method private scaleDownHandler(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mHandlers:[Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerView;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private scaleDownHandlers()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->getNumOfAngle()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->scaleDownHandler(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private scaleUpHandler(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mHandlers:[Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerView;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private setHandlerPosition(IFF)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mHandlers:[Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerView;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    aget-object v0, v0, p1

    new-instance v1, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$3;-><init>(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;IFF)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mImageView:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private showHandlerPreview()V
    .locals 3

    const-string v0, "RectifyOverlayView"

    const-string v1, "showHandlerPreview# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mHandlerPreview:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerPreview;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$5;-><init>(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private updateHandlerPreview(ILandroid/graphics/PointF;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mHandlers:[Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerView;

    aget-object p1, v0, p1

    sget v0, Lcom/samsung/android/support/senl/docscan/R$id;->handler_view:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->updateHandlerPreviewImage(Landroid/view/View;Landroid/graphics/PointF;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->updateHandlerPreviewPosition(Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->reDrawHandlerPreview()V

    :cond_0
    return-void
.end method

.method private updateHandlerPreviewContainer()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mImageView:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;->setDrawLine(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lez v0, :cond_1

    if-lez v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mPreview:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mPreview:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mPreview:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mContainer:Landroid/view/View;

    invoke-virtual {v4, v1, v1, v0, v2}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mImageView:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyImageView;->setDrawLine(Z)V

    return-void
.end method

.method private updateHandlerPreviewImage(Landroid/view/View;Landroid/graphics/PointF;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mPreview:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mHandlerPreview:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerPreview;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    iget v3, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    iget p2, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, p2

    float-to-int p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {v0, v2, p2, v3, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerPreview;->setHandlerPreview(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateHandlerPreviewImage# IllegalArgumentException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RectifyOverlayView"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/docscan/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateHandlerPreviewPosition()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mHandlerPreview:Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerPreview;

    new-instance v1, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView$6;-><init>(Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateHandlerPreviewPosition(Landroid/view/View;Landroid/graphics/PointF;)Z
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    iget p1, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, p1

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mContainer:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    add-float/2addr p1, p2

    cmpg-float p1, p1, v0

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mIsPreviewLeft:Z

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mIsPreviewLeft:Z

    return p2
.end method


# virtual methods
.method public initialize(Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/docscan/R$dimen;->rectify_handler_select_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->setInterpolation(F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/docscan/R$dimen;->rectify_handler_view_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->setHandlerSize(F)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->updateHandlerPreviewContainer()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->loadHandlerPosition()V

    return-void
.end method

.method public setHandlePosition([Landroid/graphics/PointF;)V
    .locals 5
    .param p1    # [Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->DEFAULT_HANDLE_VERTEX:[Landroid/graphics/PointF;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mHandlers:[Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mHandlers:[Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerView;

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mHandlers:[Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerView;

    aput-object v4, v2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput-object v4, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mHandlers:[Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerView;

    :cond_3
    array-length v0, p1

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->setNumOfAngle(I)V

    new-array v2, v0, [Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerView;

    iput-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mHandlers:[Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerView;

    :goto_2
    if-ge v1, v0, :cond_6

    aget-object v2, p1, v1

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->DEFAULT_HANDLE_VERTEX:[Landroid/graphics/PointF;

    aget-object v2, v2, v1

    aput-object v2, p1, v1

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mHandlers:[Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerView;

    aget-object v3, v2, v1

    if-nez v3, :cond_5

    new-instance v3, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyHandlerView;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v1

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    aget-object v3, p1, v1

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->setVertex(ILandroid/graphics/PointF;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public setImagePath(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->setImagePath(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->mPresenter:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyEditPresenter;->setImagePath(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/docscan/common/util/DocScanUtils;->getBitmapImageFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/docscan/rectify/view/RectifyOverlayView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
