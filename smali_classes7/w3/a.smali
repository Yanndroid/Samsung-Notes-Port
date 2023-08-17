.class public final synthetic Lw3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw3/a;->a:Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lw3/a;->a:Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;->b(Lcom/samsung/android/support/senl/addons/brush/view/canvas/BrushCanvas;)Z

    move-result v0

    return v0
.end method
