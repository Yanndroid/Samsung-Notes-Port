.class final Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChildChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildLayoutChangedListener;
.implements Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SettingLayoutChildChangeListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\r\u001a\u00020\u0005H\u0016J\u0010\u0010\u000e\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChildChangeListener;",
        "Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildLayoutChangedListener;",
        "Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout$ChildActionListener;",
        "(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)V",
        "onColorAlignChanged",
        "",
        "align",
        "",
        "onColorLongClicked",
        "onColorRectSizeChanged",
        "rect",
        "Landroid/graphics/Rect;",
        "onPenAlignChanged",
        "onPenLongClicked",
        "onPenRectChanged",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChildChangeListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorAlignChanged(I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onColorAlignChanged. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChildChangeListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMBrushMenuControl$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChildChangeListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMenuInfo(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChildChangeListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    const-string v2, "rootView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->updateMenuInfo(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChildChangeListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMBrushMenuControl$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->disableSmartTipPopup()V

    :cond_1
    return-void
.end method

.method public onColorLongClicked()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChildChangeListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMBrushMenuControl$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->disableSmartTipPopup()V

    :cond_0
    return-void
.end method

.method public onColorRectSizeChanged(Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onColorRectSizeChanged. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChildChangeListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMBrushMenuControl$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChildChangeListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMenuInfo(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChildChangeListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    const-string v2, "rootView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->updateMenuInfo(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onPenAlignChanged(I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPenAlignChanged. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChildChangeListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMBrushMenuControl$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChildChangeListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMenuInfo(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChildChangeListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    const-string v2, "rootView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->updateMenuInfo(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChildChangeListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMBrushMenuControl$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->disableSmartTipPopup()V

    :cond_1
    return-void
.end method

.method public onPenLongClicked()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChildChangeListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMBrushMenuControl$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->disableSmartTipPopup()V

    :cond_0
    return-void
.end method

.method public onPenRectChanged(Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPenRectChanged. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChildChangeListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMBrushMenuControl$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChildChangeListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMenuInfo(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChildChangeListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    const-string v2, "rootView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->updateMenuInfo(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChildChangeListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMBrushMenuControl$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->setSmartTipPopup()V

    :cond_1
    return-void
.end method
