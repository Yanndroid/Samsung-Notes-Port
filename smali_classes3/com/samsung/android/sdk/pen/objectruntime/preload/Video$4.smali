.class Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->startVideoPlay()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$4;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$4;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$1600(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)V

    return-void
.end method
