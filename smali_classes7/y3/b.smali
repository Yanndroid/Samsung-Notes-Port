.class public final synthetic Ly3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly3/b;->a:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;

    iput-object p2, p0, Ly3/b;->b:Landroid/view/View;

    iput-boolean p3, p0, Ly3/b;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ly3/b;->a:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;

    iget-object v1, p0, Ly3/b;->b:Landroid/view/View;

    iget-boolean v2, p0, Ly3/b;->c:Z

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->b(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;Landroid/view/View;Z)V

    return-void
.end method
