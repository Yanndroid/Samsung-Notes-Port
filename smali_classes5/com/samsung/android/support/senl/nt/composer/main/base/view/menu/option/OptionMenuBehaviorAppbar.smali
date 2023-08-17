.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehaviorAppbar;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;
.source "SourceFile"


# static fields
.field private static final BADGE_TYPE_DOT:Ljava/lang/String; = "0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;-><init>()V

    return-void
.end method

.method private convertTarget(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)Landroid/view/MenuItem;
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->getChildResId()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->getTarget()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehaviorAppbar;->findMenuItem(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method


# virtual methods
.method public addMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;IIIII)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->getTarget()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Menu;

    invoke-interface {p1, p2, p3, p4, p5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, p6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public findMenuItem(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->getChildResId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public getTitle(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehaviorAppbar;->convertTarget(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public hideMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehaviorAppbar;->findMenuItem(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public removeMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->getChildResId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/view/Menu;->removeItem(I)V

    return-void
.end method

.method public setBadgeText(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehaviorAppbar;->convertTarget(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->setBadgeText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setContentDescription(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehaviorAppbar;->findMenuItem(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public setEnabledMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehaviorAppbar;->findMenuItem(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public setIcon(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehaviorAppbar;->findMenuItem(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public setTitle(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehaviorAppbar;->convertTarget(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public showMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehaviorAppbar;->findMenuItem(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
