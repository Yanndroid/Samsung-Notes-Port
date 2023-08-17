.class public final synthetic Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/a;->a:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/a;->b:I

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/a;->a:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/a;->b:I

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$CandidateTagAdapter;ILandroid/view/View;)Z

    move-result p1

    return p1
.end method
