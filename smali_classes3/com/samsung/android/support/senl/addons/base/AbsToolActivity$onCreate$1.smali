.class public final Lcom/samsung/android/support/senl/addons/base/AbsToolActivity$onCreate$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/samsung/android/support/senl/addons/base/AbsToolActivity$onCreate$1",
        "Landroidx/activity/OnBackPressedCallback;",
        "handleOnBackPressed",
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity$onCreate$1;->this$0:Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity$onCreate$1;->this$0:Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->access$getMEventListener$p(Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;)Lcom/samsung/android/support/senl/addons/base/model/IEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity$onCreate$1;->this$0:Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->access$getMEventListener$p(Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;)Lcom/samsung/android/support/senl/addons/base/model/IEventListener;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/IKeyListener;->onBack()Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/AbsToolActivity;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBackPressed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
