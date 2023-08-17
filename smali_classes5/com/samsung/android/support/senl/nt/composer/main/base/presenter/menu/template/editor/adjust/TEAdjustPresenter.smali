.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/ActionPresenter;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFlingPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;

.field private mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

.field private final mObserver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel$TEZoomObserver;

.field private final mPivot:Landroid/graphics/PointF;

.field private final mStateModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;

.field public mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/IAdjustContract$IView;

.field private final mZoomModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TEAdjustPresenter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CTLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mStateModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mPivot:Landroid/graphics/PointF;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mObserver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel$TEZoomObserver;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/a;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/a;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->addOpacityListener(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel$OpacityChangedListener;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->getFlingAction()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/FlingAction;

    move-result-object v2

    invoke-direct {p1, v2, v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/FlingAction;Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/ActionPresenter;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mFlingPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->getZoomModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mZoomModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;->addObserver(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel$TEZoomObserver;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mPivot:Landroid/graphics/PointF;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mStateModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/IAdjustContract$IView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->getOpacity()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/IAdjustContract$IView;->setOpacity(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onApply()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/IAdjustContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/IAdjustContract$IView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->applyImage(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public attachView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/IAdjustContract$IView;Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/IResourceInjector;Landroid/widget/OverScroller;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/IAdjustContract$IView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/IAdjustContract$IView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->initResource(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/crop/IResourceInjector;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mFlingPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->setOverScroller(Landroid/widget/OverScroller;)V

    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/IAdjustContract$IView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/IAdjustContract$IView;->release()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/IAdjustContract$IView;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mFlingPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->close()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mFlingPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mZoomModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mObserver:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel$TEZoomObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;->removeObserver(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel$TEZoomObserver;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->isActionState(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->draw(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPageHeight()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->getPageHeight()I

    move-result v0

    return v0
.end method

.method public getPageWidth()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->getPageWidth()I

    move-result v0

    return v0
.end method

.method public initialize(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->initialize(IIZ)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->updateImageView()V

    return-void
.end method

.method public isActionState(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mStateModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;->isState(I)Z

    move-result p1

    return p1
.end method

.method public isEditable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->getCropRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onActionDown(FF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mFlingPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->cancelFling()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->setActionState(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->getPanningAction()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;->onActionDown(FF)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->updateImageView()V

    return-void
.end method

.method public onActionMove(FF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->getPanningAction()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/action/PanningAction;->onActionMove(FF)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->updateImageView()V

    return-void
.end method

.method public onActionUp()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->isActionState(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->setActionState(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->updateImageView()V

    return-void
.end method

.method public onFling(FF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mFlingPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/action/FlingPresenter;->onFling(FF)V

    return-void
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/IAdjustContract$IView;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/IAdjustContract$IView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public scaleByGesture(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mPivot:Landroid/graphics/PointF;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mZoomModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/zoom/TEZoomModel;->multiplyScale(F)V

    return-void
.end method

.method public setActionState(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mStateModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/state/ActionStateModel;->setState(I)V

    return-void
.end method

.method public setDrawableSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->setDrawableSize(II)V

    return-void
.end method

.method public storeEditState()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->storeEditState()V

    return-void
.end method

.method public updateImageView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/IAdjustContract$IView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/IAdjustContract$IView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method public updateOpacity(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->setOpacity(I)V

    return-void
.end method

.method public updateViewSize(II)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->mModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->updateViewSize(II)Z

    move-result p1

    return p1
.end method
