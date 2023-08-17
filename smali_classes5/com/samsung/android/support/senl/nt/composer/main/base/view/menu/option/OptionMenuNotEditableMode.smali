.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuNotEditableMode;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "OptionMenuNotEditableMode"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuNotEditableMode;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V

    const/4 p1, 0x4

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mType:I

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuNotEditableMode;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onPrepareOptionsMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;->onPrepareOptionsMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->isSecured()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_share:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->setChildResId(I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->hideMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_print:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->setChildResId(I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->hideMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

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

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_export:I

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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_lock:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->setChildResId(I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->hideMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_send_to_reminder:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->setChildResId(I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->hideMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_pin_to_home:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->setChildResId(I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->hideMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_save_to_device:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->setChildResId(I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->hideMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_coedit_add_to_shared_notebook:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->setChildResId(I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->hideMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_coedit_share_with_collaborators:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->setChildResId(I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->hideMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_coedit_internal_snap_refresh:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->setChildResId(I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->hideMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    return-void
.end method
