.class Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$HolderCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HolderCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$HolderCallback;->this$0:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$HolderCallback;-><init>(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 7

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$HolderCallback;->this$0:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->access$300(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    const-string v0, "SpenFBRDrawPad"

    if-nez p2, :cond_0

    const-string/jumbo p1, "surfaceChanged:NativeDrawPad == null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "surfaceChanged, width = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$HolderCallback;->this$0:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->access$400(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$HolderCallback;->this$0:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->access$300(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;)J

    move-result-wide v0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$HolderCallback;->this$0:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->access$500(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;)I

    move-result v2

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$HolderCallback;->this$0:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->access$600(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;)Landroid/util/DisplayMetrics;

    move-result-object p2

    iget v3, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$HolderCallback;->this$0:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->access$600(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;)Landroid/util/DisplayMetrics;

    move-result-object p2

    iget v4, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$HolderCallback;->this$0:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->access$600(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;)Landroid/util/DisplayMetrics;

    move-result-object p2

    iget v5, p2, Landroid/util/DisplayMetrics;->xdpi:F

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$HolderCallback;->this$0:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->access$600(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;)Landroid/util/DisplayMetrics;

    move-result-object p2

    iget v6, p2, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->access$700(JIIIFF)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$HolderCallback;->this$0:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->access$300(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;)J

    move-result-wide v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, v1, p1, p3, p4}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->access$800(JLandroid/view/Surface;II)Z

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$HolderCallback;->this$0:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->access$300(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string p1, "SpenFBRDrawPad"

    const-string/jumbo v0, "surfaceCreated:NativeDrawPad == null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$HolderCallback;->this$0:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->access$300(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;)J

    move-result-wide v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->access$900(JLandroid/view/Surface;)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$HolderCallback;->this$0:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->access$1000(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$HolderCallback;->this$0:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {p1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$HolderCallback;->this$0:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->access$300(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const-string p1, "SpenFBRDrawPad"

    const-string/jumbo v0, "surfaceDestroyed:NativeDrawPad == null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$HolderCallback;->this$0:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-virtual {p1, v0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad$HolderCallback;->this$0:Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->access$300(Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/engine/fbrDrawPad/SpenFbrDrawPad;->access$1100(J)V

    return-void
.end method
