.class Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionButtonViewHolder"
.end annotation


# instance fields
.field public mActionButton:Landroid/widget/ImageView;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonViewHolder;->this$0:Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    instance-of p1, p2, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/labs/actionbar/NotesCustomAppbar$ActionButtonViewHolder;->mActionButton:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method
