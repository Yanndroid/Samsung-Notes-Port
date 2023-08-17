.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip$3;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip$3;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip$3$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip$3$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip$3;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip$3;->val$targetView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip$3$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip$3;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/CustomizeGuideTip$3;->val$targetView:Landroid/view/View;

    instance-of v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AllSideToolbarContainerLayout;->onReloadItemOrderLayout()V

    :cond_0
    return-void
.end method
