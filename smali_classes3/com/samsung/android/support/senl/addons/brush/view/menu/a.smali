.class public final synthetic Lcom/samsung/android/support/senl/addons/brush/view/menu/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$OnModeChangeListener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/a;->a:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    return-void
.end method


# virtual methods
.method public final onModeChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/a;->a:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;->a(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;I)V

    return-void
.end method
