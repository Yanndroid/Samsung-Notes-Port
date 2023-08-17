.class Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;->initListener(Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;

.field public final synthetic val$holder:Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$1;->val$holder:Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$1;->val$holder:Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;->voiceRecognizeResult:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;->b(Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;Landroid/widget/TextView;II)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;->a(Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;)Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapterContract;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$1;->val$holder:Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;

    iget v1, v1, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;->position:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapterContract;->onWordEdit(II)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$1;->val$holder:Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;->voiceRecognizeResult:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;->b(Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;Landroid/widget/TextView;II)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;->a(Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter;)Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapterContract;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$1;->val$holder:Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;

    iget v1, v1, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapter$STTListViewHolder;->position:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/stt/view/STTListViewAdapterContract;->onWordTouched(II)V

    const/4 p1, 0x1

    return p1
.end method
