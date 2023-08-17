.class Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->initOpacityView()V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$3;->this$0:Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 1

    mul-int/lit8 p1, p2, 0xa

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$3;->this$0:Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;

    iget-object p3, p3, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mOpacityText:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->getProgressToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$3;->this$0:Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;

    iget-object p3, p3, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p3, p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView$3;->this$0:Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingView;->getPresenter()Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->onTransparencyChanged(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    return-void
.end method
