.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mCloseButton:Landroid/widget/ImageButton;

.field private mFirstListButton:Landroid/widget/ImageButton;

.field private mFullScreen:Landroid/view/View;

.field private final mIsTablet:Z

.field private mMenuDivider:Landroid/widget/ImageView;

.field private mPlayPauseButton:Landroid/widget/ImageButton;

.field private mPlayTimeView:Landroid/widget/TextView;

.field private final mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

.field private mRecordingButton:Landroid/widget/ImageButton;

.field private final mVoiceAnimation:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;

.field private mVoiceMenuList:Landroid/view/View;

.field private final mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

.field private mZoomView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "VoiceRecordExpandMenu"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->isTabletLayout()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mIsTablet:Z

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceAnimation:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->initMenuList(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->initVoiceButton()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->setMaxFontSize()V

    new-instance p4, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    invoke-direct {p4, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;Landroid/view/View;)V

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mFullScreen:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mIsTablet:Z

    return p0
.end method

.method private collapseExpandMenu()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->main_layout_container_parent:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu$7;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mZoomView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->setBlock(Z)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->showInitView()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceAnimation:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mFullScreen:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->isFullScreenMode()Z

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;->updateFullScreenVisible(Landroid/view/View;ZZ)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceAnimation:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->isEditMode()Z

    move-result v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;->collapseHorizonRecordExpandMenu(Landroid/view/ViewGroup;ZLjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceMenuList:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private collapseStraight()V
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mIsTablet:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->hideRecordingListView()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->collapseExpandMenu()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mZoomView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->setBlock(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->main_layout_container_parent:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->showInitView()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceAnimation:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mFullScreen:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->isFullScreenMode()Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;->updateFullScreenVisible(Landroid/view/View;ZZ)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceAnimation:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->isEditMode()Z

    move-result v2

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu$8;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu$8;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;->collapseStraight(Landroid/view/ViewGroup;ZLjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceMenuList:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private collapseStraightRecording()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mZoomView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;->setBlock(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mRecordingButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->voice_record_stop:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->getBackgroundThemeColorTable()[I

    move-result-object v0

    aget v0, v0, v1

    const/16 v1, 0xe6

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mRecordingButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setColorFilter(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->showRecordingView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->main_layout_container_parent:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceAnimation:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mIsTablet:Z

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu$9;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;->collapseStraightRecording(Landroid/view/ViewGroup;ZLjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceMenuList:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mRecordingButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceAnimation:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceMenuList:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mZoomView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;

    return-object p0
.end method

.method private initMenuList(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_zoom_view:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mZoomView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ZoomView;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_full_screen_btn:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mFullScreen:Landroid/view/View;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->voice_menu_expand:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceMenuList:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceMenuList:Landroid/view/View;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->voice_record_close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mCloseButton:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mCloseButton:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setRotation(F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mCloseButton:Landroid/widget/ImageButton;

    const-string v0, "voice_horizon[rotation:180:0]"

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mCloseButton:Landroid/widget/ImageButton;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceMenuList:Landroid/view/View;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->voice_record_first_play_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPlayTimeView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceMenuList:Landroid/view/View;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->voice_record_menu_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mMenuDivider:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceMenuList:Landroid/view/View;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->voice_record_first_list_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mFirstListButton:Landroid/widget/ImageButton;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mFirstListButton:Landroid/widget/ImageButton;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceMenuList:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private initVoiceButton()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceMenuList:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->voice_record_play_pause:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPlayPauseButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu$5;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceMenuList:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->voice_record_recording:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mRecordingButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu$6;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->isNotSupportedRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mRecordingButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/CoeditState;->setDisable(Landroid/widget/ImageButton;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->collapseStraightRecording()V

    return-void
.end method

.method private setMaxFontSize()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mIsTablet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPlayTimeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$integer;->voice_record_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->applyTextSizeUntilLargeSize(Landroid/content/Context;Landroid/widget/TextView;F)V

    :cond_0
    return-void
.end method

.method private updatePlayPoint()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->getVoiceDataPlayPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;->setPlayPoint(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;->updatePlayPoint()V

    return-void
.end method


# virtual methods
.method public changeMode(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceAnimation:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;->isRunningHorizonAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceAnimation:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->main_layout_container_parent:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;->endAnimation(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mRecordingButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;->changeMode(Z)V

    return-void
.end method

.method public collapseVoicePanel()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->EDIT:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->compareViewState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->cancelSelect(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->getViewState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->canCollapseStraight()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->collapseStraight()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->collapseExpandMenu()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->collapseSyncPlayDisable()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->clearSelectionObject()V

    return-void
.end method

.method public hide()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->hideRecordingListView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceMenuList:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideEditTrashView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;->hideEditTrashView()V

    return-void
.end method

.method public hideRecordingListView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;->hideRecordingListView()V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mIsTablet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPlayTimeView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;->invalidateSeekBar()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->getViewState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState;->canCollapseStraight()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->EXTEND:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->setViewStateType(Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;)V

    :cond_1
    return-void
.end method

.method public initSTTButton(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceMenuList:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->voice_record_stt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public moveForward()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordControlMenu;->moveForward()V

    return-void
.end method

.method public moveRewind()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordControlMenu;->moveRewind()V

    return-void
.end method

.method public notifyDataChanged()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->updatePlayPoint()V

    return-void
.end method

.method public notifyItemChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;->notifyItemChanged(I)V

    return-void
.end method

.method public notifyItemInserted(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;->notifyItemInserted(I)V

    return-void
.end method

.method public notifyItemRemoved(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;->notifyItemRemoved(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->updatePlayPoint()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->main_layout_container_parent:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceAnimation:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;->playListChangeBounds(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->EDIT:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->compareViewState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->cancelSelect(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->collapseSyncPlayDisable()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->clearSelectionObject()V

    return-void
.end method

.method public setItemSelectedMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;->setVoiceItemSelectMode(Z)V

    return-void
.end method

.method public setPlayPauseIcon(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPlayPauseButton:Landroid/widget/ImageButton;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->voice_record_pause:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPlayPauseButton:Landroid/widget/ImageButton;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->voice_notification_voice_ass_pause:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPlayPauseButton:Landroid/widget/ImageButton;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->voice_record_play:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPlayPauseButton:Landroid/widget/ImageButton;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->voice_notification_voice_ass_play:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPlaySpeed(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordControlMenu;->setPlaySpeed(Ljava/lang/String;)V

    return-void
.end method

.method public setRecordPlayTime(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    iget-boolean v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordControlMenu;->mIsStartTrack:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceAnimation:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;->isRunningHorizonAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mIsTablet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPlayTimeView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceUtil;->updateTimeEms(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;->setRecordPlayTime(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setRecordProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceAnimation:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/animation/VoiceAnimation;->isRunningHorizonAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordControlMenu;->setPlayProgress(I)V

    :cond_0
    return-void
.end method

.method public showEditTrashView(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;->showEditTrashView(I)V

    return-void
.end method

.method public showEditView(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;->showEditView(ZI)V

    return-void
.end method

.method public showRecordingListView()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mIsTablet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPlayTimeView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;->showRecordingListView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->getVoiceDataPlayPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;->setPlayPoint(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;->invalidateSeekBar()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->LIST:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->setViewStateType(Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;)V

    return-void
.end method

.method public showRecordingPlayView()V
    .locals 5

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->TAG:Ljava/lang/String;

    const-string v1, "showRecordingPlayView#."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceMenuList:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->getVoiceDataPlayPoints()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;->setPlayPoint(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;->initRecordingList()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->notifyDataChanged()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->getBackgroundThemeColorTable()[I

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    aget v3, v0, v1

    const/4 v4, 0x2

    aget v0, v0, v4

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    move v1, v4

    :cond_0
    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;->setTheme(IZ)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;->showRecordingPlayView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;->EXTEND:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->setViewStateType(Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceViewState$Type;)V

    return-void
.end method

.method public updateBackground([I)V
    .locals 9

    const/4 v0, 0x2

    aget v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v7, v2

    goto :goto_0

    :cond_0
    move v7, v1

    :goto_0
    aget v0, p1, v2

    const/16 v2, 0xe6

    invoke-static {v0, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_voice_menu_composite_alpha_background:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->getBackgroundColor()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_voice_menu_item_divider:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    if-eqz v7, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_voice_menu_dark_background:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->getAntiGreenishColor()I

    move-result v0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_voice_menu_dark_item_divider:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    :cond_2
    move v5, v0

    move v6, v2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setColorFilter(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setColorFilter(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mFirstListButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setColorFilter(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    aget v1, p1, v1

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;->setTheme(IZ)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;->invalidateSeekBar()V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mIsTablet:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPlayTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mMenuDivider:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceMenuList:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    move-object v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;->updateBackground(IIIZ[I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceMenuList:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateSelectedItemText(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;->updateSelectedItemText(I)V

    return-void
.end method

.method public updateView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mVoiceSubMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandSubMenu;->updateView()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->isNotSupportedRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandMenu;->mRecordingButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/CoeditState;->setDisable(Landroid/widget/ImageButton;)V

    :cond_0
    return-void
.end method
