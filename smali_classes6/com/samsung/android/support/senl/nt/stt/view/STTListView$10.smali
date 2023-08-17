.class Lcom/samsung/android/support/senl/nt/stt/view/STTListView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->updateCurrentRecognizeText(Landroid/text/SpannableStringBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

.field public final synthetic val$displayText:Landroid/text/SpannableStringBuilder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;Landroid/text/SpannableStringBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$10;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$10;->val$displayText:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$10;->this$0:Lcom/samsung/android/support/senl/nt/stt/view/STTListView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/stt/view/STTListView;->a(Lcom/samsung/android/support/senl/nt/stt/view/STTListView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/stt/view/STTListView$10;->val$displayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
