.class public final synthetic Lcom/samsung/android/sdk/pen/view/gesture/detector/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;

.field public final synthetic b:Z

.field public final synthetic c:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;ZLandroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/a;->a:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/a;->b:Z

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/a;->c:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/a;->a:Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/a;->b:Z

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/view/gesture/detector/a;->c:Landroid/view/MotionEvent;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;->a(Lcom/samsung/android/sdk/pen/view/gesture/detector/SpenHoldMotionDetector;ZLandroid/view/MotionEvent;)V

    return-void
.end method
