.class Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;->updateCurrentPath(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;->a(Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    const/16 v1, 0x11

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;->a(Lcom/samsung/android/support/senl/nt/app/common/widget/FolderPathLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    const/16 v1, 0x42

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    return-void
.end method
