.class Lcom/samsung/android/spen/libse/SeMediaRecorder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/spen/libse/SeMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/spen/libse/SeMediaRecorder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/spen/libse/SeMediaRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$1;->this$0:Lcom/samsung/android/spen/libse/SeMediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$1;->this$0:Lcom/samsung/android/spen/libse/SeMediaRecorder;

    invoke-static {p1}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->access$600(Lcom/samsung/android/spen/libse/SeMediaRecorder;)Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 p1, 0x385

    if-eq p2, p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$1;->this$0:Lcom/samsung/android/spen/libse/SeMediaRecorder;

    invoke-static {p1}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->access$600(Lcom/samsung/android/spen/libse/SeMediaRecorder;)Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;->onInfo(II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$1;->this$0:Lcom/samsung/android/spen/libse/SeMediaRecorder;

    invoke-static {p1}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->access$700(Lcom/samsung/android/spen/libse/SeMediaRecorder;)Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;

    move-result-object p1

    div-int/lit16 p3, p3, 0x3e8

    invoke-interface {p1, p3}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;->onUpdateTime(I)V

    :cond_1
    :goto_0
    return-void
.end method
