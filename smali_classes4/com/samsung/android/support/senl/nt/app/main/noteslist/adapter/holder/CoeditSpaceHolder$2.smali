.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->initRootView(Landroid/view/View$OnClickListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->access$000(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->access$100(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->onSpaceLongPressed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
