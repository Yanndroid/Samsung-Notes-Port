.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip;->showDelayedAfterLaidOut(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip$1;->val$targetView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip$1;->val$targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip$1;->val$targetView:Landroid/view/View;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip;->f(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip;->g()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip;->g()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip$1;->val$targetView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip;Landroid/view/View;)V

    :cond_1
    return-void
.end method
