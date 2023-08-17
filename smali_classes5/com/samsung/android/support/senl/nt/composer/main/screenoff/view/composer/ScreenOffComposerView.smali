.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/composer/ScreenOffComposerView;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ScreenOffComposerView"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/composer/ScreenOffComposerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;-><init>(Landroid/app/Activity;Z)V

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/composer/ScreenOffComposerView;->setVisibility(I)V

    return-void
.end method

.method private setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public init(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->setScrollingEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mScrollZoomManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ScrollZoomManager;->disableZoomLock()V

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mIsBasicComposer:Z

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->init(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    return-void
.end method

.method public initAttr()V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/composer/ScreenOffComposerView;->TAG:Ljava/lang/String;

    const-string v1, "initAttr#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mFlashViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FlashViewManager;->getCoverView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$color;->screenoff_main_background:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->setLongPressEnabled(Z)V

    return-void
.end method
