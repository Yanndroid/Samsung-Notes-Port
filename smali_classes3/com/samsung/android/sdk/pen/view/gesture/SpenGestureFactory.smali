.class public Lcom/samsung/android/sdk/pen/view/gesture/SpenGestureFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SpenGestureFactory"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNativeHandle:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGestureFactory;->mContext:Landroid/content/Context;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGestureFactory;->mNativeHandle:J

    const-string v0, "SpenGestureFactory"

    const-string v1, "[JavaGesture] SpenGestureFactory construct"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGestureFactory;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/view/gesture/SpenGestureFactory;->Native_init(Lcom/samsung/android/sdk/pen/view/gesture/SpenGestureFactory;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGestureFactory;->mNativeHandle:J

    return-void
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_init(Lcom/samsung/android/sdk/pen/view/gesture/SpenGestureFactory;)J
.end method

.method private createGesture(II)Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;
    .locals 1

    new-instance p1, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGestureFactory;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/sdk/pen/view/gesture/SpenGesture;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 4

    const-string v0, "SpenGestureFactory"

    const-string v1, "[JavaGesture] close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGestureFactory;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/view/gesture/SpenGestureFactory;->Native_finalize(J)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGestureFactory;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getNativeHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/view/gesture/SpenGestureFactory;->mNativeHandle:J

    return-wide v0
.end method
