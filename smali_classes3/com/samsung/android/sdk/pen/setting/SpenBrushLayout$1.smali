.class Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenViewPositionControl$GuidePositionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGuidePositionChanged(II)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGuidePositionChanged() current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " guide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenBrushLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "onGuidePositionChanged() brushGuideControl is null"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/setting/SpenBrushGuideControl;->getAlign(I)I

    move-result p2

    sget v0, Lcom/samsung/android/spen/R$id;->target_pen:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, " isSame="

    if-ne p1, v0, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onGuidePositionChanged() [PEN] align="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " penAlign="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)I

    move-result v0

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)I

    move-result p1

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$300(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)V

    goto :goto_3

    :cond_3
    sget v0, Lcom/samsung/android/spen/R$id;->target_color:I

    if-ne p1, v0, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onGuidePositionChanged() [COLOR] align="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " colorAlign="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$400(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$400(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)I

    move-result v0

    if-ne p2, v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$400(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)I

    move-result p1

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;->access$500(Lcom/samsung/android/sdk/pen/setting/SpenBrushLayout;)V

    goto :goto_1

    :cond_5
    :goto_3
    return-void
.end method
