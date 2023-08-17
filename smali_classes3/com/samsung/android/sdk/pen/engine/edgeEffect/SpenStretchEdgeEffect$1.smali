.class Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->onPull(IFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;

.field public final synthetic val$direction:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect$1;->this$0:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;

    iput p2, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect$1;->val$direction:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect$1;->this$0:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->access$000(Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;)[Landroid/widget/EdgeEffect;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect$1;->val$direction:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect$1;->this$0:Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;->access$102(Lcom/samsung/android/sdk/pen/engine/edgeEffect/SpenStretchEdgeEffect;Z)Z

    return-void
.end method
