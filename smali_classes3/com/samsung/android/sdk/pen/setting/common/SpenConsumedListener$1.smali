.class Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;)Landroid/view/ViewParent;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;->access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenConsumedListener;)Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return p2
.end method
