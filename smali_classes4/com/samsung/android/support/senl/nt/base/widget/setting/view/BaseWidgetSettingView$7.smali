.class Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->updateRoundCornerViewHeight(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;

.field public final synthetic val$height:I

.field public final synthetic val$roundCornerView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$7;->this$0:Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$7;->val$roundCornerView:Landroid/view/View;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$7;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$7;->val$roundCornerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$dimen;->widget_setting_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$7;->val$height:I

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$7;->val$roundCornerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$7;->val$height:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$7;->val$roundCornerView:Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$7;->val$height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$7;->val$roundCornerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
