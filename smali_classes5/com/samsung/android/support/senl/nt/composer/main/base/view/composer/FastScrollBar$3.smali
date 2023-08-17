.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

.field public final synthetic val$gestureDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;Landroid/view/GestureDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$3;->val$gestureDetector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$3;->val$gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$OnScrollListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->onMove(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$OnScrollListener;Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouch event #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$OnScrollListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->onUp(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$OnScrollListener;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$Scroller;->getView()Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/composer/FastScrollBar;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x9c4

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_1
    return p1
.end method
