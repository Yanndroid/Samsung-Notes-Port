.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController$1;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo$ObserverAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;->addObserverInMdeInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo$ObserverAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionChanged(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerModeController;->setViewMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;)V

    return-void
.end method
