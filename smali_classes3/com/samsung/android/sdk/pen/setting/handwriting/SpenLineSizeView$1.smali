.class Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->updateView(Z)V
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;)[Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;)[Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->access$100(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;)[Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenPreview;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;->access$100(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenLineSizeView;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
