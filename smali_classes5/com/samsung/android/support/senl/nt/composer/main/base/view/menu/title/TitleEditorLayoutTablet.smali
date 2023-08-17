.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/ITitleEditorLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet$Contract;
    }
.end annotation


# instance fields
.field private final mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet$Contract;

.field private mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet$Contract;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet$Contract;

    return-void
.end method

.method private createDialog()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet$Contract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet$Contract;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet$Contract;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet$Contract;->getTitleEditorPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet$Contract;

    invoke-interface {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet$Contract;->getToolbar()Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/ICustomToolbar;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;

    :cond_0
    return-void
.end method


# virtual methods
.method public hide(Z)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->hide()V

    const/4 p1, 0x1

    return p1
.end method

.method public hideAfterToolbarSetTitle()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet;->hide(Z)Z

    return-void
.end method

.method public isAnimating()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;

    return-void
.end method

.method public show()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet;->createDialog()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet$Contract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet$Contract;->getToolbarTitle()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->show(Landroid/view/View;)V

    return-void
.end method

.method public updateFavorite(Z)Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->getFavorite()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/Favorite;

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

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorLayoutTablet;->mDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorDialog;->getTitleViewManager()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->updateTitleList(Ljava/util/List;)V

    :cond_0
    return-void
.end method
