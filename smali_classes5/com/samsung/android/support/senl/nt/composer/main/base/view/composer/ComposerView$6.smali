.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->makeFullScreenBtn()V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mFullScreenBtn onClick"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mView:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->requestKeepPageFitToScreenWhenPageFit()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/ComposerView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FullScreenButtonView;->changeFullScreenMode(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;)V

    return-void
.end method
