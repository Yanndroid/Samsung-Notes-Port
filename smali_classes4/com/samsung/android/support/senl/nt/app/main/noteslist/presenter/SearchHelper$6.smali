.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$6;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper;->hideSoftInput(Z)V

    return-void
.end method
