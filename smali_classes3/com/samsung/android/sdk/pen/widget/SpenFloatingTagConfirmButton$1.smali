.class Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton$1;->this$0:Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton$1;->this$0:Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton$1;->this$0:Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->access$000(Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton$1;->this$0:Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sdk/pen/widget/SpenFloatingTagConfirmButton;->show(ZLandroid/graphics/RectF;)V

    :goto_0
    return-void
.end method
