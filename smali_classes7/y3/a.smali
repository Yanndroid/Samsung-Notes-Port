.class public final synthetic Ly3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;Landroid/view/View;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly3/a;->a:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;

    iput-object p2, p0, Ly3/a;->b:Landroid/view/View;

    iput-object p3, p0, Ly3/a;->c:Landroid/view/View;

    iput-boolean p4, p0, Ly3/a;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ly3/a;->a:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;

    iget-object v1, p0, Ly3/a;->b:Landroid/view/View;

    iget-object v2, p0, Ly3/a;->c:Landroid/view/View;

    iget-boolean v3, p0, Ly3/a;->d:Z

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;->a(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/SubMenuLayoutViewModel;Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method
