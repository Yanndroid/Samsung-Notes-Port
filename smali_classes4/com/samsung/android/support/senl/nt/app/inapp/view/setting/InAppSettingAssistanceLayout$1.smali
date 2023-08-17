.class Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingAssistanceLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView$InAppSettingViewContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingAssistanceLayout;-><init>(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingAssistanceLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingAssistanceLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingAssistanceLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingAssistanceLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallerView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingAssistanceLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingAssistanceLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingAssistanceLayout;->access$100(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingAssistanceLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingAssistanceLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingAssistanceLayout;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingAssistanceLayout;->access$000(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingAssistanceLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;->getCallerView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onTouchOutside()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingAssistanceLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingAssistanceLayout;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->onTouchOutside()V

    return-void
.end method
