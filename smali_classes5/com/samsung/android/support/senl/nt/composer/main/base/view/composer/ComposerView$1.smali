.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/common/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->releaseAfterCapture(Lcom/samsung/android/support/senl/nt/composer/main/base/common/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

.field public final synthetic val$callback:Lcom/samsung/android/support/senl/nt/composer/main/base/common/Callback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;Lcom/samsung/android/support/senl/nt/composer/main/base/common/Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$1;->val$callback:Lcom/samsung/android/support/senl/nt/composer/main/base/common/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;ZZ)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$1;->val$callback:Lcom/samsung/android/support/senl/nt/composer/main/base/common/Callback;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/common/Callback;->onDone(Ljava/lang/Object;)V

    return-void
.end method
