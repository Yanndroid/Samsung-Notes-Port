.class Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->setDrawerBarAnimator(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->a(Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;)Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar$DrawerContract;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->a(Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;)Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar$DrawerContract;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar$DrawerContract;->isDrawerOpened()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;->a(Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar;)Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar$DrawerContract;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar$DrawerContract;->openDrawer(Z)V

    :cond_1
    return v0
.end method
