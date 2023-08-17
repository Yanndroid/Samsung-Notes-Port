.class Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;->setCloseButtonTouchEvent()V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout$3;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout$3;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;->access$500(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout$3;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;->access$600(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingChangeStyleLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;->updateLastPenTypeSelectionState()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
