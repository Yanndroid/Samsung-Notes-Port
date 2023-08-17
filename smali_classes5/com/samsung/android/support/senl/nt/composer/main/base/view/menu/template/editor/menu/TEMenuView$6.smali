.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->initSeekBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateOpacity(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->updateOpacity(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->isDragging()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/template/editor/adjust/TEAdjustPresenter;->getOpacity()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->setStartProgress(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;)Z

    move-result v0

    invoke-virtual {p1, p3, v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/animation/SeekBarProgressAnimation;->setTarget(ZZI)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$6;->updateOpacity(I)V

    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->i()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onStartTrackTouch()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;Z)V

    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->i()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onStopTrackingTouch()"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView$6;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/editor/menu/TEMenuView;Z)V

    return-void
.end method
