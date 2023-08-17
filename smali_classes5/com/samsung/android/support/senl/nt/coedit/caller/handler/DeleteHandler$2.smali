.class Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler;->requestDeleteLocalNoteByPush(Landroid/content/Context;Ljava/lang/String;Lv/d$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$deleteCallback:Lv/d$c;

.field public final synthetic val$docUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler;Landroid/content/Context;Ljava/lang/String;Lv/d$c;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler$2;->val$docUuid:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler$2;->val$deleteCallback:Lv/d$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler$2;->val$docUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/coedit/caller/handler/DeleteHandler$2;->val$deleteCallback:Lv/d$c;

    invoke-static {v0, v1, v2}, Lv/d;->g(Landroid/content/Context;Ljava/lang/String;Lv/d$c;)V

    return-void
.end method
