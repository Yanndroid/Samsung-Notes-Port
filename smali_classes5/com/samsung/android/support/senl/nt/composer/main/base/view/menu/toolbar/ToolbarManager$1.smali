.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/AbsToolbarContainerLayout$OnToolbarPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->attachToolbar(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetToolbarPosition(Landroid/graphics/Rect;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/ToolbarManager;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/HwToolbarMenu;->onSetToolbarPosition(Landroid/graphics/Rect;Z)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
