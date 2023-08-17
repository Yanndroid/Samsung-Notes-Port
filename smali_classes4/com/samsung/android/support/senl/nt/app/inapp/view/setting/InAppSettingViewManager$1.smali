.class Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;->setPositionLayout(ILandroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

.field public final synthetic val$callerType:I

.field public final synthetic val$container:Landroid/view/View;

.field public final synthetic val$settingLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;Landroid/view/View;ILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager$1;->val$settingLayout:Landroid/view/View;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager$1;->val$callerType:I

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager$1;->val$container:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager$1;->val$settingLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager$1;->val$callerType:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager$1;->val$container:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager$1;->val$settingLayout:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;->d(Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/InAppSettingViewManager;ILandroid/view/View;Landroid/view/View;)V

    return-void
.end method
