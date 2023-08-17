.class public final Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel$mPanningBarListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/IPanningBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;-><init>(Lcom/samsung/android/support/senl/addons/base/model/canvas/control/IFacade;Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel$IPanningBarTouchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel$mPanningBarListener$1",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/IPanningBarListener;",
        "onScroll",
        "",
        "dx",
        "",
        "dy",
        "onTouch",
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
.field public final synthetic this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel$mPanningBarListener$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(FF)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel$mPanningBarListener$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->access$onRequestScroll(Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;FF)V

    return-void
.end method

.method public onTouch()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel$mPanningBarListener$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->access$getMTouchListener$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel$IPanningBarTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel$mPanningBarListener$1;->this$0:Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;->access$getMTouchListener$p(Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel$IPanningBarTouchListener;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/panningbar/PanningBarViewModel$IPanningBarTouchListener;->onTouch()V

    :cond_0
    return-void
.end method
