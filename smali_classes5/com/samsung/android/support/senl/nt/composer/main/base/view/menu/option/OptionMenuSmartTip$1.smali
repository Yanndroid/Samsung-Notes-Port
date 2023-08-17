.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip;->showFingerDrawingSmartTip(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip;

.field public final synthetic val$toolbar:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip$1;->val$toolbar:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip$1;->val$toolbar:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_more:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip;

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_finger_drawing_smart_tip_description:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->show()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/IOptionMenuFingerDrawingPresenter;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/IOptionMenuFingerDrawingPresenter;->setSmartTipState(I)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "showFingerDrawing# show"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showFingerDrawingSmartTip "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuSmartTip;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/IOptionMenuFingerDrawingPresenter;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/IOptionMenuFingerDrawingPresenter;->setSmartTipState(I)V

    :cond_1
    :goto_0
    return-void
.end method
