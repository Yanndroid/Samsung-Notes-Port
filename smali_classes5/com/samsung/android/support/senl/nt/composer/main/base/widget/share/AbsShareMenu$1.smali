.class Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->showPopupMenu(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;

.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$presenter:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu$1;->val$presenter:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu$1;->val$presenter:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->mSharePopupMenu:Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsPopupMenu;

    check-cast v3, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareTypeMenu;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareTypeMenu;->getShareType()Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/AbsShareMenu;->onItemClick(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$Presenter;Lcom/samsung/android/support/senl/nt/composer/main/base/widget/share/ShareMenuContract$ShareType;)V

    return-void
.end method
