.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/layout/BaseComposerActivityLayout$OnDispatchKeyEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/BaseComposerFragment;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/BaseComposerPresenter;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
