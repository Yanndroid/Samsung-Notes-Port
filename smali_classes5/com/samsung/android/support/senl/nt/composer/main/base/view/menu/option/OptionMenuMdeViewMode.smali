.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMdeViewMode;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mOptionMenuLeave:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "OptionMenuMdeMode"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMdeViewMode;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V

    const/4 p1, 0x3

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mType:I

    return-void
.end method

.method private updateLeave(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->isLeaveEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_leave:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->setChildResId(I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->showMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMdeViewMode;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onOptionsItemSelected(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;I)Z
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMdeViewMode;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelected# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->getTitle(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_delete:I

    if-ne p2, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;->mOptionMenuDelete:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;->mOptionMenuDelete:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->clearSelectionForEachMode()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;->mOptionMenuDelete:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;->showDeleteConfirmDialog(I)V

    const/4 p1, 0x0

    return p1

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_leave:I

    if-ne p2, v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMdeViewMode;->mOptionMenuLeave:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;

    if-nez p1, :cond_2

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMdeViewMode;->mOptionMenuLeave:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMdeViewMode;->mOptionMenuLeave:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/mde/OptionMenuLeave;->showLeaveConfirmDialog()V

    const/4 p1, 0x1

    return p1

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;->onOptionsItemSelected(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;I)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;->onPrepareOptionsMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_lock:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->setChildResId(I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->hideMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_add_favorite:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->setChildResId(I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->hideMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_add_edit_hash_tag:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->setChildResId(I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->hideMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->hasWritePermission()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_save_to_device:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->setChildResId(I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->showMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->hasDeletePermission()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_delete:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_edit:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->setChildResId(I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->hideMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_delete:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->setChildResId(I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->hideMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_share:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->setChildResId(I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->hideMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_export:I

    :goto_0
    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->setChildResId(I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->hideMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMdeViewMode;->updateLeave(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    return-void
.end method
