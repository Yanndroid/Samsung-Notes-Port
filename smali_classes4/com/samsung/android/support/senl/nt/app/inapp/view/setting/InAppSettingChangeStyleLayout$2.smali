.class Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;->init()V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;->i(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;)Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;->setFloatingContainerVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;->i(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;)Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout$2;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;->access$400(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;->setItemViewVisibility(II)V

    return-void
.end method
