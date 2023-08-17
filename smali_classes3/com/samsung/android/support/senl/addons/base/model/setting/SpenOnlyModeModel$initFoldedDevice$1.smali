.class public final Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel$initFoldedDevice$1;
.super Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FoldStateChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->initFoldedDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel$initFoldedDevice$1",
        "Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FoldStateChangeListener;",
        "onChanged",
        "",
        "isFolded",
        "",
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel$initFoldedDevice$1;->this$0:Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FoldStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Z)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "folded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel$initFoldedDevice$1;->this$0:Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/SpenUtils;->isSpenActivated()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/setting/SpenOnlyModeModel;->setSpenActivated(Z)V

    return-void
.end method
