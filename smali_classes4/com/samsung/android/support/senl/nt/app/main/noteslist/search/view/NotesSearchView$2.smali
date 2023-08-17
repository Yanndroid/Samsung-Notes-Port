.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$2;
.super Landroid/text/InputFilter$LengthFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1

    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;)Landroid/content/Context;

    move-result-object p2

    instance-of p2, p2, Landroid/app/Activity;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;)Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/samsung/android/support/senl/nt/app/R$string;->ss_maximum_number_of_characters_exceeded:I

    const/4 p5, 0x1

    new-array p5, p5, [Ljava/lang/Object;

    const/16 p6, 0xc7

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    const/4 v0, 0x0

    aput-object p6, p5, v0

    invoke-virtual {p3, p4, p5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, v0}, Lcom/samsung/android/support/senl/nt/base/winset/snackbar/SnackbarHelper;->show(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    :cond_0
    return-object p1
.end method
