.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->makeInAppCollaborationBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mFullScreenBtn onClick"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;->onInAppCollaborationCloseButtonClicked()V

    return-void
.end method
