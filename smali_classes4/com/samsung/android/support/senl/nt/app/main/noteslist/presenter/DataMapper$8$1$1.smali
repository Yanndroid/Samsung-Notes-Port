.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$8$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IUnlockConfirmDialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$8$1;->createUnlockConfirmDialog(Landroid/content/Context;Ljava/lang/String;ILjava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$8$1;

.field public final synthetic val$importNotesUuidList:Ljava/util/ArrayList;

.field public final synthetic val$isOldSharedNotebook:Z

.field public final synthetic val$spaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$8$1;Ljava/lang/String;ZLjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$8$1$1;->this$2:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$8$1;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$8$1$1;->val$spaceId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$8$1$1;->val$isOldSharedNotebook:Z

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$8$1$1;->val$importNotesUuidList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public unLock()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$8$1$1;->val$spaceId:Ljava/lang/String;

    const-string v2, "spaceId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$8$1$1;->this$2:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$8$1;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$8$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$8;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$8;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->mLockHelper:Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;->getInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$8$1$1;->val$isOldSharedNotebook:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x73

    goto :goto_0

    :cond_0
    const/16 v2, 0x72

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper$8$1$1;->val$importNotesUuidList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;->verifyLockedNote(ILandroid/content/Intent;[Ljava/lang/String;)V

    return-void
.end method
