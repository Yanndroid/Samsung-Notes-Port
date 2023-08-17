.class public final synthetic Lx3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx3/c;->a:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    return-void
.end method


# virtual methods
.method public final onColorChanged(I[F)V
    .locals 1

    iget-object v0, p0, Lx3/c;->a:Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;->a(Lcom/samsung/android/support/senl/addons/brush/view/menu/control/BrushMenuControl;I[F)V

    return-void
.end method
