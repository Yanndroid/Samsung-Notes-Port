.class Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->closeDrawer(ZJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

.field public final synthetic val$animation:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$4;->val$animation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "DrawerFragment"

    const-string v1, "closeDrawer"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->b(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;)Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->c(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$4;->val$animation:Z

    invoke-virtual {v0, v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    return-void
.end method
