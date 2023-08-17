.class public final synthetic Lv3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;

.field public final synthetic b:Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv3/a;->a:Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;

    iput-object p2, p0, Lv3/a;->b:Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lv3/a;->a:Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;

    iget-object v1, p0, Lv3/a;->b:Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;->a(Lcom/samsung/android/support/senl/addons/base/viewmodel/animation/MenuHideViewModel;Lcom/samsung/android/support/senl/addons/base/model/event/LayoutChangeEvent;)V

    return-void
.end method
