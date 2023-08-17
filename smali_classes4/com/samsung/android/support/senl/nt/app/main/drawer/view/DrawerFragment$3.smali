.class Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/notes/bixby/BixbyManagerContract$IDrawerFragment;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerDrawerFragmentBixby2()Lcom/samsung/android/support/notes/bixby/bixby2/contract/IDrawerFragmentBixby2;
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DrawerFragmentBixby2;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DrawerFragmentBixby2;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->b(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;)Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$DrawerFragmentBixby2;->setDrawerLayout(Landroidx/drawerlayout/widget/DrawerLayout;)V

    return-object v0
.end method
