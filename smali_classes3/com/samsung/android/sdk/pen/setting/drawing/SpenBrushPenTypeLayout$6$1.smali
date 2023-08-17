.class Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$6;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$6;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$6;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$6$1;->this$1:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$6$1;->this$1:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$6;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$6;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->access$700(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$6$1;->this$1:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$6;

    iget-object v2, v2, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout$6;->this$0:Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->access$800(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;->access$900(Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenTypeLayout;II)V

    return-void
.end method
