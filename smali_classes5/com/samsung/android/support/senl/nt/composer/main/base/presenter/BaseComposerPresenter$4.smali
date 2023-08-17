.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->onInitFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

.field public final synthetic val$hasActivityResult:Z

.field public final synthetic val$initializer:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;

.field public final synthetic val$saveInstances:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;Landroid/os/Bundle;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter$4;->val$initializer:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter$4;->val$saveInstances:Landroid/os/Bundle;

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter$4;->val$hasActivityResult:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter$4;->val$initializer:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter$4;->val$saveInstances:Landroid/os/Bundle;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter$4;->val$hasActivityResult:Z

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/Initializer;->restoreMenu(Landroid/os/Bundle;Z)V

    return-void
.end method
