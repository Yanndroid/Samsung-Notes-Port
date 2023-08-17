.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper$DeviceStateChangeCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceStateChangeCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/util/Consumer<",
        "Landroidx/window/layout/WindowLayoutInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper$DeviceStateChangeCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper;Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper$DeviceStateChangeCallback;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper;)V

    return-void
.end method


# virtual methods
.method public accept(Landroidx/window/layout/WindowLayoutInfo;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/window/layout/WindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/window/layout/DisplayFeature;

    instance-of v1, v0, Landroidx/window/layout/FoldingFeature;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper$DeviceStateChangeCallback;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper$Callback;

    move-result-object v1

    check-cast v0, Landroidx/window/layout/FoldingFeature;

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper$Callback;->onChangedDeviceState(Landroidx/window/layout/FoldingFeature;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/window/layout/WindowLayoutInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper$DeviceStateChangeCallback;->accept(Landroidx/window/layout/WindowLayoutInfo;)V

    return-void
.end method
