.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/SViewManager$SCoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/controller/ViewState;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->stopService()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SCoverController;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/voice/VoiceService;->startService(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;)V

    :cond_1
    :goto_0
    return-void
.end method
