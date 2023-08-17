.class Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/ScreenOnPresenter$SonMenuAttachManager;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/ScreenOnPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SonMenuAttachManager"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;)V

    return-void
.end method


# virtual methods
.method public attachViews()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->attachViews()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;

    instance-of v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/ScreenOnContract$IView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/ScreenOnContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenon/presenter/ScreenOnContract$IView;->setCustomMenu()V

    :cond_0
    return-void
.end method
