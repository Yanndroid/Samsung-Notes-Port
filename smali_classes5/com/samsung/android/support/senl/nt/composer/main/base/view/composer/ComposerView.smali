.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;
.implements Landroid/view/View$OnLayoutChangeListener;


# static fields
.field private static final DEBUG_TO_DISABLE_SPEN_COMPOSER:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mActivity:Landroid/app/Activity;

.field public mAnimationViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;

.field private mComposerViewMenuManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewMenuManager;

.field private mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

.field private mDVFSHelperForSpenFling:Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;

.field private mDoc:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field public mFlashViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;

.field private mFullScreenBtn:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;

.field private mInAppCollaborationButtonView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;

.field public mIsBasicComposer:Z

.field private mListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;

.field private mParent:Landroid/view/View;

.field private mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

.field public mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

.field public mView:Lcom/samsung/android/sdk/composer/SpenComposer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ComposerView"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mIsBasicComposer:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->composerViewConstruct(Landroid/app/Activity;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mIsBasicComposer:Z

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->composerViewConstruct(Landroid/app/Activity;Z)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;)Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mDVFSHelperForSpenFling:Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mFullScreenBtn:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    return-object p0
.end method

.method private composerViewConstruct(Landroid/app/Activity;Z)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->initSdk(Landroid/content/Context;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ComposerView# isWritingOnly"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    invoke-direct {v0, p1, p2}, Lcom/samsung/android/sdk/composer/SpenComposer;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->setSpenDvfsInterface(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mActivity:Landroid/app/Activity;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mAnimationViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;-><init>(Lcom/samsung/android/sdk/composer/SpenComposer;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mFlashViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewMenuManager;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewMenuManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mComposerViewMenuManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewMenuManager;

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->releaseComposerView(ZZ)V

    return-void
.end method

.method public static bridge synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initActionLinkEnabled()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;->isActionLinkEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/composer/SpenComposer;->setActionLinkEnabled(Z)V

    return-void
.end method

.method private initFeatureEnable()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getTextManager()Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getTextManager()Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;->isHyperTextEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->setHyperTextEnabled(Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->isUSAModel()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->setDoubleTapSelectionEnabled(Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/FeatureInfo;->isHashTagFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    invoke-interface {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getMdeInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->isMde()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->setHashTagEnabled(Z)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initFeatureEnable: isHyperTextEnabled= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isDoubleTapSelectionEnabled= "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isHashTagEnabled= "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->isMathEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getMathManager()Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->setEnabledTextEditor(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->initActionLinkEnabled()V

    :cond_3
    :goto_1
    return-void
.end method

.method private initSdk(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/SpenComposerSdk;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSdk# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private makeFullScreenBtn()V
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_full_screen_btn:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mFullScreenBtn:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$6;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->init(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private makeInAppCollaborationBtn()V
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_in_app_collaboration_btn_container:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;-><init>(Landroid/widget/LinearLayout;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mInAppCollaborationButtonView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mActivity:Landroid/app/Activity;

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$7;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->init(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private releaseComposerView(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mComposerViewMenuManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewMenuManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewMenuManager;->release()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getTextManager()Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->setTextScaleListener(Lcom/samsung/android/sdk/pen/text/SpenTextScaleListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->release()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->release()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->requestReadyForSave()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;->release()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/composer/SpenComposer;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->close()V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->releaseGuideTextView()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mDVFSHelperForSpenFling:Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;->release()Z

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mDVFSHelperForSpenFling:Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;

    :cond_2
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    return-void
.end method

.method private releaseGuideTextView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mParent:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->guide_text_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;->release()V

    :cond_0
    return-void
.end method

.method private setColorTheme(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColorTheme# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->setColorTheme(I)V

    :cond_0
    return-void
.end method

.method private setDarkModeEnabled(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setViewBackgroundColor# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->setDarkModeEnabled(Z)V

    :cond_0
    return-void
.end method

.method private updateToolbarChangeableMode()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mIsBasicComposer:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->isFullScreenMode()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->isInAppCollaborationMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mFullScreenBtn:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->updateFullScreen(Landroid/app/Activity;Z)V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mFullScreenBtn:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->updateFullScreen(Landroid/app/Activity;Z)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mInAppCollaborationButtonView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->updateInAppCollaborationMode(Landroid/app/Activity;Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public alignmentContent(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->requestAlignmentContent(I)V

    :cond_0
    return-void
.end method

.method public attachView(Landroid/view/ViewGroup;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mParent:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->toolbar:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setNextFocusForwardId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mFlashViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->init(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->initAttr()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    const-string v1, "SpenComposerViewTag"

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getConvertToTextManager()Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;->setCanvasLayout(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->isMathEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getMathManager()Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;->setCanvasLayout(Landroid/view/ViewGroup;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mAnimationViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;->init(Landroid/view/ViewGroup;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setAutoHandwritingEnabled(Landroid/view/View;Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->onAttachedView(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mComposerViewMenuManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewMenuManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewMenuManager;->onAttached(Landroid/view/ViewGroup;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->makeFullScreenBtn()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->makeInAppCollaborationBtn()V

    return-void
.end method

.method public cancelSearch()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->cancelSearch()V

    :cond_0
    return-void
.end method

.method public captureCurrentView()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->captureCurrentView()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public clearSearch()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->clearSearch()V

    :cond_0
    return-void
.end method

.method public endContinuousChange()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->endContinuousChange()Z

    :cond_0
    return-void
.end method

.method public executeWorkThreadFromCoedit(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeWorkThreadFromCoedit# isExecute = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->startLazyViewUpdate()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->endLazyViewUpdate()V

    :goto_0
    return-void
.end method

.method public getDelta()Landroid/graphics/PointF;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getDelta()Landroid/graphics/PointF;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    :cond_1
    return-object v0
.end method

.method public getListenerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IViewListenerManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mListenerManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ListenerManager;

    return-object v0
.end method

.method public getPan()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getPan()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getScale()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getContentScale()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getZoomScale()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getScrollingDirection()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->isVertical()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mParent:Landroid/view/View;

    return-object v0
.end method

.method public goToPage(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;->clearWritingToolControl()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->goToPage(I)V

    :cond_1
    return-void
.end method

.method public hideCover()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mFlashViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->hideCover()V

    return-void
.end method

.method public init(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->TAG:Ljava/lang/String;

    const-string v2, "init# start"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->startTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mDoc:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->initFeatureEnable()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getBackgroundColor()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isBackgroundColorInverted()Z

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->hasBackgroundImage(Ljava/util/List;)Z

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->isComposerViewDarkTheme(Landroid/content/Context;IZZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->initBackgroundColor(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestFocus()Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->setComposerMode(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->updateToolbarChangeableMode()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "init# end"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->endTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initAttr()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$color;->composer_container_background:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->getAntiGreenishColor()I

    move-result v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexDualModeOnScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 v2, -0x1000000

    const v3, 0x3e99999a    # 0.3f

    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    :cond_1
    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x10100d4

    const/4 v5, 0x0

    aput v4, v3, v5

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v3, v2, [I

    const v4, 0x101009c

    aput v4, v3, v5

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v2, [I

    const v3, -0x101009c

    aput v3, v2, v5

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public initBackgroundColor(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->setDarkModeEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->setColorTheme(I)V

    return-void
.end method

.method public initGuideTextView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mParent:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->guide_text_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;->init(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;)V

    :cond_0
    return-void
.end method

.method public initNoteManager(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getTextManager()Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->setSpenNoteTextManager(Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNotePageLayouter()Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->setSpenNotePageLayouter(Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;)V

    return-void
.end method

.method public initObjectManager(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getControlObjectManager()Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->setControlObject(Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteObjectInserter()Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->setInserter(Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->setNoteZoomScroller(Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;)V

    return-void
.end method

.method public initPdfManager(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNotePdfManager()Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->setSpenNotePdfManager(Lcom/samsung/android/sdk/composer/pdf/SpenNotePdfManager;)V

    return-void
.end method

.method public initScrollManager()V
    .locals 10

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->TAG:Ljava/lang/String;

    const-string v1, "initScrollManager#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mComposerViewMenuManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewMenuManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mDoc:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewMenuManager;->init(Lcom/samsung/android/sdk/composer/SpenComposer;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mDoc:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    new-instance v7, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$3;

    invoke-direct {v7, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;)V

    new-instance v8, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$4;

    invoke-direct {v8, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;)V

    new-instance v9, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$5;

    invoke-direct {v9, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$5;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;)V

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->init(Lcom/samsung/android/sdk/composer/SpenComposer;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IComposerPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IListenerManager;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager$IGotoTopPresenter;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->setOnGenericMotionListener(Landroid/content/Context;)V

    return-void
.end method

.method public initTextManager(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getTextManager()Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->setSpenTextManager(Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;)V

    return-void
.end method

.method public initWritingToolManager(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->isMathEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getMathManager()Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->setManager(Lcom/samsung/android/sdk/pen/recoguifeature/math/SPenMathManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteWritingViewManager()Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->setManager(Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/SpenComposer;->getConvertToTextManager()Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->setManager(Lcom/samsung/android/sdk/pen/recoguifeature/converttotext/SpenConvertToTextManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/SpenComposer;->getAlignmentManager()Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->setManager(Lcom/samsung/android/sdk/pen/recoguifeature/alignment/SPenAlignmentManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/SpenComposer;->getSTTManager()Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->setManager(Lcom/samsung/android/sdk/pen/recoguifeature/spentotext/SPenSTTManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/SpenComposer;->getHwrBeautifierManager()Lcom/samsung/android/sdk/pen/recoguifeature/hwrbeautifier/SPenHwrBeautifierManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->setManager(Lcom/samsung/android/sdk/pen/recoguifeature/hwrbeautifier/SPenHwrBeautifierManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->initDone()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/common/util/SpenUtils;->isSupportedSpenDisplay(Landroid/app/Activity;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->setSupportedSpenDisplay(Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isNotDexModeOrStandAloneMode(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->setNotDexModeOrStandAloneMode(Z)V

    return-void
.end method

.method public isDisableComposerView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEasyWritingPadEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->isEasyWritingPadEnabled()Z

    move-result v0

    return v0
.end method

.method public isEnableTextOnlyMode()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->isOnTextOnlyMode()Z

    move-result v0

    return v0
.end method

.method public isMathEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->isMathEnabled()Z

    move-result v0

    return v0
.end method

.method public isZoomLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getGestureController()Lcom/samsung/android/sdk/pen/engine/SpenIGestureController;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/engine/SpenIGestureController;->isOnFingerScrollAndScaleLocked()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public moveScroll(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->moveScroll(ZZ)V

    return-void
.end method

.method public onChangedNoteType(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->onChangedNoteType(Z)V

    return-void
.end method

.method public onChangedPageCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->updatePageCount(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;Z)V
    .locals 4

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/common/util/SpenUtils;->isSupportedSpenDisplay(Landroid/content/res/Configuration;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged# isOrientationChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", newSupportedSpenDisplay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    invoke-virtual {v1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->onOrientationChanged(Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;->getWritingToolManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->isSupportedSpenDisplay()Z

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;->getWritingToolManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->setSupportedSpenDisplay(Z)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->initActionLinkEnabled()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;->getWritingToolManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;->getWritingToolManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->getToolTypeAction(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->setToolTypeAction(II)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;->getWritingToolManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isNotDexModeOrStandAloneMode(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->setNotDexModeOrStandAloneMode(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;Z)V

    return-void
.end method

.method public onInAppCollaborationModeChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mInAppCollaborationButtonView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->onInAppCollaborationModeChanged(Landroid/app/Activity;Z)V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p8, p6

    sub-int/2addr p4, p2

    if-eq p8, p4, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onLayoutChange# beforeW: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " newW: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " contentScale#"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getContentScale()F

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOptionsMenuPrepared()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mInAppCollaborationButtonView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->isInAppCollaborationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mInAppCollaborationButtonView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/InAppCollaborationButtonView;->onOptionsMenuPrepared()V

    :cond_0
    return-void
.end method

.method public onTextScaleChanged(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->onTextScaleChanged(F)V

    return-void
.end method

.method public pageScroll(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->pageScroll(Z)V

    return-void
.end method

.method public pageZoom(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->pageZoom(Z)V

    return-void
.end method

.method public release(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->release(ZZ)V

    return-void
.end method

.method public release(ZZ)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mDoc:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->releaseComposerView(ZZ)V

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    return-void
.end method

.method public releaseAfterCapture(Lcom/samsung/android/support/senl/nt/composer/main/base/common/Callback;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mDoc:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mFlashViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->showCaptureView(Lcom/samsung/android/sdk/composer/SpenComposer;Lcom/samsung/android/support/senl/nt/composer/main/base/common/Callback;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->releaseComposerView(ZZ)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;Lcom/samsung/android/support/senl/nt/composer/main/base/common/Callback;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mFlashViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->showCaptureView(Lcom/samsung/android/sdk/composer/SpenComposer;Lcom/samsung/android/support/senl/nt/composer/main/base/common/Callback;)V

    :goto_0
    return-void
.end method

.method public removeCaptureView()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mFlashViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->removeCaptureView(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeFromParent()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->setEnableTextOnlyMode(ZFLcom/samsung/android/sdk/pen/text/SpenTextScaleListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public requestCancelTouch()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->requestCancelTouch()V

    :cond_0
    return-void
.end method

.method public requestReadyForSave()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteWritingViewManager()Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getTextManager()Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->updateBodyTextPage()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteWritingViewManager()Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->requestReadyForSave()V

    :cond_0
    return-void
.end method

.method public search(Ljava/lang/String;Z)I
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "search# keyword length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->getLength(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/composer/SpenComposer;->searchText(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public searchBackward()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->searchFocusPrev()I

    move-result v0

    return v0
.end method

.method public searchForward()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->searchFocusNext()I

    move-result v0

    return v0
.end method

.method public setAutoCleanUpEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoCleanUpEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->setAutoCleanUpEnabled(Z)V

    return-void
.end method

.method public setAutoScrollEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->setAutoScrollEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setContentPan(FFFI)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->setZoomScale(FFF)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object p1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->setPan(Landroid/graphics/PointF;)V

    const/4 p1, -0x1

    if-eq p4, p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1, p4}, Lcom/samsung/android/sdk/composer/SpenComposer;->requestAlignmentContent(I)V

    :cond_2
    return-void
.end method

.method public setDelayFlagToUpdateDecorView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->setDelayFlagToUpdateDecorView(Z)V

    return-void
.end method

.method public setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)Z

    :cond_0
    return-void
.end method

.method public setEasyWritingPadEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->setEasyWritingPadEnable(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->setBlockShowZoomButtonsView(IZ)V

    :cond_0
    return-void
.end method

.method public setEditMode()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->TAG:Ljava/lang/String;

    const-string v1, "setEditMode#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/composer/SpenComposer;->setMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->setComposerMode(I)V

    return-void
.end method

.method public setEditModeType(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->setEditMode(I)V

    :cond_0
    return-void
.end method

.method public setEnableTextOnlyMode(ZFLcom/samsung/android/sdk/pen/text/SpenTextScaleListener;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->isOnTextOnlyMode()Z

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->hideScrollBar()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->setIsOnTextOnlyMode(Z)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTextOnlyOnOff# isOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / lastScale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->getTextManager()Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->setTextScaleListener(Lcom/samsung/android/sdk/pen/text/SpenTextScaleListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/composer/SpenComposer;->setTextOnlyEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->getTextManager()Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->setTextScale(F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->showScrollBarForTextOnlyMode()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->getTextManager()Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->setTextScaleListener(Lcom/samsung/android/sdk/pen/text/SpenTextScaleListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->setTextOnlyEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/composer/SpenComposer;->setTextOnlyEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getTextOnlyModeState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNotePageLayouter()Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;

    move-result-object p3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;->getLastPageColumn()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;->getLastPageRow()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;->isLastFitScreen()Z

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;->isLastVertical()Z

    move-result p1

    invoke-virtual {p3, v0, v1, v2, p1}, Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;->setPageLayoutAll(IIZZ)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->setZoomScale(F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->onChangedPageLayout()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->showScrollBar()V

    :goto_0
    return-void
.end method

.method public setFullScreenModeOn()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->TAG:Ljava/lang/String;

    const-string v1, "setFullScreenModeOn"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mFullScreenBtn:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->changeFullScreenMode(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;)V

    return-void
.end method

.method public setLongPressEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->setLongPressEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setModeOfSpenComposerView(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/composer/SpenComposer;->setMode(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->setZoomLock(Z)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->setComposerMode(I)V

    return-void
.end method

.method public setPageLayoutAll(IIZZ)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPageLayoutAll# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->isOnTextOnlyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->showScrollBarForTextOnlyMode()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    invoke-virtual {v0, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->setVertical(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mComposerViewState:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerViewState;->setTwoPageView(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->onChangedPageLayout()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mAnimationViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;

    invoke-virtual {v0, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/AnimationViewManager;->setDirection(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getTextOnlyModeState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;->setLastPageLayoutInfo(IIZZ)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNotePageLayouter()Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/composer/input/SpenNotePageLayouter;->setPageLayoutAll(IIZZ)V

    :cond_2
    return-void
.end method

.method public setPan(Landroid/graphics/PointF;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->setPan(Landroid/graphics/PointF;)V

    return-void
.end method

.method public setPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    invoke-interface {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;->setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IView;)V

    return-void
.end method

.method public setSearchFocus(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->setSearchFocus(I)Z

    move-result p1

    return p1
.end method

.method public setSpenDvfsInterface(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->TAG:Ljava/lang/String;

    const-string v1, "setDvfsInterface# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mDVFSHelperForSpenFling:Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;->release()Z

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mDVFSHelperForSpenFling:Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;

    const/16 v1, 0x5dc

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;->initScenarioType(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$8;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->setDvfsFling(Lcom/samsung/android/sdk/pen/engine/power/SpenDvfsInterface;)V

    return-void
.end method

.method public setTagList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getTextManager()Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/CollectionHelper;->toArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->setTagList(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public setToolbarPosition(Landroid/graphics/Rect;Z)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/composer/SpenComposer;->getTextManager()Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->setCursorObstacleRect(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setVoiceSyncPlayAutoScroll(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoiceSyncPlayAutoScroll# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->setVoiceSyncPlayAutoScroll(Z)V

    :cond_0
    return-void
.end method

.method public setVoiceSyncPlayEnabled(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoiceSyncPlayEnabled# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->setVoiceSyncPlayEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setWritingGuideLineEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWritingGuideLineEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->setWritingGuideLineEnabled(Z)V

    return-void
.end method

.method public setZoomLock(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getGestureController()Lcom/samsung/android/sdk/pen/engine/SpenIGestureController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenIGestureController;->setOneFingerScrollAndScaleLocked(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->setBlockShowZoomButtonsView(IZ)V

    :cond_0
    return-void
.end method

.method public showCover()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mFlashViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->showCover()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->hideScrollBar()V

    return-void
.end method

.method public showLockCanvasToolTip()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->showLockCanvasToolTip()V

    return-void
.end method

.method public smoothScrollToFitPage()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->smoothScrollToFitPage()V

    :cond_0
    return-void
.end method

.method public startActionMode()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->startActionMode()V

    :cond_0
    return-void
.end method

.method public startContinuousChange()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->startContinuousChange()Z

    :cond_0
    return-void
.end method

.method public stopActionMode()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->stopActionMode()V

    :cond_0
    return-void
.end method

.method public stopGestureAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->stopGestureAnimation()V

    :cond_0
    return-void
.end method

.method public updateByMultiWindowMode(I)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isDexStandAloneMode(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->isFreeFormWindow(Landroid/app/Activity;)Z

    move-result p1

    xor-int/2addr v0, p1

    :goto_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFrontBufferRenderingEnabled# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->getNoteWritingViewManager()Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/composer/writing/SpenNoteWritingViewManager;->setFrontBufferRenderingEnabled(Z)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->setFrontBufferRenderingEnabledInEWP(Z)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->requestResetZoomScaleToDefault()V

    return-void
.end method

.method public updateDisallowTouchDownArea(ZI)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDisallowTouchDownArea# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    div-int/lit8 p2, p2, 0x4

    invoke-virtual {p1, v0, v0, v0, p2}, Lcom/samsung/android/sdk/composer/SpenComposer;->setTouchMargin(IIII)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1, v0, v0, v0, v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->setTouchMargin(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateNextFocusForward(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$id;->search_view:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/samsung/android/support/senl/nt/composer/R$id;->toolbar:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setNextFocusForwardId(I)V

    :cond_1
    return-void
.end method
