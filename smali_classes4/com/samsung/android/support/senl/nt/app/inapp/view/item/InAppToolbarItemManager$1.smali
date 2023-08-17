.class Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarItemManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarItemManager;->restoreHwToolbarState(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/common/HwToolbarState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarItemManager;

.field public final synthetic val$styleItem:Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarStyle;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarItemManager;Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarStyle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarItemManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarItemManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarItemManager$1;->val$styleItem:Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarItemManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarItemManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarItemManager;->d(Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarItemManager;)Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarItemManager$1;->val$styleItem:Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarStyle;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/item/InAppToolbarStyle;->getContainer()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x10

    const/16 v3, 0x20

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;->show(IILandroid/view/View;Z)V

    return-void
.end method
