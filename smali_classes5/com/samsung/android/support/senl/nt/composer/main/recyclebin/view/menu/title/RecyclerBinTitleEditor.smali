.class public Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/view/menu/title/RecyclerBinTitleEditor;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;->init(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getTitleView()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleViewManager;->updateEditableState(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getFavorite()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/Favorite;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/Favorite;->setEnable(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditor;->mViewSet:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/TitleEditorViewSet;->getCoeditAddMember()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditAddMember;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditAddMember;->setEnable(Z)V

    return-void
.end method
