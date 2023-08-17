.class public Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/view/menu/option/OptionMenuRecycleBin;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOptionMenuDelete:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "OptionMenuRecycleBin"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/view/menu/option/OptionMenuRecycleBin;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/view/menu/option/OptionMenuRecycleBin;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onCreateOptionsMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->onCreateOptionsMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->getMenuInflater()Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/view/menu/option/OptionMenuRecycleBin;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onCreateOptionsMenu# getMenuInflater is null"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->getMenuInflater()Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$menu;->composer_recyclerbin_menu:I

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->getTarget()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Menu;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/toolbar/IMenuInflater;->inflateMenu(ILandroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;I)Z
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/view/menu/option/OptionMenuRecycleBin;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelected# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mOptionMenuBehavior:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->getTitle(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const v0, 0x102002c

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->onClickNaviUpBtn()V

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_recycle_bin_restore:I

    const-string v1, "533"

    if-ne p2, v0, :cond_1

    const-string p2, "5331"

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    check-cast p2, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/menu/option/OptionMenuRecycleBinPresenter;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/presenter/menu/option/OptionMenuRecycleBinPresenter;->onClickRestoreBtn()V

    goto :goto_1

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_delete:I

    if-ne p2, v0, :cond_3

    const-string p2, "5332"

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/view/menu/option/OptionMenuRecycleBin;->mOptionMenuDelete:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;

    if-nez p2, :cond_2

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/view/menu/option/OptionMenuRecycleBin;->mOptionMenuDelete:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/recyclebin/view/menu/option/OptionMenuRecycleBin;->mOptionMenuDelete:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuDelete;->showDeleteConfirmDialog(I)V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
