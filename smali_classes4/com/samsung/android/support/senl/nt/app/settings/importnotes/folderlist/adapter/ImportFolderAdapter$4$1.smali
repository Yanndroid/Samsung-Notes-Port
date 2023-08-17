.class Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter$4$1;
.super Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter$RunnableWithView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter$4;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter$4;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter$4$1;->this$1:Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter$4;

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter$RunnableWithView;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/ImportFolderAdapter$RunnableWithView;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/folderlist/adapter/holder/ImportFolderHolder;->mItemContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->performClick()Z

    :cond_1
    return-void
.end method
