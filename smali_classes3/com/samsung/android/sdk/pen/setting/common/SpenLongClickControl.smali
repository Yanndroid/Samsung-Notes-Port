.class public Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl$SpenLongPressGestureListener;
    }
.end annotation


# instance fields
.field private mBrushLayoutGestureDetector:Landroid/view/GestureDetector;

.field private mIsLongPressedOnLayout:Z

.field private mLastTouchDownX:F

.field private mLastTouchDownY:F

.field public mLongClickListener:Lcom/samsung/android/sdk/pen/setting/common/SettingViewLongClickListener;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->mIsLongPressedOnLayout:Z

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->mView:Landroid/view/View;

    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl$SpenLongPressGestureListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl$SpenLongPressGestureListener;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->mBrushLayoutGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public static synthetic access$002(Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->mIsLongPressedOnLayout:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->mLastTouchDownX:F

    return p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->mLastTouchDownY:F

    return p0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->mBrushLayoutGestureDetector:Landroid/view/GestureDetector;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->mLongClickListener:Lcom/samsung/android/sdk/pen/setting/common/SettingViewLongClickListener;

    return-void
.end method

.method public isLongPressedOnLayout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->mIsLongPressedOnLayout:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->mBrushLayoutGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->mLastTouchDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->mLastTouchDownY:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LastTouchDown ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenLongClickControl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->mIsLongPressedOnLayout:Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setOnLongClickListener(Lcom/samsung/android/sdk/pen/setting/common/SettingViewLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->mLongClickListener:Lcom/samsung/android/sdk/pen/setting/common/SettingViewLongClickListener;

    return-void
.end method
