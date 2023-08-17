.class Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog$IGroupEditMenuDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$items:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog;[Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog$1;->val$items:[Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog$1;->val$items:[Ljava/lang/String;

    aget-object p2, v0, p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_group_edit_menu_dialog_delete:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "662"

    if-eqz v0, :cond_0

    const-string p2, "6613"

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog;->a(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog;)Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog$IGroupEditMenuDialog;

    move-result-object p2

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog$IGroupEditMenuDialog;->delete(Z)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->base_string_rename_type2:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "6614"

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog;->a(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog;)Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog$IGroupEditMenuDialog;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog$IGroupEditMenuDialog;->rename()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->gcs_group_edit_menu_dialog_leave:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "6615"

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog;->a(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog;)Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/dialog/GroupEditMenuDialog$IGroupEditMenuDialog;

    move-result-object p2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
