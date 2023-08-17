.class public final synthetic Lcom/samsung/android/support/senl/addons/brush/view/menu/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/b;->a:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/menu/b;->a:Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer$mColorMenuCallback$1;->a(Lcom/samsung/android/support/senl/addons/brush/view/menu/BrushMenuContainer;)V

    return-void
.end method
