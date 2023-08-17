.class Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/tablet/widget/TabletDrawerBar$DrawerContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDrawerOpened()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->i(Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;)Z

    move-result v0

    return v0
.end method

.method public openDrawer(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/tablet/TabletDrawerView;->openDrawer(Z)V

    return-void
.end method
