.class Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->onVisibilityChanged(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$4;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$4;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$1500(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$4;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$2200(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$4;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$2200(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$4;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$2200(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
