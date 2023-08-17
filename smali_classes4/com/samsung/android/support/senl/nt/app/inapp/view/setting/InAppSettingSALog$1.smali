.class Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingSALog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$LoggingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingSALog;->getPenLoggingListener(ZZ)Lcom/samsung/android/sdk/pen/setting/SpenSettingPenLayout$LoggingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingSALog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingSALog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingSALog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingSALog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 0

    return-void
.end method

.method public onColorCirclePressed()V
    .locals 2

    const-string v0, "671"

    const-string v1, "6675"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onColorPickerCancel()V
    .locals 0

    return-void
.end method

.method public onColorPickerDone()V
    .locals 0

    return-void
.end method

.method public onColorPickerSelected()V
    .locals 2

    const-string v0, "671"

    const-string v1, "6666"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onColorSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingSALog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingSALog;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingSALog;->c(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingSALog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingUtil;->getColorName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "671"

    const-string v1, "6665"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onColorSettingCancel()V
    .locals 0

    return-void
.end method

.method public onColorSettingDone(I)V
    .locals 0

    return-void
.end method

.method public onColorSettingSelected()V
    .locals 2

    const-string v0, "671"

    const-string v1, "6671"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onEyedropperClosed()V
    .locals 0

    return-void
.end method

.method public onEyedropperHandlerTapped()V
    .locals 0

    return-void
.end method

.method public onEyedropperSelected()V
    .locals 0

    return-void
.end method

.method public onPaletteSwiped(I)V
    .locals 2

    const-string v0, "671"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string p1, "6667"

    goto :goto_0

    :cond_0
    const-string p1, "6668"

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRecentColorSelected()V
    .locals 2

    const-string v0, "671"

    const-string v1, "6676"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSeekbarChanged()V
    .locals 0

    return-void
.end method
