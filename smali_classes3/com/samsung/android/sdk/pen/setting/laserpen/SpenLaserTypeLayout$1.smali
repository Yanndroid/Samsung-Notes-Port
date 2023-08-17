.class Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/samsung/android/spen/R$id;->laser_line_view:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->setType(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;)Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout$OnDataChangedListener;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout;)Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout$OnDataChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/laserpen/SpenLaserTypeLayout$OnDataChangedListener;->onLaserTypeChanged(I)V

    return-void
.end method
