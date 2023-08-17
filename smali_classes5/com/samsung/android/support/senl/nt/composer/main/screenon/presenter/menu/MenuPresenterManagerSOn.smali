.class public Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/menu/MenuPresenterManagerSOn;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/MenuPresenterManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuParent;)V

    return-void
.end method


# virtual methods
.method public createOptionMenuPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPresenter;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/menu/option/OptionMenuPresenterSOn;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/menu/option/OptionMenuPresenterSOn;-><init>()V

    return-object v0
.end method
