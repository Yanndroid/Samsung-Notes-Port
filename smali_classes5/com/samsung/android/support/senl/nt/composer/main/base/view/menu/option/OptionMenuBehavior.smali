.class public abstract Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;IIIII)V
    .param p5    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract findMenuItem(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)Ljava/lang/Object;
.end method

.method public abstract getTitle(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)Ljava/lang/CharSequence;
.end method

.method public abstract hideMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V
.end method

.method public abstract removeMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V
.end method

.method public abstract setBadgeText(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V
.end method

.method public abstract setContentDescription(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;Ljava/lang/String;)V
.end method

.method public abstract setEnabledMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;Z)V
.end method

.method public abstract setIcon(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setTitle(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;I)V
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method

.method public abstract showMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V
.end method
