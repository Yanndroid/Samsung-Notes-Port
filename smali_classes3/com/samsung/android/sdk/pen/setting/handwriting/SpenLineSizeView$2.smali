.class Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->access$200(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "SpenLineSizeView"

    if-nez v0, :cond_0

    const-string p1, "context is null so return."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->access$300(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;)[Landroid/widget/FrameLayout;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->access$400(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$ActionListener;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick, size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;

    invoke-static {v4}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->access$500(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;)[F

    move-result-object v4

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;

    invoke-static {v4}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->access$600(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;)[I

    move-result-object v4

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->access$400(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$ActionListener;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;

    invoke-static {v4}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->access$500(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;)[F

    move-result-object v4

    aget v4, v4, v2

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;

    invoke-static {v5}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->access$600(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;)[I

    move-result-object v5

    aget v5, v5, v2

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$ActionListener;->onSizeChanged(FI)V

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;

    invoke-static {v3, v2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->access$102(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;I)I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;

    invoke-static {v3, v2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->access$700(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;I)V

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$2;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;

    invoke-static {v4}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->access$300(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;)[Landroid/widget/FrameLayout;

    move-result-object v5

    aget-object v5, v5, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v4, v5, v2, v3}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->access$800(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;Landroid/view/View;IZ)V

    goto :goto_0

    :cond_3
    return-void
.end method
