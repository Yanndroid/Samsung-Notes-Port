.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/view/TitleView$NoteTitleContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;-><init>(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;

.field public final synthetic val$itemView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder$2;->val$itemView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder$2;->val$itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getNotesHolderInfo()Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder$2;->val$itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getViewMode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->access$000(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;)I

    move-result v0

    return v0
.end method
