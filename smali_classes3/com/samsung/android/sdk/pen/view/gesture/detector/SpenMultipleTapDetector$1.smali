.class Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector$1;->this$0:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector$1;->this$0:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;->access$002(Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenMultipleTapDetector;I)I

    return-void
.end method
