.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->getSubFolderHolderInfo(I)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holderinfo/SubFolderHolderInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;->access$000(Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;->onSubFolderSelected(Ljava/lang/String;)V

    return-void
.end method
