.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter$TitleCoeditMemberListHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter$TitleCoeditMemberListHolder;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter$TitleCoeditMemberListHolder;

.field public final synthetic val$this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter$TitleCoeditMemberListHolder;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter$TitleCoeditMemberListHolder$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter$TitleCoeditMemberListHolder;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter$TitleCoeditMemberListHolder$1;->val$this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter$TitleCoeditMemberListHolder$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter$TitleCoeditMemberListHolder;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter$TitleCoeditMemberListHolder;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter$TitleCoeditMemberListAdapterContract;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter$TitleCoeditMemberListAdapterContract;->showCoeditMemberManage()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter$TitleCoeditMemberListHolder$1;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter$TitleCoeditMemberListHolder;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter$TitleCoeditMemberListHolder;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter$TitleCoeditMemberListAdapterContract;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter$TitleCoeditMemberListAdapterContract;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "683"

    goto :goto_0

    :cond_0
    const-string p1, "682"

    :goto_0
    const-string v0, "7556"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
