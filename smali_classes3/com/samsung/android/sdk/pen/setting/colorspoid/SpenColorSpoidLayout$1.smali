.class Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->show(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const-string v0, "SpenColorSpoidLayout"

    const-string v1, "call movePosition() in onGlobalLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->movePosition(II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->access$300(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->access$400(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->access$302(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;Z)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->access$500(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->access$600(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method
