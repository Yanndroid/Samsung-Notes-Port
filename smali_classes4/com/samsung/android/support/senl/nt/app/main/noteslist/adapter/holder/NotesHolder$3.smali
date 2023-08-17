.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/common/listener/ThumbnailHoverListener$HoverRecyclerViewHolderListener;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder$3;->val$itemView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundColor()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getImageDrawableImpl()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->getHoverThumbnailFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->getLockType()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isLock(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder$3;->val$itemView:Landroid/view/View;

    return-object v0
.end method

.method public hasOnlyHandwritingSdoc()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->hasOnlyHandwritingSdoc()Z

    move-result v0

    return v0
.end method

.method public isSdoc()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->isSdoc()Z

    move-result v0

    return v0
.end method

.method public isSupportInvertedBGColor()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/NotesHolder;->mNotesHolderInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/NotesHolderInfo;->isSupportInvertedBGColor()Z

    move-result v0

    return v0
.end method
