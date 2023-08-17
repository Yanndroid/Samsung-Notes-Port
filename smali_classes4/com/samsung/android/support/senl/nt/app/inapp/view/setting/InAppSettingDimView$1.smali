.class Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;->setTouchListenerToDim(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "InAppSettingDimView"

    const-string p2, "onTouchOutside()"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;->a(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView;)Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView$InAppSettingViewContract;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingDimView$InAppSettingViewContract;->onTouchOutside()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
