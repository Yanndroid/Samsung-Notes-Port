.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSALog$HwSettingSALogListener;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/util/sa/ComposerSA$SpenSettingLoggingListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingSALog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HwSettingSALogListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/sa/ComposerSA$SpenSettingLoggingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorCirclePressed()V
    .locals 2

    const-string v0, "411"

    const-string v1, "4297"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onColorPickerCancel()V
    .locals 2

    const-string v0, "411"

    const-string v1, "4307"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onColorSettingCancel()V
    .locals 2

    const-string v0, "411"

    const-string v1, "4305"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onColorSettingDone(I)V
    .locals 3

    int-to-long v0, p1

    const-string p1, "411"

    const-string v2, "4306"

    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public onColorSettingSelected()V
    .locals 2

    const-string v0, "411"

    const-string v1, "4126"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onEyedropperHandlerTapped()V
    .locals 2

    const-string v0, "411"

    const-string v1, "4197"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onEyedropperSelected()V
    .locals 2

    const-string v0, "411"

    const-string v1, "4194"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRecentColorSelected()V
    .locals 2

    const-string v0, "411"

    const-string v1, "4299"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSeekbarChanged()V
    .locals 2

    const-string v0, "411"

    const-string v1, "4192"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
