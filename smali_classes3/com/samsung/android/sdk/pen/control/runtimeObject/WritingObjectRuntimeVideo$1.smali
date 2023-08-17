.class Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$1;->this$0:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled(ILjava/lang/Object;)V
    .locals 0

    const-string p1, "WritingObjectRuntimeVideo"

    const-string p2, "onCanceled"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$1;->this$0:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->access$000(Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;)Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$ActionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$ActionListener;->onCloseControl()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$1;->this$0:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->access$000(Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;)Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$ActionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$ActionListener;->onUpdate()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$1;->this$0:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->access$100(Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;)Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$1;->this$0:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->access$100(Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;)Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->stop(Z)V

    :cond_0
    return-void
.end method

.method public onCompleted(Ljava/lang/Object;)V
    .locals 1

    const-string p1, "WritingObjectRuntimeVideo"

    const-string v0, "onCompleted"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$1;->this$0:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->access$000(Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;)Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$ActionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$ActionListener;->onCompleted()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$1;->this$0:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->access$000(Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;)Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$ActionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$ActionListener;->onUpdate()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$1;->this$0:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->access$100(Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;)Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$1;->this$0:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->access$100(Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;)Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/control/runtimeObject/SpenObjectRuntime;->stop(Z)V

    :cond_0
    return-void
.end method

.method public onObjectUpdated(Landroid/graphics/RectF;Ljava/lang/Object;)V
    .locals 0

    const-string p1, "WritingObjectRuntimeVideo"

    const-string p2, "onObjectUpdated"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$1;->this$0:Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;->access$000(Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo;)Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$ActionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/control/runtimeObject/WritingObjectRuntimeVideo$ActionListener;->onUpdate()V

    return-void
.end method
