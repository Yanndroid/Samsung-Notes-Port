.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/NotesHolderUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/NotesHolderUtil;->applyDimAlphaMaskColor(Landroid/content/Context;Landroid/text/Editable;IIZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/text/style/ForegroundColorSpan;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$edit:Landroid/text/Editable;


# direct methods
.method public constructor <init>(Landroid/text/Editable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/NotesHolderUtil$1;->val$edit:Landroid/text/Editable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/text/style/ForegroundColorSpan;Landroid/text/style/ForegroundColorSpan;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/NotesHolderUtil$1;->val$edit:Landroid/text/Editable;

    invoke-interface {v0, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/NotesHolderUtil$1;->val$edit:Landroid/text/Editable;

    invoke-interface {v0, p2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result p2

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-ge p1, p2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/text/style/ForegroundColorSpan;

    check-cast p2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/util/NotesHolderUtil$1;->compare(Landroid/text/style/ForegroundColorSpan;Landroid/text/style/ForegroundColorSpan;)I

    move-result p1

    return p1
.end method
