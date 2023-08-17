.class Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl$SpenLongPressGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpenLongPressGestureListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl$SpenLongPressGestureListener;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl$SpenLongPressGestureListener;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->access$002(Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;Z)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl$SpenLongPressGestureListener;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->mLongClickListener:Lcom/samsung/android/sdk/pen/setting/common/SettingViewLongClickListener;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl$SpenLongPressGestureListener;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->access$200(Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;)F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl$SpenLongPressGestureListener;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->access$300(Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;)F

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/samsung/android/sdk/pen/setting/common/SettingViewLongClickListener;->onLongClick(Landroid/view/View;FF)Z

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl$SpenLongPressGestureListener;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;->access$002(Lcom/samsung/android/sdk/pen/setting/common/SpenLongClickControl;Z)Z

    return-void
.end method
