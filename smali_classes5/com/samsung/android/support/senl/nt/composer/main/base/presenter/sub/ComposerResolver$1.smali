.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver;->requestViewMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/BaseSubManager;->getComposerLifeState()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerLifeState;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver$1$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerResolver$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerCloser;->closeTopWindow(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method
