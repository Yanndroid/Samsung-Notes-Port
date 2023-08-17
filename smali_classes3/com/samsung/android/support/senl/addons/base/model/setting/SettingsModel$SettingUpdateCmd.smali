.class public Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingUpdateCmd"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0090\u0004\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016J\u0006\u0010\r\u001a\u00020\u000bR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;",
        "",
        "mVisibility",
        "",
        "mMask",
        "",
        "mNotificationId",
        "mLog",
        "",
        "(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;ZIILjava/lang/String;)V",
        "preProcessToHide",
        "",
        "preProcessToShow",
        "update",
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
.field private final mLog:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mMask:I

.field private final mNotificationId:I

.field private final mVisibility:Z

.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;ZIILjava/lang/String;)V
    .locals 1
    .param p4    # I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "mLog"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;->this$0:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;->mVisibility:Z

    iput p3, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;->mMask:I

    iput p4, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;->mNotificationId:I

    iput-object p5, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;->mLog:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public preProcessToHide()V
    .locals 0

    return-void
.end method

.method public preProcessToShow()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;->this$0:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->clearAllPopupVisibility()V

    return-void
.end method

.method public final update()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;->mVisibility:Z

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;->this$0:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    iget v2, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;->mMask:I

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->access$isShowPopup(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;I)Z

    move-result v1

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;->mVisibility:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;->preProcessToShow()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;->this$0:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->access$getMPopupType$p(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)I

    move-result v1

    iget v2, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;->mMask:I

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;->preProcessToHide()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;->this$0:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->access$getMPopupType$p(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)I

    move-result v1

    iget v2, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;->mMask:I

    sub-int/2addr v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->access$setMPopupType$p(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;I)V

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;->mVisibility:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "show "

    goto :goto_1

    :cond_1
    const-string v2, "hide "

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;->mLog:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;->this$0:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    iget v1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel$SettingUpdateCmd;->mNotificationId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
