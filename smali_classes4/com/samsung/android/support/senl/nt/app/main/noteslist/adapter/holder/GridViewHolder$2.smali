.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->setFocusListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;)Lcom/samsung/android/support/senl/nt/app/main/common/view/GridRatioView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestFocus()Z

    :cond_0
    return-void
.end method
