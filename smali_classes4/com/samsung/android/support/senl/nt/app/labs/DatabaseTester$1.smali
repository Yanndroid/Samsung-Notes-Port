.class Lcom/samsung/android/support/senl/nt/app/labs/DatabaseTester$1;
.super Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/labs/DatabaseTester;->arrange(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/labs/DatabaseTester;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/labs/DatabaseTester;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/DatabaseTester$1;->this$0:Lcom/samsung/android/support/senl/nt/app/labs/DatabaseTester;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/labs/DatabaseTester$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/DatabaseTester$1;->val$context:Landroid/content/Context;

    const-string v0, "Success to rearrange database."

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
