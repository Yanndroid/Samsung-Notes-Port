.class Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private moveDrawer(Landroid/view/View;F)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->e(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;)Landroid/view/View;

    move-result-object p2

    neg-float p1, p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->e(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;)Landroid/view/View;

    move-result-object p2

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    const-string p1, "103"

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->d(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;)Z

    move-result p1

    const-string v0, "1051"

    const-string v1, "101"

    if-eqz p1, :cond_1

    const-string p1, "b"

    invoke-static {v1, v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->g(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;Z)V

    goto :goto_0

    :cond_1
    const-string p1, "a"

    invoke-static {v1, v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    move p2, v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$2;->moveDrawer(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->setStatusBarAndNavigationBarColor(F)V

    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->isDrawerOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;->g(Lcom/samsung/android/support/senl/nt/app/main/drawer/view/DrawerFragment;Z)V

    :cond_0
    return-void
.end method
