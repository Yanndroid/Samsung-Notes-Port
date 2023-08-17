.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/IZoomMenuView;


# static fields
.field private static final LANDSCAPE_MENU_WIDTH_RATIO:F = 0.5f

.field private static final PORTRAIT_MENU_HEIGHT_RATIO:F = 0.2f

.field private static final PORTRAIT_PHONE_POPUP_MENU_HEIGHT_RATIO:F = 0.4f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

.field private mCancelBtn:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDoneBtn:Landroid/widget/Button;

.field private mIsTracking:Z

.field private mMenuLayout:Landroid/view/ViewGroup;

.field private final mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOpacityTitle:Landroid/widget/TextView;

.field private mParentView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

.field private mPercentText:Landroid/widget/TextView;

.field private mProgressAnimation:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;

.field private mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field private mZoomInBtn:Landroid/widget/ImageView;

.field private mZoomOutBtn:Landroid/widget/ImageView;

.field private final mZoomPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TEMenuView"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CTLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$7;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mParentView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;->getModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/TemplateEditorModel;->getAdjustModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/a;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/a;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel;->addOpacityListener(Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/template/editor/adjust/TEAdjustModel$OpacityChangedListener;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;->getAdjustPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/TemplateEditorPresenter;->getZoomPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mZoomPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;

    invoke-virtual {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;->attachView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/IZoomMenuView;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;->getRootView()Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->te_menu_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mMenuLayout:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->initSeekBar()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->initPortraitLayout()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->initLandscapeLayout()V

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->setPercentText()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mIsTracking:Z

    return p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mProgressAnimation:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mZoomPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/zoom/TEZoomPresenter;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mIsTracking:Z

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->onCancelBtnClicked()V

    return-void
.end method

.method private getPopupWindowHeightRatio()F
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isTabletModel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$integer;->template_editor_menu_height_ratio:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    :goto_0
    return v0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->onDoneBtnClicked()V

    return-void
.end method

.method public static bridge synthetic i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initBottomButtonLayout()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mParentView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->te_done:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mDoneBtn:Landroid/widget/Button;

    const/high16 v1, 0x41900000    # 18.0f

    if-eqz v0, :cond_0

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mDoneBtn:Landroid/widget/Button;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mDoneBtn:Landroid/widget/Button;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil;->setButtonShapeEnabled(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mParentView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->te_cancel:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mCancelBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mCancelBtn:Landroid/widget/Button;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mCancelBtn:Landroid/widget/Button;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/util/ButtonShapeUtil;->setButtonShapeEnabled(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private initLandscapeLayout()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->initZoomInOutLayout()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->updateMenuLayoutWidth()V

    return-void
.end method

.method private initPortraitLayout()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->updatePortraitLayout()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->initBottomButtonLayout()V

    return-void
.end method

.method private initSeekBar()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mParentView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->template_editor_opacity_seekbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslSeekBar;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->getOpacity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$5;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$6;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;-><init>(Landroidx/appcompat/widget/SeslSeekBar;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mProgressAnimation:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mParentView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->opacity_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mOpacityTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mParentView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->template_editor_opacity_percent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mPercentText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mParentView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->template_editor_opacity_percent_fixed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->setPercentText()V

    return-void
.end method

.method private initZoomInOutLayout()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mParentView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->te_zoom_menu_viewstub:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$color;->template_editor_zoom_btn_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mParentView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;->getRootView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->te_zoom_in_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mZoomInBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mZoomInBtn:Landroid/widget/ImageView;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mParentView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;->getRootView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->te_zoom_out_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mZoomOutBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mZoomOutBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private onCancelBtnClicked()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEButtonChecker;->isExecutable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mParentView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;->finish(Z)V

    :cond_0
    return-void
.end method

.method private onDoneBtnClicked()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEButtonChecker;->isExecutable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mParentView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;->onApply()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->apply()V

    :cond_0
    return-void
.end method

.method private setPercentText()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mPercentText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->getOpacity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%d%%"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateMenuLayoutHeight()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mParentView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;->isMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->getPopupWindowHeightRatio()F

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mParentView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;->getTotalHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mMenuLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mMenuLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateMenuLayoutWidth()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mMenuLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mMenuLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateOpacitySeekbarParentMargins()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isTabletModel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mParentView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;->isMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->template_editor_tablet_opacity_seekbar_start_margin:I

    goto :goto_1

    :cond_1
    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->template_editor_opacity_seekbar_start_margin:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_2

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->template_editor_tablet_opacity_layout_side_margin:I

    goto :goto_2

    :cond_2
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->template_editor_opacity_layout_side_margin:I

    :goto_2
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mParentView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;->getRootView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$id;->template_editor_opacity_seekbar_parent:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateOpacityTitleMargins()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isTabletModel()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mParentView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;->isMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->template_editor_tablet_opacity_layout_side_margin:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->template_editor_opacity_layout_side_margin:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mOpacityTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mOpacityTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updatePortraitLayout()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->updateMenuLayoutHeight()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->updateOpacityTitleMargins()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->updateOpacitySeekbarParentMargins()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged, orientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->updatePortraitLayout()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->updateMenuLayoutWidth()V

    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$menu;->template_editor_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(I)Z
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->te_done:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->onDoneBtnClicked()V

    goto :goto_1

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->te_cancel:I

    if-eq p1, v0, :cond_2

    const v0, 0x102002c

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->onCancelBtnClicked()V

    :goto_1
    return v1
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mDoneBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mDoneBtn:Landroid/widget/Button;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mCancelBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mCancelBtn:Landroid/widget/Button;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mZoomInBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mZoomInBtn:Landroid/widget/ImageView;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mZoomOutBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mZoomOutBtn:Landroid/widget/ImageView;

    :cond_3
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mOpacityTitle:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mMenuLayout:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mParentView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/IContract$IView;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mAdjustPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public update(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mZoomInBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->mZoomOutBtn:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_1
    return-void
.end method
