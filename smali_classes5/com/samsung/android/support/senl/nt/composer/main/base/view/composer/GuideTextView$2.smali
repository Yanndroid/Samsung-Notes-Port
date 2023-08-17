.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;->watchPenWritingToDisable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "watchPenWriting onTouch"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Writing:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isLastSpenOnlyMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;I)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/GuideTextView;)V

    :cond_2
    :goto_0
    return v0
.end method
