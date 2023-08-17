.class public final Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$GradationSettingUpdateCmd;
.super Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GradationSettingUpdateCmd"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0080\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\u0007H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$GradationSettingUpdateCmd;",
        "Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;",
        "Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;",
        "visibility",
        "",
        "(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;Z)V",
        "preProcessToHide",
        "",
        "preProcessToShow",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$GradationSettingUpdateCmd;->this$0:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    const/4 v3, 0x4

    const/16 v4, 0x1f8

    const-string v5, "Gradation Setting"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;-><init>(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;ZIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public preProcessToHide()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$GradationSettingUpdateCmd;->this$0:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->access$getMHSV$p(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)[F

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$GradationSettingUpdateCmd;->this$0:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->access$setMHSV$p(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;[F)V

    :cond_0
    return-void
.end method

.method public preProcessToShow()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$GradationSettingUpdateCmd;->this$0:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->access$clearPopupsExceptPen(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V

    return-void
.end method
