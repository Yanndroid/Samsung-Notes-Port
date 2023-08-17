.class Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView$InAppSettingViewContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;-><init>(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallerView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;->access$300(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;->access$200(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;->getCallerView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onTouchOutside()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;->access$000(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;->access$100(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;->updateLastPenTypeSelectionState()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingChangeStyleLayout;->onTouchOutside()V

    return-void
.end method
