.class Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->initRadioButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$4;->this$0:Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$4;->this$0:Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->getPresenter()Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getBackgroundColor()I

    move-result p1

    sget v0, Lcom/samsung/android/support/senl/nt/base/R$id;->radio_white:I

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$4;->this$0:Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->getPresenter()Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->onBackgroundColorCheckChanged(I)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/base/R$id;->radio_black:I

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$4;->this$0:Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->getPresenter()Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->onBackgroundColorCheckChanged(I)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$4;->this$0:Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingContract;->updateWidgetPreviewTheme()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$4;->this$0:Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingContract;->updateWidgetBackgroundColor()V

    return-void
.end method
