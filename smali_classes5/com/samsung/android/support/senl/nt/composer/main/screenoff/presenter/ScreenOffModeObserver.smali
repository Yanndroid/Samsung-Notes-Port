.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffModeObserver;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ModeObserver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ModeObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    instance-of p2, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    if-nez p2, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ModeObserver;->mCompViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->onChangeMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;)V

    return-void
.end method
