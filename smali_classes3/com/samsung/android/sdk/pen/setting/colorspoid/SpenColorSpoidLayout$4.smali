.class Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->access$600(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)Landroid/view/ViewGroup;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-ne p2, p6, :cond_1

    if-ne p3, p7, :cond_1

    if-ne p4, p8, :cond_1

    if-ne p5, p9, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)Landroid/widget/RelativeLayout;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_3

    return-void

    :cond_3
    if-ne p3, p5, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->access$700(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->rotatePosition()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->access$702(Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;Z)Z

    goto :goto_0

    :cond_5
    const-string p1, "SpenColorSpoidLayout"

    const-string p2, "checkPosition in OnLayoutChange - need this check??? "

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
