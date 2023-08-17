.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->attachViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;

.field public final synthetic val$attachGuide:Z

.field public final synthetic val$docChange:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager$1;->val$attachGuide:Z

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager$1;->val$docChange:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager$1;->val$attachGuide:Z

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager$1;->val$docChange:Z

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/MenuAttachManager;ZZ)V

    return-void
.end method
