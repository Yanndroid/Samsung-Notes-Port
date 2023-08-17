.class Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;

.field public final synthetic val$invitationMenu:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;Landroid/view/MenuItem;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$7;->val$invitationMenu:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "662"

    const-string v0, "6604"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment$7;->val$invitationMenu:Landroid/view/MenuItem;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/sharednotebook/view/GcsGroupFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    return-void
.end method
