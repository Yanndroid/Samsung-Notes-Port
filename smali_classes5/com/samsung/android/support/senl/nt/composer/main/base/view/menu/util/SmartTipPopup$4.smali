.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->getUpdateRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;)Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;)Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;)Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->update()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup$4;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;)Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->dismiss(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updated SmartTipPopup"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
