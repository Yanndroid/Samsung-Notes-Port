.class final Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SettingLayoutChangeListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002JP\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0008H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChangeListener;",
        "Landroid/view/View$OnLayoutChangeListener;",
        "(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)V",
        "onLayoutChange",
        "",
        "v",
        "Landroid/view/View;",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "oldLeft",
        "oldTop",
        "oldRight",
        "oldBottom",
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChangeListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->isTabletUi()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    sub-int/2addr p8, p6

    sub-int/2addr p9, p7

    if-ne p8, p4, :cond_1

    if-ne p9, p5, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChangeListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMSpenSettingBrushLayout$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    move-result-object p1

    if-ge p4, p5, :cond_3

    const/4 p2, 0x3

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->setColorAlign(I)Z

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChangeListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMSpenSettingBrushLayout$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_3
    const/4 p2, 0x2

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->setColorAlign(I)Z

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChangeListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMSpenSettingBrushLayout$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingBrushLayout;->setPenAlign(I)Z

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChangeListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMBrushMenuControl$p(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChangeListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {p2}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getMenuInfo(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$SettingLayoutChangeListener;->this$0:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object p3

    const-string p6, "rootView"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->updateMenuInfo(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;Landroid/view/View;)V

    invoke-static {}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onLayout. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x78

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
