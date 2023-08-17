.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutPhone;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/ITitleEditorLayout;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mShowHideAnimator:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;

.field private final mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TitleEditorLayoutPhone"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutPhone;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$Contract;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator$Contract;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutPhone;->mShowHideAnimator:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutPhone;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutPhone;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutPhone;->mShowHideAnimator:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;

    return-object p0
.end method

.method public static bridge synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutPhone;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public hide(Z)Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutPhone;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutPhone;->mShowHideAnimator:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->isHiding()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutPhone;->hideAfterToolbarSetTitle()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutPhone;->mShowHideAnimator:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->cancel()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutPhone;->mShowHideAnimator:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->initHideState()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutPhone;->mShowHideAnimator:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->animate(FZ)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutPhone;->mShowHideAnimator:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->updateHideState()V

    :goto_0
    return v0
.end method

.method public hideAfterToolbarSetTitle()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutPhone;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getToolbar()Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutPhone;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleView()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->getTitleText()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutPhone$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutPhone$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutPhone;)V

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;->setTitle(Ljava/lang/CharSequence;Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar$TitleCallback;)V

    return-void
.end method

.method public isAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutPhone;->mShowHideAnimator:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->isAnimating()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutPhone;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getParentLockView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutPhone;->mShowHideAnimator:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->release()V

    return-void
.end method

.method public show()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutPhone;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutPhone;->mShowHideAnimator:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutPhone;->mShowHideAnimator:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->initShowState()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutPhone;->mShowHideAnimator:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorShowHideAnimator;->animate(FZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateFavorite(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutPhone;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getFavorite()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/Favorite;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutPhone;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getFavorite()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/Favorite;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/Favorite;->updateState(ZZ)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public updateTitleList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutPhone;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleView()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->updateTitleList(Ljava/util/List;)V

    return-void
.end method
