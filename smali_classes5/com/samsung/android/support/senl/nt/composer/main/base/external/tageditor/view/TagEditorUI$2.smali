.class Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/CandidateTagsRecyclerView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/CandidateTagsRecyclerView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/view/TagEditorUI;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
