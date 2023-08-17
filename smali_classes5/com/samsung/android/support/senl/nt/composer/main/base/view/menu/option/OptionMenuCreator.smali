.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOptionMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;
    .locals 2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->isMdeMode()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    :cond_0
    new-instance p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMdeViewMode;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuMdeViewMode;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->isEditable()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    :cond_2
    new-instance p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuNotEditableMode;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuNotEditableMode;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->isViewMode()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    :cond_4
    new-instance p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuViewMode;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;->isInitMode()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenu;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    :cond_6
    new-instance p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuEditMode;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuEditMode;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V

    :cond_7
    :goto_0
    if-nez p0, :cond_8

    new-instance p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuNone;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuNone;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;)V

    :cond_8
    return-object p0
.end method
